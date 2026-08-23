import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_tenant_args.dart';
import 'distribution_tenant_customizations.dart';
import 'distribution_tenant_managed_certificate_request.dart';
import 'distribution_tenant_state.dart';
import 'distribution_tenant_timeouts.dart';

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
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.DistributionTenant("example", {
///     name: "example-tenant",
///     distributionId: exampleAwsCloudfrontMultitenantDistribution.id,
///     enabled: true,
///     domains: [{
///         domain: "tenant.example.com",
///     }],
///     tags: {
///         Environment: "production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.DistributionTenant("example",
///     name="example-tenant",
///     distribution_id=example_aws_cloudfront_multitenant_distribution["id"],
///     enabled=True,
///     domains=[{
///         "domain": "tenant.example.com",
///     }],
///     tags={
///         "Environment": "production",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudFront.DistributionTenant("example", new()
///     {
///         Name = "example-tenant",
///         DistributionId = exampleAwsCloudfrontMultitenantDistribution.Id,
///         Enabled = true,
///         Domains = new[]
///         {
///             new Aws.CloudFront.Inputs.DistributionTenantDomainArgs
///             {
///                 Domain = "tenant.example.com",
///             },
///         },
///         Tags =
///         {
///             { "Environment", "production" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfront.NewDistributionTenant(ctx, "example", &cloudfront.DistributionTenantArgs{
/// 			Name:           pulumi.String("example-tenant"),
/// 			DistributionId: pulumi.Any(exampleAwsCloudfrontMultitenantDistribution.Id),
/// 			Enabled:        pulumi.Bool(true),
/// 			Domains: cloudfront.DistributionTenantDomainArray{
/// 				&cloudfront.DistributionTenantDomainArgs{
/// 					Domain: pulumi.String("tenant.example.com"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_cloudfront_distributiontenant" "example" {
///   name            = "example-tenant"
///   distribution_id = exampleAwsCloudfrontMultitenantDistribution.id
///   enabled         = true
///   domains {
///     domain = "tenant.example.com"
///   }
///   tags = {
///     "Environment" = "production"
///   }
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new DistributionTenant("example", DistributionTenantArgs.builder()
///             .name("example-tenant")
///             .distributionId(exampleAwsCloudfrontMultitenantDistribution.id())
///             .enabled(true)
///             .domains(DistributionTenantDomainArgs.builder()
///                 .domain("tenant.example.com")
///                 .build())
///             .tags(Map.of("Environment", "production"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudfront:DistributionTenant
///     properties:
///       name: example-tenant
///       distributionId: ${exampleAwsCloudfrontMultitenantDistribution.id}
///       enabled: true
///       domains:
///         - domain: tenant.example.com
///       tags:
///         Environment: production
/// ```
///
///
/// ### Distribution Tenant with Customizations
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.DistributionTenant("example", {
///     name: "example-tenant",
///     distributionId: exampleAwsCloudfrontMultitenantDistribution.id,
///     enabled: false,
///     domains: [{
///         domain: "tenant.example.com",
///     }],
///     customizations: {
///         geoRestriction: {
///             restrictionType: "whitelist",
///             locations: [
///                 "US",
///                 "CA",
///             ],
///         },
///         certificate: {
///             arn: tenantCert.arn,
///         },
///         webAcl: {
///             action: "override",
///             arn: tenantWaf.arn,
///         },
///     },
///     tags: {
///         Environment: "production",
///         Tenant: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.DistributionTenant("example",
///     name="example-tenant",
///     distribution_id=example_aws_cloudfront_multitenant_distribution["id"],
///     enabled=False,
///     domains=[{
///         "domain": "tenant.example.com",
///     }],
///     customizations={
///         "geo_restriction": {
///             "restriction_type": "whitelist",
///             "locations": [
///                 "US",
///                 "CA",
///             ],
///         },
///         "certificate": {
///             "arn": tenant_cert["arn"],
///         },
///         "web_acl": {
///             "action": "override",
///             "arn": tenant_waf["arn"],
///         },
///     },
///     tags={
///         "Environment": "production",
///         "Tenant": "example",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudFront.DistributionTenant("example", new()
///     {
///         Name = "example-tenant",
///         DistributionId = exampleAwsCloudfrontMultitenantDistribution.Id,
///         Enabled = false,
///         Domains = new[]
///         {
///             new Aws.CloudFront.Inputs.DistributionTenantDomainArgs
///             {
///                 Domain = "tenant.example.com",
///             },
///         },
///         Customizations = new Aws.CloudFront.Inputs.DistributionTenantCustomizationsArgs
///         {
///             GeoRestriction = new Aws.CloudFront.Inputs.DistributionTenantCustomizationsGeoRestrictionArgs
///             {
///                 RestrictionType = "whitelist",
///                 Locations = new[]
///                 {
///                     "US",
///                     "CA",
///                 },
///             },
///             Certificate = new Aws.CloudFront.Inputs.DistributionTenantCustomizationsCertificateArgs
///             {
///                 Arn = tenantCert.Arn,
///             },
///             WebAcl = new Aws.CloudFront.Inputs.DistributionTenantCustomizationsWebAclArgs
///             {
///                 Action = "override",
///                 Arn = tenantWaf.Arn,
///             },
///         },
///         Tags =
///         {
///             { "Environment", "production" },
///             { "Tenant", "example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfront.NewDistributionTenant(ctx, "example", &cloudfront.DistributionTenantArgs{
/// 			Name:           pulumi.String("example-tenant"),
/// 			DistributionId: pulumi.Any(exampleAwsCloudfrontMultitenantDistribution.Id),
/// 			Enabled:        pulumi.Bool(false),
/// 			Domains: cloudfront.DistributionTenantDomainArray{
/// 				&cloudfront.DistributionTenantDomainArgs{
/// 					Domain: pulumi.String("tenant.example.com"),
/// 				},
/// 			},
/// 			Customizations: &cloudfront.DistributionTenantCustomizationsArgs{
/// 				GeoRestriction: &cloudfront.DistributionTenantCustomizationsGeoRestrictionArgs{
/// 					RestrictionType: pulumi.String("whitelist"),
/// 					Locations: pulumi.StringArray{
/// 						pulumi.String("US"),
/// 						pulumi.String("CA"),
/// 					},
/// 				},
/// 				Certificate: &cloudfront.DistributionTenantCustomizationsCertificateArgs{
/// 					Arn: pulumi.Any(tenantCert.Arn),
/// 				},
/// 				WebAcl: &cloudfront.DistributionTenantCustomizationsWebAclArgs{
/// 					Action: pulumi.String("override"),
/// 					Arn:    pulumi.Any(tenantWaf.Arn),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
/// 				"Tenant":      pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_cloudfront_distributiontenant" "example" {
///   name            = "example-tenant"
///   distribution_id = exampleAwsCloudfrontMultitenantDistribution.id
///   enabled         = false
///   domains {
///     domain = "tenant.example.com"
///   }
///   customizations = {
///     geo_restriction = {
///       restriction_type = "whitelist"
///       locations        = ["US", "CA"]
///     }
///     certificate = {
///       arn = tenantCert.arn
///     }
///     web_acl = {
///       action = "override"
///       arn    = tenantWaf.arn
///     }
///   }
///   tags = {
///     "Environment" = "production"
///     "Tenant"      = "example"
///   }
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new DistributionTenant("example", DistributionTenantArgs.builder()
///             .name("example-tenant")
///             .distributionId(exampleAwsCloudfrontMultitenantDistribution.id())
///             .enabled(false)
///             .domains(DistributionTenantDomainArgs.builder()
///                 .domain("tenant.example.com")
///                 .build())
///             .customizations(DistributionTenantCustomizationsArgs.builder()
///                 .geoRestriction(DistributionTenantCustomizationsGeoRestrictionArgs.builder()
///                     .restrictionType("whitelist")
///                     .locations(
///                         "US",
///                         "CA")
///                     .build())
///                 .certificate(DistributionTenantCustomizationsCertificateArgs.builder()
///                     .arn(tenantCert.arn())
///                     .build())
///                 .webAcl(DistributionTenantCustomizationsWebAclArgs.builder()
///                     .action("override")
///                     .arn(tenantWaf.arn())
///                     .build())
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("Environment", "production"),
///                 Map.entry("Tenant", "example")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudfront:DistributionTenant
///     properties:
///       name: example-tenant
///       distributionId: ${exampleAwsCloudfrontMultitenantDistribution.id}
///       enabled: false
///       domains:
///         - domain: tenant.example.com
///       customizations:
///         geoRestriction:
///           restrictionType: whitelist
///           locations:
///             - US
///             - CA
///         certificate:
///           arn: ${tenantCert.arn}
///         webAcl:
///           action: override
///           arn: ${tenantWaf.arn}
///       tags:
///         Environment: production
///         Tenant: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudFront Distribution Tenants using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/distributionTenant:DistributionTenant example TENANT123EXAMPLE
/// ```
class DistributionTenant extends pulumi.CustomResource {
  /// ARN of the distribution tenant.
  late final pulumi.Output<String> arn;
  /// ID of the connection group for the distribution tenant. If not specified, CloudFront uses the default connection group.
  late final pulumi.Output<String> connectionGroupId;
  /// Customizations for the distribution tenant (maximum one).
  late final pulumi.Output<DistributionTenantCustomizations?> customizations;
  /// ID of the multi-tenant distribution.
  late final pulumi.Output<String> distributionId;
  /// Set of domains associated with the distribution tenant.
  late final pulumi.Output<List<Map<String, dynamic>>?> domains;
  /// Whether the distribution tenant is enabled to serve traffic. Defaults to `true`.
  late final pulumi.Output<bool> enabled;
  /// Current version of the distribution tenant.
  late final pulumi.Output<String> etag;
  /// Managed certificate request for CloudFront managed ACM certificate (maximum one).
  late final pulumi.Output<DistributionTenantManagedCertificateRequest?> managedCertificateRequest;
  /// Name of the distribution tenant.
  late final pulumi.Output<String> name;
  /// Set of parameter values for the distribution tenant.
  late final pulumi.Output<List<Map<String, dynamic>>?> parameters;
  /// Current status of the distribution tenant.
  late final pulumi.Output<String> status;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<DistributionTenantTimeouts?> timeouts;
  /// If enabled, the resource will wait for the distribution tenant status to change from `InProgress` to `Deployed`. Setting this to `false` will skip the process. Default: `true`.
  late final pulumi.Output<bool> waitForDeployment;

  /// Creates a new [DistributionTenant].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DistributionTenant]. {@macro pulumi_cloudfront_distribution_tenant_distribution_tenant_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DistributionTenant(
    String name, {
    DistributionTenantArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/distributionTenant:DistributionTenant',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    connectionGroupId = registerOutput<String>('connectionGroupId');
    customizations = registerOutput<DistributionTenantCustomizations?>('customizations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DistributionTenantCustomizations.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    distributionId = registerOutput<String>('distributionId');
    domains = registerOutput<List<Map<String, dynamic>>?>('domains');
    enabled = registerOutput<bool>('enabled');
    etag = registerOutput<String>('etag');
    managedCertificateRequest = registerOutput<DistributionTenantManagedCertificateRequest?>('managedCertificateRequest', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DistributionTenantManagedCertificateRequest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    parameters = registerOutput<List<Map<String, dynamic>>?>('parameters');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<DistributionTenantTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DistributionTenantTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    waitForDeployment = registerOutput<bool>('waitForDeployment');
  }

  /// Gets an existing [DistributionTenant] resource's state with the given [name] and [id].
  static DistributionTenant get(
    String name,
    pulumi.Input<String> id, {
    DistributionTenantState? state,
  }) {
    return DistributionTenant._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DistributionTenant._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/distributionTenant:DistributionTenant',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    connectionGroupId = registerOutput<String>('connectionGroupId');
    customizations = registerOutput<DistributionTenantCustomizations?>('customizations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DistributionTenantCustomizations.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    distributionId = registerOutput<String>('distributionId');
    domains = registerOutput<List<Map<String, dynamic>>?>('domains');
    enabled = registerOutput<bool>('enabled');
    etag = registerOutput<String>('etag');
    managedCertificateRequest = registerOutput<DistributionTenantManagedCertificateRequest?>('managedCertificateRequest', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DistributionTenantManagedCertificateRequest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    parameters = registerOutput<List<Map<String, dynamic>>?>('parameters');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<DistributionTenantTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DistributionTenantTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    waitForDeployment = registerOutput<bool>('waitForDeployment');
  }
}
