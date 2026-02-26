import 'package:pulumi/pulumi.dart';
import '../domain_name_endpoint_configuration/domain_name_endpoint_configuration.dart';
import '../domain_name_mutual_tls_authentication/domain_name_mutual_tls_authentication.dart';
import 'domain_name_args.dart';

/// Registers a custom domain name for use with AWS API Gateway. Additional information about this functionality
/// can be found in the [API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html).
///
/// This resource just establishes ownership of and the TLS settings for
/// a particular domain name. An API can be attached to a particular path
/// under the registered domain name using
/// the <span pulumi-lang-nodejs="`aws.apigateway.BasePathMapping`" pulumi-lang-dotnet="`aws.apigateway.BasePathMapping`" pulumi-lang-go="`apigateway.BasePathMapping`" pulumi-lang-python="`apigateway.BasePathMapping`" pulumi-lang-yaml="`aws.apigateway.BasePathMapping`" pulumi-lang-java="`aws.apigateway.BasePathMapping`">`aws.apigateway.BasePathMapping`</span> resource.
///
/// API Gateway domains can be defined as either 'edge-optimized' or 'regional'.  In an edge-optimized configuration,
/// API Gateway internally creates and manages a CloudFront distribution to route requests on the given hostname. In
/// addition to this resource it's necessary to create a DNS record corresponding to the given domain name which is an alias
/// (either Route53 alias or traditional CNAME) to the Cloudfront domain name exported in the <span pulumi-lang-nodejs="`cloudfrontDomainName`" pulumi-lang-dotnet="`CloudfrontDomainName`" pulumi-lang-go="`cloudfrontDomainName`" pulumi-lang-python="`cloudfront_domain_name`" pulumi-lang-yaml="`cloudfrontDomainName`" pulumi-lang-java="`cloudfrontDomainName`">`cloudfront_domain_name`</span>
/// attribute.
///
/// In a regional configuration, API Gateway does not create a CloudFront distribution to route requests to the API, though
/// a distribution can be created if needed. In either case, it is necessary to create a DNS record corresponding to the
/// given domain name which is an alias (either Route53 alias or traditional CNAME) to the regional domain name exported in
/// the <span pulumi-lang-nodejs="`regionalDomainName`" pulumi-lang-dotnet="`RegionalDomainName`" pulumi-lang-go="`regionalDomainName`" pulumi-lang-python="`regional_domain_name`" pulumi-lang-yaml="`regionalDomainName`" pulumi-lang-java="`regionalDomainName`">`regional_domain_name`</span> attribute.
///
/// > **Note:** API Gateway requires the use of AWS Certificate Manager (ACM) certificates instead of Identity and Access Management (IAM) certificates in regions that support ACM. Regions that support ACM can be found in the [Regions and Endpoints Documentation](https://docs.aws.amazon.com/general/latest/gr/rande.html#acm_region). To import an existing private key and certificate into ACM or request an ACM certificate, see the <span pulumi-lang-nodejs="`aws.acm.Certificate`" pulumi-lang-dotnet="`aws.acm.Certificate`" pulumi-lang-go="`acm.Certificate`" pulumi-lang-python="`acm.Certificate`" pulumi-lang-yaml="`aws.acm.Certificate`" pulumi-lang-java="`aws.acm.Certificate`">`aws.acm.Certificate`</span> resource.
///
/// > **Note:** The <span pulumi-lang-nodejs="`aws.apigateway.DomainName`" pulumi-lang-dotnet="`aws.apigateway.DomainName`" pulumi-lang-go="`apigateway.DomainName`" pulumi-lang-python="`apigateway.DomainName`" pulumi-lang-yaml="`aws.apigateway.DomainName`" pulumi-lang-java="`aws.apigateway.DomainName`">`aws.apigateway.DomainName`</span> resource expects dependency on the <span pulumi-lang-nodejs="`aws.acm.CertificateValidation`" pulumi-lang-dotnet="`aws.acm.CertificateValidation`" pulumi-lang-go="`acm.CertificateValidation`" pulumi-lang-python="`acm.CertificateValidation`" pulumi-lang-yaml="`aws.acm.CertificateValidation`" pulumi-lang-java="`aws.acm.CertificateValidation`">`aws.acm.CertificateValidation`</span> as
/// only verified certificates can be used. This can be made either explicitly by adding the
/// <span pulumi-lang-nodejs="`dependsOn " pulumi-lang-dotnet="`DependsOn " pulumi-lang-go="`dependsOn " pulumi-lang-python="`depends_on " pulumi-lang-yaml="`dependsOn " pulumi-lang-java="`dependsOn ">`depends_on </span>= [aws_acm_certificate_validation.cert]` attribute. Or implicitly by referring certificate ARN
/// from the validation resource where it will be available after the resource creation:
/// <span pulumi-lang-nodejs="`regionalCertificateArn " pulumi-lang-dotnet="`RegionalCertificateArn " pulumi-lang-go="`regionalCertificateArn " pulumi-lang-python="`regional_certificate_arn " pulumi-lang-yaml="`regionalCertificateArn " pulumi-lang-java="`regionalCertificateArn ">`regional_certificate_arn </span>= aws_acm_certificate_validation.cert.certificate_arn`.
///
/// ## Example Usage
///
/// ### Edge Optimized (ACM Certificate)
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apigateway.DomainName("example", {
/// certificateArn: exampleAwsAcmCertificateValidation.certificateArn,
/// domainName: "api.example.com",
/// });
/// // Example DNS record using Route53.
/// // Route53 is not specifically required; any DNS host can be used.
/// const exampleRecord = new aws.route53.Record("example", {
/// name: example.domainName,
/// type: aws.route53.RecordType.A,
/// zoneId: exampleAwsRoute53Zone.id,
/// aliases: [{
/// evaluateTargetHealth: true,
/// name: example.cloudfrontDomainName,
/// zoneId: example.cloudfrontZoneId,
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigateway.DomainName("example",
/// certificate_arn=example_aws_acm_certificate_validation["certificateArn"],
/// domain_name="api.example.com")
/// # Example DNS record using Route53.
/// # Route53 is not specifically required; any DNS host can be used.
/// example_record = aws.route53.Record("example",
/// name=example.domain_name,
/// type=aws.route53.RecordType.A,
/// zone_id=example_aws_route53_zone["id"],
/// aliases=[{
/// "evaluate_target_health": True,
/// "name": example.cloudfront_domain_name,
/// "zone_id": example.cloudfront_zone_id,
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.ApiGateway.DomainName("example", new()
/// {
/// CertificateArn = exampleAwsAcmCertificateValidation.CertificateArn,
/// Domain = "api.example.com",
/// });
///
/// // Example DNS record using Route53.
/// // Route53 is not specifically required; any DNS host can be used.
/// var exampleRecord = new Aws.Route53.Record("example", new()
/// {
/// Name = example.Domain,
/// Type = Aws.Route53.RecordType.A,
/// ZoneId = exampleAwsRoute53Zone.Id,
/// Aliases = new[]
/// {
/// new Aws.Route53.Inputs.RecordAliasArgs
/// {
/// EvaluateTargetHealth = true,
/// Name = example.CloudfrontDomainName,
/// ZoneId = example.CloudfrontZoneId,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := apigateway.NewDomainName(ctx, "example", &apigateway.DomainNameArgs{
/// CertificateArn: pulumi.Any(exampleAwsAcmCertificateValidation.CertificateArn),
/// DomainName:     pulumi.String("api.example.com"),
/// })
/// if err != nil {
/// return err
/// }
/// // Example DNS record using Route53.
/// // Route53 is not specifically required; any DNS host can be used.
/// _, err = route53.NewRecord(ctx, "example", &route53.RecordArgs{
/// Name:   example.DomainName,
/// Type:   pulumi.String(route53.RecordTypeA),
/// ZoneId: pulumi.Any(exampleAwsRoute53Zone.Id),
/// Aliases: route53.RecordAliasArray{
/// &route53.RecordAliasArgs{
/// EvaluateTargetHealth: pulumi.Bool(true),
/// Name:                 example.CloudfrontDomainName,
/// ZoneId:               example.CloudfrontZoneId,
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigateway.DomainName;
/// import com.pulumi.aws.apigateway.DomainNameArgs;
/// import com.pulumi.aws.route53.Record;
/// import com.pulumi.aws.route53.RecordArgs;
/// import com.pulumi.aws.route53.inputs.RecordAliasArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new DomainName("example", DomainNameArgs.builder()
/// .certificateArn(exampleAwsAcmCertificateValidation.certificateArn())
/// .domainName("api.example.com")
/// .build());
///
/// // Example DNS record using Route53.
/// // Route53 is not specifically required; any DNS host can be used.
/// var exampleRecord = new Record("exampleRecord", RecordArgs.builder()
/// .name(example.domainName())
/// .type("A")
/// .zoneId(exampleAwsRoute53Zone.id())
/// .aliases(RecordAliasArgs.builder()
/// .evaluateTargetHealth(true)
/// .name(example.cloudfrontDomainName())
/// .zoneId(example.cloudfrontZoneId())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:apigateway:DomainName
/// properties:
/// certificateArn: ${exampleAwsAcmCertificateValidation.certificateArn}
/// domainName: api.example.com
/// # Example DNS record using Route53.
/// # Route53 is not specifically required; any DNS host can be used.
/// exampleRecord:
/// type: aws:route53:Record
/// name: example
/// properties:
/// name: ${example.domainName}
/// type: A
/// zoneId: ${exampleAwsRoute53Zone.id}
/// aliases:
/// - evaluateTargetHealth: true
/// name: ${example.cloudfrontDomainName}
/// zoneId: ${example.cloudfrontZoneId}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Regional (ACM Certificate)
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apigateway.DomainName("example", {
/// domainName: "api.example.com",
/// regionalCertificateArn: exampleAwsAcmCertificateValidation.certificateArn,
/// endpointConfiguration: {
/// types: "REGIONAL",
/// },
/// });
/// // Example DNS record using Route53.
/// // Route53 is not specifically required; any DNS host can be used.
/// const exampleRecord = new aws.route53.Record("example", {
/// name: example.domainName,
/// type: aws.route53.RecordType.A,
/// zoneId: exampleAwsRoute53Zone.id,
/// aliases: [{
/// evaluateTargetHealth: true,
/// name: example.regionalDomainName,
/// zoneId: example.regionalZoneId,
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigateway.DomainName("example",
/// domain_name="api.example.com",
/// regional_certificate_arn=example_aws_acm_certificate_validation["certificateArn"],
/// endpoint_configuration={
/// "types": "REGIONAL",
/// })
/// # Example DNS record using Route53.
/// # Route53 is not specifically required; any DNS host can be used.
/// example_record = aws.route53.Record("example",
/// name=example.domain_name,
/// type=aws.route53.RecordType.A,
/// zone_id=example_aws_route53_zone["id"],
/// aliases=[{
/// "evaluate_target_health": True,
/// "name": example.regional_domain_name,
/// "zone_id": example.regional_zone_id,
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.ApiGateway.DomainName("example", new()
/// {
/// Domain = "api.example.com",
/// RegionalCertificateArn = exampleAwsAcmCertificateValidation.CertificateArn,
/// EndpointConfiguration = new Aws.ApiGateway.Inputs.DomainNameEndpointConfigurationArgs
/// {
/// Types = "REGIONAL",
/// },
/// });
///
/// // Example DNS record using Route53.
/// // Route53 is not specifically required; any DNS host can be used.
/// var exampleRecord = new Aws.Route53.Record("example", new()
/// {
/// Name = example.Domain,
/// Type = Aws.Route53.RecordType.A,
/// ZoneId = exampleAwsRoute53Zone.Id,
/// Aliases = new[]
/// {
/// new Aws.Route53.Inputs.RecordAliasArgs
/// {
/// EvaluateTargetHealth = true,
/// Name = example.RegionalDomainName,
/// ZoneId = example.RegionalZoneId,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := apigateway.NewDomainName(ctx, "example", &apigateway.DomainNameArgs{
/// DomainName:             pulumi.String("api.example.com"),
/// RegionalCertificateArn: pulumi.Any(exampleAwsAcmCertificateValidation.CertificateArn),
/// EndpointConfiguration: &apigateway.DomainNameEndpointConfigurationArgs{
/// Types: pulumi.String("REGIONAL"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// // Example DNS record using Route53.
/// // Route53 is not specifically required; any DNS host can be used.
/// _, err = route53.NewRecord(ctx, "example", &route53.RecordArgs{
/// Name:   example.DomainName,
/// Type:   pulumi.String(route53.RecordTypeA),
/// ZoneId: pulumi.Any(exampleAwsRoute53Zone.Id),
/// Aliases: route53.RecordAliasArray{
/// &route53.RecordAliasArgs{
/// EvaluateTargetHealth: pulumi.Bool(true),
/// Name:                 example.RegionalDomainName,
/// ZoneId:               example.RegionalZoneId,
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigateway.DomainName;
/// import com.pulumi.aws.apigateway.DomainNameArgs;
/// import com.pulumi.aws.apigateway.inputs.DomainNameEndpointConfigurationArgs;
/// import com.pulumi.aws.route53.Record;
/// import com.pulumi.aws.route53.RecordArgs;
/// import com.pulumi.aws.route53.inputs.RecordAliasArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new DomainName("example", DomainNameArgs.builder()
/// .domainName("api.example.com")
/// .regionalCertificateArn(exampleAwsAcmCertificateValidation.certificateArn())
/// .endpointConfiguration(DomainNameEndpointConfigurationArgs.builder()
/// .types("REGIONAL")
/// .build())
/// .build());
///
/// // Example DNS record using Route53.
/// // Route53 is not specifically required; any DNS host can be used.
/// var exampleRecord = new Record("exampleRecord", RecordArgs.builder()
/// .name(example.domainName())
/// .type("A")
/// .zoneId(exampleAwsRoute53Zone.id())
/// .aliases(RecordAliasArgs.builder()
/// .evaluateTargetHealth(true)
/// .name(example.regionalDomainName())
/// .zoneId(example.regionalZoneId())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:apigateway:DomainName
/// properties:
/// domainName: api.example.com
/// regionalCertificateArn: ${exampleAwsAcmCertificateValidation.certificateArn}
/// endpointConfiguration:
/// types: REGIONAL
/// # Example DNS record using Route53.
/// # Route53 is not specifically required; any DNS host can be used.
/// exampleRecord:
/// type: aws:route53:Record
/// name: example
/// properties:
/// name: ${example.domainName}
/// type: A
/// zoneId: ${exampleAwsRoute53Zone.id}
/// aliases:
/// - evaluateTargetHealth: true
/// name: ${example.regionalDomainName}
/// zoneId: ${example.regionalZoneId}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Enhanced Security Policy
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apigateway.DomainName("example", {
/// domainName: "api.example.com",
/// regionalCertificateArn: exampleAwsAcmCertificateValidation.certificateArn,
/// securityPolicy: "SecurityPolicy_TLS13_1_3_2025_09",
/// endpointAccessMode: "STRICT",
/// endpointConfiguration: {
/// types: "REGIONAL",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigateway.DomainName("example",
/// domain_name="api.example.com",
/// regional_certificate_arn=example_aws_acm_certificate_validation["certificateArn"],
/// security_policy="SecurityPolicy_TLS13_1_3_2025_09",
/// endpoint_access_mode="STRICT",
/// endpoint_configuration={
/// "types": "REGIONAL",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.ApiGateway.DomainName("example", new()
/// {
/// Domain = "api.example.com",
/// RegionalCertificateArn = exampleAwsAcmCertificateValidation.CertificateArn,
/// SecurityPolicy = "SecurityPolicy_TLS13_1_3_2025_09",
/// EndpointAccessMode = "STRICT",
/// EndpointConfiguration = new Aws.ApiGateway.Inputs.DomainNameEndpointConfigurationArgs
/// {
/// Types = "REGIONAL",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apigateway.NewDomainName(ctx, "example", &apigateway.DomainNameArgs{
/// DomainName:             pulumi.String("api.example.com"),
/// RegionalCertificateArn: pulumi.Any(exampleAwsAcmCertificateValidation.CertificateArn),
/// SecurityPolicy:         pulumi.String("SecurityPolicy_TLS13_1_3_2025_09"),
/// EndpointAccessMode:     pulumi.String("STRICT"),
/// EndpointConfiguration: &apigateway.DomainNameEndpointConfigurationArgs{
/// Types: pulumi.String("REGIONAL"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigateway.DomainName;
/// import com.pulumi.aws.apigateway.DomainNameArgs;
/// import com.pulumi.aws.apigateway.inputs.DomainNameEndpointConfigurationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new DomainName("example", DomainNameArgs.builder()
/// .domainName("api.example.com")
/// .regionalCertificateArn(exampleAwsAcmCertificateValidation.certificateArn())
/// .securityPolicy("SecurityPolicy_TLS13_1_3_2025_09")
/// .endpointAccessMode("STRICT")
/// .endpointConfiguration(DomainNameEndpointConfigurationArgs.builder()
/// .types("REGIONAL")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:apigateway:DomainName
/// properties:
/// domainName: api.example.com
/// regionalCertificateArn: ${exampleAwsAcmCertificateValidation.certificateArn}
/// securityPolicy: SecurityPolicy_TLS13_1_3_2025_09
/// endpointAccessMode: STRICT
/// endpointConfiguration:
/// types: REGIONAL
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For a private custom domain name:
///
///
/// Using `pulumi import`, import API Gateway domain names using their <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> or <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> and <span pulumi-lang-nodejs="`domainNameId`" pulumi-lang-dotnet="`DomainNameId`" pulumi-lang-go="`domainNameId`" pulumi-lang-python="`domain_name_id`" pulumi-lang-yaml="`domainNameId`" pulumi-lang-java="`domainNameId`">`domain_name_id`</span> (for private custom domain names). For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/domainName:DomainName example dev.example.com
/// ```
///
/// For a private custom domain name:
///
/// ```sh
/// $ pulumi import aws:apigateway/domainName:DomainName example dev.api.internal.example.com/abcde12345
/// ```
class DomainName extends CustomResource {
  /// ARN of domain name.
  late final Output<String> arn;

  /// ARN for an AWS-managed certificate. AWS Certificate Manager is the only supported source. Used when an edge-optimized domain name is desired. Conflicts with <span pulumi-lang-nodejs="`certificateName`" pulumi-lang-dotnet="`CertificateName`" pulumi-lang-go="`certificateName`" pulumi-lang-python="`certificate_name`" pulumi-lang-yaml="`certificateName`" pulumi-lang-java="`certificateName`">`certificate_name`</span>, <span pulumi-lang-nodejs="`certificateBody`" pulumi-lang-dotnet="`CertificateBody`" pulumi-lang-go="`certificateBody`" pulumi-lang-python="`certificate_body`" pulumi-lang-yaml="`certificateBody`" pulumi-lang-java="`certificateBody`">`certificate_body`</span>, <span pulumi-lang-nodejs="`certificateChain`" pulumi-lang-dotnet="`CertificateChain`" pulumi-lang-go="`certificateChain`" pulumi-lang-python="`certificate_chain`" pulumi-lang-yaml="`certificateChain`" pulumi-lang-java="`certificateChain`">`certificate_chain`</span>, <span pulumi-lang-nodejs="`certificatePrivateKey`" pulumi-lang-dotnet="`CertificatePrivateKey`" pulumi-lang-go="`certificatePrivateKey`" pulumi-lang-python="`certificate_private_key`" pulumi-lang-yaml="`certificatePrivateKey`" pulumi-lang-java="`certificatePrivateKey`">`certificate_private_key`</span>, <span pulumi-lang-nodejs="`regionalCertificateArn`" pulumi-lang-dotnet="`RegionalCertificateArn`" pulumi-lang-go="`regionalCertificateArn`" pulumi-lang-python="`regional_certificate_arn`" pulumi-lang-yaml="`regionalCertificateArn`" pulumi-lang-java="`regionalCertificateArn`">`regional_certificate_arn`</span>, and <span pulumi-lang-nodejs="`regionalCertificateName`" pulumi-lang-dotnet="`RegionalCertificateName`" pulumi-lang-go="`regionalCertificateName`" pulumi-lang-python="`regional_certificate_name`" pulumi-lang-yaml="`regionalCertificateName`" pulumi-lang-java="`regionalCertificateName`">`regional_certificate_name`</span>.
  late final Output<String?> certificateArn;

  /// Certificate issued for the domain name being registered, in PEM format. Only valid for `EDGE` endpoint configuration type. Conflicts with <span pulumi-lang-nodejs="`certificateArn`" pulumi-lang-dotnet="`CertificateArn`" pulumi-lang-go="`certificateArn`" pulumi-lang-python="`certificate_arn`" pulumi-lang-yaml="`certificateArn`" pulumi-lang-java="`certificateArn`">`certificate_arn`</span>, <span pulumi-lang-nodejs="`regionalCertificateArn`" pulumi-lang-dotnet="`RegionalCertificateArn`" pulumi-lang-go="`regionalCertificateArn`" pulumi-lang-python="`regional_certificate_arn`" pulumi-lang-yaml="`regionalCertificateArn`" pulumi-lang-java="`regionalCertificateArn`">`regional_certificate_arn`</span>, and <span pulumi-lang-nodejs="`regionalCertificateName`" pulumi-lang-dotnet="`RegionalCertificateName`" pulumi-lang-go="`regionalCertificateName`" pulumi-lang-python="`regional_certificate_name`" pulumi-lang-yaml="`regionalCertificateName`" pulumi-lang-java="`regionalCertificateName`">`regional_certificate_name`</span>.
  late final Output<String?> certificateBody;

  /// Certificate for the CA that issued the certificate, along with any intermediate CA certificates required to create an unbroken chain to a certificate trusted by the intended API clients. Only valid for `EDGE` endpoint configuration type. Conflicts with <span pulumi-lang-nodejs="`certificateArn`" pulumi-lang-dotnet="`CertificateArn`" pulumi-lang-go="`certificateArn`" pulumi-lang-python="`certificate_arn`" pulumi-lang-yaml="`certificateArn`" pulumi-lang-java="`certificateArn`">`certificate_arn`</span>, <span pulumi-lang-nodejs="`regionalCertificateArn`" pulumi-lang-dotnet="`RegionalCertificateArn`" pulumi-lang-go="`regionalCertificateArn`" pulumi-lang-python="`regional_certificate_arn`" pulumi-lang-yaml="`regionalCertificateArn`" pulumi-lang-java="`regionalCertificateArn`">`regional_certificate_arn`</span>, and <span pulumi-lang-nodejs="`regionalCertificateName`" pulumi-lang-dotnet="`RegionalCertificateName`" pulumi-lang-go="`regionalCertificateName`" pulumi-lang-python="`regional_certificate_name`" pulumi-lang-yaml="`regionalCertificateName`" pulumi-lang-java="`regionalCertificateName`">`regional_certificate_name`</span>.
  late final Output<String?> certificateChain;

  /// Unique name to use when registering this certificate as an IAM server certificate. Conflicts with <span pulumi-lang-nodejs="`certificateArn`" pulumi-lang-dotnet="`CertificateArn`" pulumi-lang-go="`certificateArn`" pulumi-lang-python="`certificate_arn`" pulumi-lang-yaml="`certificateArn`" pulumi-lang-java="`certificateArn`">`certificate_arn`</span>, <span pulumi-lang-nodejs="`regionalCertificateArn`" pulumi-lang-dotnet="`RegionalCertificateArn`" pulumi-lang-go="`regionalCertificateArn`" pulumi-lang-python="`regional_certificate_arn`" pulumi-lang-yaml="`regionalCertificateArn`" pulumi-lang-java="`regionalCertificateArn`">`regional_certificate_arn`</span>, and <span pulumi-lang-nodejs="`regionalCertificateName`" pulumi-lang-dotnet="`RegionalCertificateName`" pulumi-lang-go="`regionalCertificateName`" pulumi-lang-python="`regional_certificate_name`" pulumi-lang-yaml="`regionalCertificateName`" pulumi-lang-java="`regionalCertificateName`">`regional_certificate_name`</span>. Required if <span pulumi-lang-nodejs="`certificateArn`" pulumi-lang-dotnet="`CertificateArn`" pulumi-lang-go="`certificateArn`" pulumi-lang-python="`certificate_arn`" pulumi-lang-yaml="`certificateArn`" pulumi-lang-java="`certificateArn`">`certificate_arn`</span> is not set.
  late final Output<String?> certificateName;

  /// Private key associated with the domain certificate given in <span pulumi-lang-nodejs="`certificateBody`" pulumi-lang-dotnet="`CertificateBody`" pulumi-lang-go="`certificateBody`" pulumi-lang-python="`certificate_body`" pulumi-lang-yaml="`certificateBody`" pulumi-lang-java="`certificateBody`">`certificate_body`</span>. Only valid for `EDGE` endpoint configuration type. Conflicts with <span pulumi-lang-nodejs="`certificateArn`" pulumi-lang-dotnet="`CertificateArn`" pulumi-lang-go="`certificateArn`" pulumi-lang-python="`certificate_arn`" pulumi-lang-yaml="`certificateArn`" pulumi-lang-java="`certificateArn`">`certificate_arn`</span>, <span pulumi-lang-nodejs="`regionalCertificateArn`" pulumi-lang-dotnet="`RegionalCertificateArn`" pulumi-lang-go="`regionalCertificateArn`" pulumi-lang-python="`regional_certificate_arn`" pulumi-lang-yaml="`regionalCertificateArn`" pulumi-lang-java="`regionalCertificateArn`">`regional_certificate_arn`</span>, and <span pulumi-lang-nodejs="`regionalCertificateName`" pulumi-lang-dotnet="`RegionalCertificateName`" pulumi-lang-go="`regionalCertificateName`" pulumi-lang-python="`regional_certificate_name`" pulumi-lang-yaml="`regionalCertificateName`" pulumi-lang-java="`regionalCertificateName`">`regional_certificate_name`</span>.
  late final Output<String?> certificatePrivateKey;

  /// Upload date associated with the domain certificate.
  late final Output<String> certificateUploadDate;

  /// Hostname created by Cloudfront to represent the distribution that implements this domain name mapping.
  late final Output<String> cloudfrontDomainName;

  /// For convenience, the hosted zone ID (`Z2FDTNDATAQYW2`) that can be used to create a Route53 alias record for the distribution.
  late final Output<String> cloudfrontZoneId;

  /// Fully-qualified domain name to register.
  late final Output<String> domainName;

  /// The identifier for the domain name resource. Supported only for private custom domain names.
  late final Output<String> domainNameId;

  /// Endpoint access mode of the DomainName. Only available for domain names that use security policies that start with `SecurityPolicy_`. Valid values: `BASIC`, `STRICT`.
  late final Output<String?> endpointAccessMode;

  /// Configuration block defining API endpoint information including type. See below.
  late final Output<DomainNameEndpointConfiguration> endpointConfiguration;

  /// Mutual TLS authentication configuration for the domain name. See below.
  late final Output<DomainNameMutualTlsAuthentication?> mutualTlsAuthentication;

  /// ARN of the AWS-issued certificate used to validate custom domain ownership (when <span pulumi-lang-nodejs="`certificateArn`" pulumi-lang-dotnet="`CertificateArn`" pulumi-lang-go="`certificateArn`" pulumi-lang-python="`certificate_arn`" pulumi-lang-yaml="`certificateArn`" pulumi-lang-java="`certificateArn`">`certificate_arn`</span> is issued via an ACM Private CA or <span pulumi-lang-nodejs="`mutualTlsAuthentication`" pulumi-lang-dotnet="`MutualTlsAuthentication`" pulumi-lang-go="`mutualTlsAuthentication`" pulumi-lang-python="`mutual_tls_authentication`" pulumi-lang-yaml="`mutualTlsAuthentication`" pulumi-lang-java="`mutualTlsAuthentication`">`mutual_tls_authentication`</span> is configured with an ACM-imported certificate.)
  late final Output<String> ownershipVerificationCertificateArn;

  /// A stringified JSON policy document that applies to the execute-api service for this DomainName regardless of the caller and Method configuration. Supported only for private custom domain names.
  late final Output<String?> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN for an AWS-managed certificate. AWS Certificate Manager is the only supported source. Used when a regional domain name is desired. Conflicts with <span pulumi-lang-nodejs="`certificateArn`" pulumi-lang-dotnet="`CertificateArn`" pulumi-lang-go="`certificateArn`" pulumi-lang-python="`certificate_arn`" pulumi-lang-yaml="`certificateArn`" pulumi-lang-java="`certificateArn`">`certificate_arn`</span>, <span pulumi-lang-nodejs="`certificateName`" pulumi-lang-dotnet="`CertificateName`" pulumi-lang-go="`certificateName`" pulumi-lang-python="`certificate_name`" pulumi-lang-yaml="`certificateName`" pulumi-lang-java="`certificateName`">`certificate_name`</span>, <span pulumi-lang-nodejs="`certificateBody`" pulumi-lang-dotnet="`CertificateBody`" pulumi-lang-go="`certificateBody`" pulumi-lang-python="`certificate_body`" pulumi-lang-yaml="`certificateBody`" pulumi-lang-java="`certificateBody`">`certificate_body`</span>, <span pulumi-lang-nodejs="`certificateChain`" pulumi-lang-dotnet="`CertificateChain`" pulumi-lang-go="`certificateChain`" pulumi-lang-python="`certificate_chain`" pulumi-lang-yaml="`certificateChain`" pulumi-lang-java="`certificateChain`">`certificate_chain`</span>, and <span pulumi-lang-nodejs="`certificatePrivateKey`" pulumi-lang-dotnet="`CertificatePrivateKey`" pulumi-lang-go="`certificatePrivateKey`" pulumi-lang-python="`certificate_private_key`" pulumi-lang-yaml="`certificatePrivateKey`" pulumi-lang-java="`certificatePrivateKey`">`certificate_private_key`</span>.
  ///
  /// When uploading a certificate, the following arguments are supported:
  late final Output<String?> regionalCertificateArn;

  /// User-friendly name of the certificate that will be used by regional endpoint for this domain name. Conflicts with <span pulumi-lang-nodejs="`certificateArn`" pulumi-lang-dotnet="`CertificateArn`" pulumi-lang-go="`certificateArn`" pulumi-lang-python="`certificate_arn`" pulumi-lang-yaml="`certificateArn`" pulumi-lang-java="`certificateArn`">`certificate_arn`</span>, <span pulumi-lang-nodejs="`certificateName`" pulumi-lang-dotnet="`CertificateName`" pulumi-lang-go="`certificateName`" pulumi-lang-python="`certificate_name`" pulumi-lang-yaml="`certificateName`" pulumi-lang-java="`certificateName`">`certificate_name`</span>, <span pulumi-lang-nodejs="`certificateBody`" pulumi-lang-dotnet="`CertificateBody`" pulumi-lang-go="`certificateBody`" pulumi-lang-python="`certificate_body`" pulumi-lang-yaml="`certificateBody`" pulumi-lang-java="`certificateBody`">`certificate_body`</span>, <span pulumi-lang-nodejs="`certificateChain`" pulumi-lang-dotnet="`CertificateChain`" pulumi-lang-go="`certificateChain`" pulumi-lang-python="`certificate_chain`" pulumi-lang-yaml="`certificateChain`" pulumi-lang-java="`certificateChain`">`certificate_chain`</span>, and <span pulumi-lang-nodejs="`certificatePrivateKey`" pulumi-lang-dotnet="`CertificatePrivateKey`" pulumi-lang-go="`certificatePrivateKey`" pulumi-lang-python="`certificate_private_key`" pulumi-lang-yaml="`certificatePrivateKey`" pulumi-lang-java="`certificatePrivateKey`">`certificate_private_key`</span>.
  late final Output<String?> regionalCertificateName;

  /// Hostname for the custom domain's regional endpoint.
  late final Output<String> regionalDomainName;

  /// Hosted zone ID that can be used to create a Route53 alias record for the regional endpoint.
  late final Output<String> regionalZoneId;

  /// Mode to route traffic for the domain name. Valid values: `BASE_PATH_MAPPING_ONLY`, `ROUTING_RULE_ONLY`, `ROUTING_RULE_THEN_BASE_PATH_MAPPING`.
  late final Output<String> routingMode;

  /// Transport Layer Security (TLS) version + cipher suite for this DomainName. Must be configured to perform drift detection. For a list of valid security policies, see [DomainName](https://docs.aws.amazon.com/apigateway/latest/api/API_DomainName.html) in the Amazon API Gateway API Reference.
  late final Output<String> securityPolicy;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// When referencing an AWS-managed certificate, the following arguments are supported:
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  DomainName(
    String name, {
    DomainNameArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/domainName:DomainName',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.certificateArn = Output.createUnknown<String?>();
    this.certificateBody = Output.createUnknown<String?>();
    this.certificateChain = Output.createUnknown<String?>();
    this.certificateName = Output.createUnknown<String?>();
    this.certificatePrivateKey = Output.createUnknown<String?>();
    this.certificateUploadDate = Output.createUnknown<String>();
    this.cloudfrontDomainName = Output.createUnknown<String>();
    this.cloudfrontZoneId = Output.createUnknown<String>();
    this.domainName = Output.createUnknown<String>();
    this.domainNameId = Output.createUnknown<String>();
    this.endpointAccessMode = Output.createUnknown<String?>();
    this.endpointConfiguration =
        Output.createUnknown<DomainNameEndpointConfiguration>();
    this.mutualTlsAuthentication =
        Output.createUnknown<DomainNameMutualTlsAuthentication?>();
    this.ownershipVerificationCertificateArn = Output.createUnknown<String>();
    this.policy = Output.createUnknown<String?>();
    this.region = Output.createUnknown<String>();
    this.regionalCertificateArn = Output.createUnknown<String?>();
    this.regionalCertificateName = Output.createUnknown<String?>();
    this.regionalDomainName = Output.createUnknown<String>();
    this.regionalZoneId = Output.createUnknown<String>();
    this.routingMode = Output.createUnknown<String>();
    this.securityPolicy = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
