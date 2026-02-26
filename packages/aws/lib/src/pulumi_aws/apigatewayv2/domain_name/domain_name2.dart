import 'package:pulumi/pulumi.dart';
import '../domain_name_domain_name_configuration/domain_name_domain_name_configuration.dart';
import '../domain_name_mutual_tls_authentication/domain_name_mutual_tls_authentication2.dart';
import 'domain_name_args2.dart';

/// Manages an Amazon API Gateway Version 2 domain name.
/// More information can be found in the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html).
///
/// > **Note:** This resource establishes ownership of and the TLS settings for
/// a particular domain name. An API stage can be associated with the domain name using the <span pulumi-lang-nodejs="`aws.apigatewayv2.ApiMapping`" pulumi-lang-dotnet="`aws.apigatewayv2.ApiMapping`" pulumi-lang-go="`apigatewayv2.ApiMapping`" pulumi-lang-python="`apigatewayv2.ApiMapping`" pulumi-lang-yaml="`aws.apigatewayv2.ApiMapping`" pulumi-lang-java="`aws.apigatewayv2.ApiMapping`">`aws.apigatewayv2.ApiMapping`</span> resource.
///
/// ## Example Usage
///
/// ### Basic
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apigatewayv2.DomainName("example", {
/// domainName: "ws-api.example.com",
/// domainNameConfiguration: {
/// certificateArn: exampleAwsAcmCertificate.arn,
/// endpointType: "REGIONAL",
/// securityPolicy: "TLS_1_2",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigatewayv2.DomainName("example",
/// domain_name="ws-api.example.com",
/// domain_name_configuration={
/// "certificate_arn": example_aws_acm_certificate["arn"],
/// "endpoint_type": "REGIONAL",
/// "security_policy": "TLS_1_2",
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
/// var example = new Aws.ApiGatewayV2.DomainName("example", new()
/// {
/// Domain = "ws-api.example.com",
/// DomainNameConfiguration = new Aws.ApiGatewayV2.Inputs.DomainNameDomainNameConfigurationArgs
/// {
/// CertificateArn = exampleAwsAcmCertificate.Arn,
/// EndpointType = "REGIONAL",
/// SecurityPolicy = "TLS_1_2",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigatewayv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apigatewayv2.NewDomainName(ctx, "example", &apigatewayv2.DomainNameArgs{
/// DomainName: pulumi.String("ws-api.example.com"),
/// DomainNameConfiguration: &apigatewayv2.DomainNameDomainNameConfigurationArgs{
/// CertificateArn: pulumi.Any(exampleAwsAcmCertificate.Arn),
/// EndpointType:   pulumi.String("REGIONAL"),
/// SecurityPolicy: pulumi.String("TLS_1_2"),
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
/// import com.pulumi.aws.apigatewayv2.DomainName;
/// import com.pulumi.aws.apigatewayv2.DomainNameArgs;
/// import com.pulumi.aws.apigatewayv2.inputs.DomainNameDomainNameConfigurationArgs;
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
/// .domainName("ws-api.example.com")
/// .domainNameConfiguration(DomainNameDomainNameConfigurationArgs.builder()
/// .certificateArn(exampleAwsAcmCertificate.arn())
/// .endpointType("REGIONAL")
/// .securityPolicy("TLS_1_2")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:apigatewayv2:DomainName
/// properties:
/// domainName: ws-api.example.com
/// domainNameConfiguration:
/// certificateArn: ${exampleAwsAcmCertificate.arn}
/// endpointType: REGIONAL
/// securityPolicy: TLS_1_2
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Associated Route 53 Resource Record
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apigatewayv2.DomainName("example", {
/// domainName: "http-api.example.com",
/// domainNameConfiguration: {
/// certificateArn: exampleAwsAcmCertificate.arn,
/// endpointType: "REGIONAL",
/// securityPolicy: "TLS_1_2",
/// },
/// });
/// const exampleRecord = new aws.route53.Record("example", {
/// name: example.domainName,
/// type: aws.route53.RecordType.A,
/// zoneId: exampleAwsRoute53Zone.zoneId,
/// aliases: [{
/// name: example.domainNameConfiguration.apply(domainNameConfiguration => domainNameConfiguration.targetDomainName),
/// zoneId: example.domainNameConfiguration.apply(domainNameConfiguration => domainNameConfiguration.hostedZoneId),
/// evaluateTargetHealth: false,
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigatewayv2.DomainName("example",
/// domain_name="http-api.example.com",
/// domain_name_configuration={
/// "certificate_arn": example_aws_acm_certificate["arn"],
/// "endpoint_type": "REGIONAL",
/// "security_policy": "TLS_1_2",
/// })
/// example_record = aws.route53.Record("example",
/// name=example.domain_name,
/// type=aws.route53.RecordType.A,
/// zone_id=example_aws_route53_zone["zoneId"],
/// aliases=[{
/// "name": example.domain_name_configuration.target_domain_name,
/// "zone_id": example.domain_name_configuration.hosted_zone_id,
/// "evaluate_target_health": False,
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
/// var example = new Aws.ApiGatewayV2.DomainName("example", new()
/// {
/// Domain = "http-api.example.com",
/// DomainNameConfiguration = new Aws.ApiGatewayV2.Inputs.DomainNameDomainNameConfigurationArgs
/// {
/// CertificateArn = exampleAwsAcmCertificate.Arn,
/// EndpointType = "REGIONAL",
/// SecurityPolicy = "TLS_1_2",
/// },
/// });
///
/// var exampleRecord = new Aws.Route53.Record("example", new()
/// {
/// Name = example.Domain,
/// Type = Aws.Route53.RecordType.A,
/// ZoneId = exampleAwsRoute53Zone.ZoneId,
/// Aliases = new[]
/// {
/// new Aws.Route53.Inputs.RecordAliasArgs
/// {
/// Name = example.DomainNameConfiguration.Apply(domainNameConfiguration => domainNameConfiguration.TargetDomainName),
/// ZoneId = example.DomainNameConfiguration.Apply(domainNameConfiguration => domainNameConfiguration.HostedZoneId),
/// EvaluateTargetHealth = false,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigatewayv2"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := apigatewayv2.NewDomainName(ctx, "example", &apigatewayv2.DomainNameArgs{
/// DomainName: pulumi.String("http-api.example.com"),
/// DomainNameConfiguration: &apigatewayv2.DomainNameDomainNameConfigurationArgs{
/// CertificateArn: pulumi.Any(exampleAwsAcmCertificate.Arn),
/// EndpointType:   pulumi.String("REGIONAL"),
/// SecurityPolicy: pulumi.String("TLS_1_2"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = route53.NewRecord(ctx, "example", &route53.RecordArgs{
/// Name:   example.DomainName,
/// Type:   pulumi.String(route53.RecordTypeA),
/// ZoneId: pulumi.Any(exampleAwsRoute53Zone.ZoneId),
/// Aliases: route53.RecordAliasArray{
/// &route53.RecordAliasArgs{
/// Name: example.DomainNameConfiguration.ApplyT(func(domainNameConfiguration apigatewayv2.DomainNameDomainNameConfiguration) (*string, error) {
/// return &domainNameConfiguration.TargetDomainName, nil
/// }).(pulumi.StringPtrOutput),
/// ZoneId: example.DomainNameConfiguration.ApplyT(func(domainNameConfiguration apigatewayv2.DomainNameDomainNameConfiguration) (*string, error) {
/// return &domainNameConfiguration.HostedZoneId, nil
/// }).(pulumi.StringPtrOutput),
/// EvaluateTargetHealth: pulumi.Bool(false),
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
/// import com.pulumi.aws.apigatewayv2.DomainName;
/// import com.pulumi.aws.apigatewayv2.DomainNameArgs;
/// import com.pulumi.aws.apigatewayv2.inputs.DomainNameDomainNameConfigurationArgs;
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
/// .domainName("http-api.example.com")
/// .domainNameConfiguration(DomainNameDomainNameConfigurationArgs.builder()
/// .certificateArn(exampleAwsAcmCertificate.arn())
/// .endpointType("REGIONAL")
/// .securityPolicy("TLS_1_2")
/// .build())
/// .build());
///
/// var exampleRecord = new Record("exampleRecord", RecordArgs.builder()
/// .name(example.domainName())
/// .type("A")
/// .zoneId(exampleAwsRoute53Zone.zoneId())
/// .aliases(RecordAliasArgs.builder()
/// .name(example.domainNameConfiguration().applyValue(_domainNameConfiguration -> _domainNameConfiguration.targetDomainName()))
/// .zoneId(example.domainNameConfiguration().applyValue(_domainNameConfiguration -> _domainNameConfiguration.hostedZoneId()))
/// .evaluateTargetHealth(false)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:apigatewayv2:DomainName
/// properties:
/// domainName: http-api.example.com
/// domainNameConfiguration:
/// certificateArn: ${exampleAwsAcmCertificate.arn}
/// endpointType: REGIONAL
/// securityPolicy: TLS_1_2
/// exampleRecord:
/// type: aws:route53:Record
/// name: example
/// properties:
/// name: ${example.domainName}
/// type: A
/// zoneId: ${exampleAwsRoute53Zone.zoneId}
/// aliases:
/// - name: ${example.domainNameConfiguration.targetDomainName}
/// zoneId: ${example.domainNameConfiguration.hostedZoneId}
/// evaluateTargetHealth: false
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.apigatewayv2.DomainName`" pulumi-lang-dotnet="`aws.apigatewayv2.DomainName`" pulumi-lang-go="`apigatewayv2.DomainName`" pulumi-lang-python="`apigatewayv2.DomainName`" pulumi-lang-yaml="`aws.apigatewayv2.DomainName`" pulumi-lang-java="`aws.apigatewayv2.DomainName`">`aws.apigatewayv2.DomainName`</span> using the domain name. For example:
///
/// ```sh
/// $ pulumi import aws:apigatewayv2/domainName:DomainName example ws-api.example.com
/// ```
class DomainName2 extends CustomResource {
  /// [API mapping selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-mapping-selection-expressions) for the domain name.
  late final Output<String> apiMappingSelectionExpression;

  /// ARN of the domain name.
  late final Output<String> arn;

  /// Domain name. Must be between 1 and 512 characters in length.
  late final Output<String> domainName;

  /// Domain name configuration. See below.
  late final Output<DomainNameDomainNameConfiguration> domainNameConfiguration;

  /// Mutual TLS authentication configuration for the domain name.
  late final Output<DomainNameMutualTlsAuthentication2?>
      mutualTlsAuthentication;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Mode to route traffic for the domain name. Valid values: `API_MAPPING_ONLY`, `ROUTING_RULE_ONLY`, `ROUTING_RULE_THEN_API_MAPPING`.
  late final Output<String> routingMode;

  /// Map of tags to assign to the domain name. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  DomainName2(
    String name, {
    DomainNameArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/domainName:DomainName',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiMappingSelectionExpression = Output.createUnknown<String>();
    this.arn = Output.createUnknown<String>();
    this.domainName = Output.createUnknown<String>();
    this.domainNameConfiguration =
        Output.createUnknown<DomainNameDomainNameConfiguration>();
    this.mutualTlsAuthentication =
        Output.createUnknown<DomainNameMutualTlsAuthentication2?>();
    this.region = Output.createUnknown<String>();
    this.routingMode = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
