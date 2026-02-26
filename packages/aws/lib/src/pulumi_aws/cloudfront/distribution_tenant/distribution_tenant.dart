import 'package:pulumi/pulumi.dart';
import '../distribution_tenant_customizations/distribution_tenant_customizations.dart';
import '../distribution_tenant_domain/distribution_tenant_domain.dart';
import '../distribution_tenant_managed_certificate_request/distribution_tenant_managed_certificate_request.dart';
import '../distribution_tenant_parameter/distribution_tenant_parameter.dart';
import '../distribution_tenant_timeouts/distribution_tenant_timeouts.dart';
import 'distribution_tenant_args.dart';

/// Creates an Amazon CloudFront distribution tenant.
///
/// Distribution tenants allow you to create isolated configurations within a multi-tenant CloudFront distribution. Each tenant can have its own domains, customizations, and parameters while sharing the underlying distribution infrastructure.
///
/// For information about CloudFront distribution tenants, see the [Amazon CloudFront Developer Guide](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-tenants.html).
///
/// ## Example Usage
///
/// ### Basic Distribution Tenant
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.DistributionTenant("example", {
/// name: "example-tenant",
/// distributionId: exampleAwsCloudfrontMultitenantDistribution.id,
/// enabled: true,
/// domains: [{
/// domain: "tenant.example.com",
/// }],
/// tags: {
/// Environment: "production",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.DistributionTenant("example",
/// name="example-tenant",
/// distribution_id=example_aws_cloudfront_multitenant_distribution["id"],
/// enabled=True,
/// domains=[{
/// "domain": "tenant.example.com",
/// }],
/// tags={
/// "Environment": "production",
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
/// var example = new Aws.CloudFront.DistributionTenant("example", new()
/// {
/// Name = "example-tenant",
/// DistributionId = exampleAwsCloudfrontMultitenantDistribution.Id,
/// Enabled = true,
/// Domains = new[]
/// {
/// new Aws.CloudFront.Inputs.DistributionTenantDomainArgs
/// {
/// Domain = "tenant.example.com",
/// },
/// },
/// Tags =
/// {
/// { "Environment", "production" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudfront.NewDistributionTenant(ctx, "example", &cloudfront.DistributionTenantArgs{
/// Name:           pulumi.String("example-tenant"),
/// DistributionId: pulumi.Any(exampleAwsCloudfrontMultitenantDistribution.Id),
/// Enabled:        pulumi.Bool(true),
/// Domains: cloudfront.DistributionTenantDomainArray{
/// &cloudfront.DistributionTenantDomainArgs{
/// Domain: pulumi.String("tenant.example.com"),
/// },
/// },
/// Tags: pulumi.StringMap{
/// "Environment": pulumi.String("production"),
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
/// import com.pulumi.aws.cloudfront.DistributionTenant;
/// import com.pulumi.aws.cloudfront.DistributionTenantArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionTenantDomainArgs;
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
/// var example = new DistributionTenant("example", DistributionTenantArgs.builder()
/// .name("example-tenant")
/// .distributionId(exampleAwsCloudfrontMultitenantDistribution.id())
/// .enabled(true)
/// .domains(DistributionTenantDomainArgs.builder()
/// .domain("tenant.example.com")
/// .build())
/// .tags(Map.of("Environment", "production"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cloudfront:DistributionTenant
/// properties:
/// name: example-tenant
/// distributionId: ${exampleAwsCloudfrontMultitenantDistribution.id}
/// enabled: true
/// domains:
/// - domain: tenant.example.com
/// tags:
/// Environment: production
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Distribution Tenant with Customizations
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.DistributionTenant("example", {
/// name: "example-tenant",
/// distributionId: exampleAwsCloudfrontMultitenantDistribution.id,
/// enabled: false,
/// domains: [{
/// domain: "tenant.example.com",
/// }],
/// customizations: {
/// geoRestriction: {
/// restrictionType: "whitelist",
/// locations: [
/// "US",
/// "CA",
/// ],
/// },
/// certificate: {
/// arn: tenantCert.arn,
/// },
/// webAcl: {
/// action: "override",
/// arn: tenantWaf.arn,
/// },
/// },
/// tags: {
/// Environment: "production",
/// Tenant: "example",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.DistributionTenant("example",
/// name="example-tenant",
/// distribution_id=example_aws_cloudfront_multitenant_distribution["id"],
/// enabled=False,
/// domains=[{
/// "domain": "tenant.example.com",
/// }],
/// customizations={
/// "geo_restriction": {
/// "restriction_type": "whitelist",
/// "locations": [
/// "US",
/// "CA",
/// ],
/// },
/// "certificate": {
/// "arn": tenant_cert["arn"],
/// },
/// "web_acl": {
/// "action": "override",
/// "arn": tenant_waf["arn"],
/// },
/// },
/// tags={
/// "Environment": "production",
/// "Tenant": "example",
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
/// var example = new Aws.CloudFront.DistributionTenant("example", new()
/// {
/// Name = "example-tenant",
/// DistributionId = exampleAwsCloudfrontMultitenantDistribution.Id,
/// Enabled = false,
/// Domains = new[]
/// {
/// new Aws.CloudFront.Inputs.DistributionTenantDomainArgs
/// {
/// Domain = "tenant.example.com",
/// },
/// },
/// Customizations = new Aws.CloudFront.Inputs.DistributionTenantCustomizationsArgs
/// {
/// GeoRestriction = new Aws.CloudFront.Inputs.DistributionTenantCustomizationsGeoRestrictionArgs
/// {
/// RestrictionType = "whitelist",
/// Locations = new[]
/// {
/// "US",
/// "CA",
/// },
/// },
/// Certificate = new Aws.CloudFront.Inputs.DistributionTenantCustomizationsCertificateArgs
/// {
/// Arn = tenantCert.Arn,
/// },
/// WebAcl = new Aws.CloudFront.Inputs.DistributionTenantCustomizationsWebAclArgs
/// {
/// Action = "override",
/// Arn = tenantWaf.Arn,
/// },
/// },
/// Tags =
/// {
/// { "Environment", "production" },
/// { "Tenant", "example" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudfront.NewDistributionTenant(ctx, "example", &cloudfront.DistributionTenantArgs{
/// Name:           pulumi.String("example-tenant"),
/// DistributionId: pulumi.Any(exampleAwsCloudfrontMultitenantDistribution.Id),
/// Enabled:        pulumi.Bool(false),
/// Domains: cloudfront.DistributionTenantDomainArray{
/// &cloudfront.DistributionTenantDomainArgs{
/// Domain: pulumi.String("tenant.example.com"),
/// },
/// },
/// Customizations: &cloudfront.DistributionTenantCustomizationsArgs{
/// GeoRestriction: &cloudfront.DistributionTenantCustomizationsGeoRestrictionArgs{
/// RestrictionType: pulumi.String("whitelist"),
/// Locations: pulumi.StringArray{
/// pulumi.String("US"),
/// pulumi.String("CA"),
/// },
/// },
/// Certificate: &cloudfront.DistributionTenantCustomizationsCertificateArgs{
/// Arn: pulumi.Any(tenantCert.Arn),
/// },
/// WebAcl: &cloudfront.DistributionTenantCustomizationsWebAclArgs{
/// Action: pulumi.String("override"),
/// Arn:    pulumi.Any(tenantWaf.Arn),
/// },
/// },
/// Tags: pulumi.StringMap{
/// "Environment": pulumi.String("production"),
/// "Tenant":      pulumi.String("example"),
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
/// import com.pulumi.aws.cloudfront.DistributionTenant;
/// import com.pulumi.aws.cloudfront.DistributionTenantArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionTenantDomainArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionTenantCustomizationsArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionTenantCustomizationsGeoRestrictionArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionTenantCustomizationsCertificateArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionTenantCustomizationsWebAclArgs;
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
/// var example = new DistributionTenant("example", DistributionTenantArgs.builder()
/// .name("example-tenant")
/// .distributionId(exampleAwsCloudfrontMultitenantDistribution.id())
/// .enabled(false)
/// .domains(DistributionTenantDomainArgs.builder()
/// .domain("tenant.example.com")
/// .build())
/// .customizations(DistributionTenantCustomizationsArgs.builder()
/// .geoRestriction(DistributionTenantCustomizationsGeoRestrictionArgs.builder()
/// .restrictionType("whitelist")
/// .locations(
/// "US",
/// "CA")
/// .build())
/// .certificate(DistributionTenantCustomizationsCertificateArgs.builder()
/// .arn(tenantCert.arn())
/// .build())
/// .webAcl(DistributionTenantCustomizationsWebAclArgs.builder()
/// .action("override")
/// .arn(tenantWaf.arn())
/// .build())
/// .build())
/// .tags(Map.ofEntries(
/// Map.entry("Environment", "production"),
/// Map.entry("Tenant", "example")
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cloudfront:DistributionTenant
/// properties:
/// name: example-tenant
/// distributionId: ${exampleAwsCloudfrontMultitenantDistribution.id}
/// enabled: false
/// domains:
/// - domain: tenant.example.com
/// customizations:
/// geoRestriction:
/// restrictionType: whitelist
/// locations:
/// - US
/// - CA
/// certificate:
/// arn: ${tenantCert.arn}
/// webAcl:
/// action: override
/// arn: ${tenantWaf.arn}
/// tags:
/// Environment: production
/// Tenant: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import CloudFront Distribution Tenants using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/distributionTenant:DistributionTenant example TENANT123EXAMPLE
/// ```
class DistributionTenant extends CustomResource {
  /// ARN of the distribution tenant.
  late final Output<String> arn;

  /// ID of the connection group for the distribution tenant. If not specified, CloudFront uses the default connection group.
  late final Output<String> connectionGroupId;

  /// Customizations for the distribution tenant (maximum one).
  late final Output<DistributionTenantCustomizations?> customizations;

  /// ID of the multi-tenant distribution.
  late final Output<String> distributionId;

  /// Set of domains associated with the distribution tenant.
  late final Output<List<DistributionTenantDomain>?> domains;

  /// Whether the distribution tenant is enabled to serve traffic. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool> enabled;

  /// Current version of the distribution tenant.
  late final Output<String> etag;

  /// Managed certificate request for CloudFront managed ACM certificate (maximum one).
  late final Output<DistributionTenantManagedCertificateRequest?>
      managedCertificateRequest;

  /// Name of the distribution tenant.
  late final Output<String> name;

  /// Set of parameter values for the distribution tenant.
  late final Output<List<DistributionTenantParameter>?> parameters;

  /// Current status of the distribution tenant.
  late final Output<String> status;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<DistributionTenantTimeouts?> timeouts;

  /// If enabled, the resource will wait for the distribution tenant status to change from `InProgress` to `Deployed`. Setting this to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> will skip the process. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool> waitForDeployment;

  DistributionTenant(
    String name, {
    DistributionTenantArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/distributionTenant:DistributionTenant',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.connectionGroupId = Output.createUnknown<String>();
    this.customizations =
        Output.createUnknown<DistributionTenantCustomizations?>();
    this.distributionId = Output.createUnknown<String>();
    this.domains = Output.createUnknown<List<DistributionTenantDomain>?>();
    this.enabled = Output.createUnknown<bool>();
    this.etag = Output.createUnknown<String>();
    this.managedCertificateRequest =
        Output.createUnknown<DistributionTenantManagedCertificateRequest?>();
    this.name = Output.createUnknown<String>();
    this.parameters =
        Output.createUnknown<List<DistributionTenantParameter>?>();
    this.status = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts = Output.createUnknown<DistributionTenantTimeouts?>();
    this.waitForDeployment = Output.createUnknown<bool>();
  }
}
