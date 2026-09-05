import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_configuration_args.dart';
import 'license_configuration_state.dart';

/// Provides a License Manager license configuration resource.
///
/// &gt; **Note:** Removing the `licenseCount` attribute is not supported by the License Manager API.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.licensemanager.LicenseConfiguration("example", {
///     name: "Example",
///     description: "Example",
///     licenseCount: 10,
///     licenseCountHardLimit: true,
///     licenseCountingType: "Socket",
///     licenseRules: ["#minimumSockets=2"],
///     tags: {
///         foo: "barr",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.licensemanager.LicenseConfiguration("example",
///     name="Example",
///     description="Example",
///     license_count=10,
///     license_count_hard_limit=True,
///     license_counting_type="Socket",
///     license_rules=["#minimumSockets=2"],
///     tags={
///         "foo": "barr",
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
///     var example = new Aws.LicenseManager.LicenseConfiguration("example", new()
///     {
///         Name = "Example",
///         Description = "Example",
///         LicenseCount = 10,
///         LicenseCountHardLimit = true,
///         LicenseCountingType = "Socket",
///         LicenseRules = new[]
///         {
///             "#minimumSockets=2",
///         },
///         Tags =
///         {
///             { "foo", "barr" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/licensemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := licensemanager.NewLicenseConfiguration(ctx, "example", &licensemanager.LicenseConfigurationArgs{
/// 			Name:                  pulumi.String("Example"),
/// 			Description:           pulumi.String("Example"),
/// 			LicenseCount:          pulumi.Int(10),
/// 			LicenseCountHardLimit: pulumi.Bool(true),
/// 			LicenseCountingType:   pulumi.String("Socket"),
/// 			LicenseRules: pulumi.StringArray{
/// 				pulumi.String("#minimumSockets=2"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"foo": pulumi.String("barr"),
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
/// resource "aws_licensemanager_licenseconfiguration" "example" {
///   name                     = "Example"
///   description              = "Example"
///   license_count            = 10
///   license_count_hard_limit = true
///   license_counting_type    = "Socket"
///   license_rules            = ["#minimumSockets=2"]
///   tags = {
///     "foo" = "barr"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.licensemanager.LicenseConfiguration;
/// import com.pulumi.aws.licensemanager.LicenseConfigurationArgs;
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
///         var example = new LicenseConfiguration("example", LicenseConfigurationArgs.builder()
///             .name("Example")
///             .description("Example")
///             .licenseCount(10)
///             .licenseCountHardLimit(true)
///             .licenseCountingType("Socket")
///             .licenseRules("#minimumSockets=2")
///             .tags(Map.of("foo", "barr"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:licensemanager:LicenseConfiguration
///     properties:
///       name: Example
///       description: Example
///       licenseCount: 10
///       licenseCountHardLimit: true
///       licenseCountingType: Socket
///       licenseRules:
///         - '#minimumSockets=2'
///       tags:
///         foo: barr
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import license configurations using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:licensemanager/licenseConfiguration:LicenseConfiguration example arn:aws:license-manager:eu-west-1:123456789012:license-configuration:lic-0123456789abcdef0123456789abcdef
/// ```
class LicenseConfiguration extends pulumi.CustomResource {
  /// The license configuration ARN.
  late final pulumi.Output<String> arn;
  /// Description of the license configuration.
  late final pulumi.Output<String?> description;
  /// Number of licenses managed by the license configuration.
  late final pulumi.Output<int?> licenseCount;
  /// Sets the number of available licenses as a hard limit.
  late final pulumi.Output<bool?> licenseCountHardLimit;
  /// Dimension to use to track license inventory. Specify either `vCPU`, `Instance`, `Core` or `Socket`.
  late final pulumi.Output<String> licenseCountingType;
  /// Array of configured License Manager rules.
  late final pulumi.Output<List<String>?> licenseRules;
  /// Name of the license configuration.
  late final pulumi.Output<String> name;
  /// Account ID of the owner of the license configuration.
  late final pulumi.Output<String> ownerAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [LicenseConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LicenseConfiguration]. {@macro pulumi_licensemanager_license_configuration_license_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LicenseConfiguration(
    String name, {
    LicenseConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:licensemanager/licenseConfiguration:LicenseConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    licenseCount = registerOutput<int?>('licenseCount');
    licenseCountHardLimit = registerOutput<bool?>('licenseCountHardLimit');
    licenseCountingType = registerOutput<String>('licenseCountingType');
    licenseRules = registerOutput<List<String>?>('licenseRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    ownerAccountId = registerOutput<String>('ownerAccountId');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [LicenseConfiguration] resource's state with the given [name] and [id].
  static LicenseConfiguration get(
    String name,
    pulumi.Input<String> id, {
    LicenseConfigurationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LicenseConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LicenseConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:licensemanager/licenseConfiguration:LicenseConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    licenseCount = registerOutput<int?>('licenseCount');
    licenseCountHardLimit = registerOutput<bool?>('licenseCountHardLimit');
    licenseCountingType = registerOutput<String>('licenseCountingType');
    licenseRules = registerOutput<List<String>?>('licenseRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    ownerAccountId = registerOutput<String>('ownerAccountId');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [LicenseConfiguration] resource.
  LicenseConfiguration.reference(String urn)
    : super(
        'aws:licensemanager/licenseConfiguration:LicenseConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    licenseCount = registerOutput<int?>('licenseCount');
    licenseCountHardLimit = registerOutput<bool?>('licenseCountHardLimit');
    licenseCountingType = registerOutput<String>('licenseCountingType');
    licenseRules = registerOutput<List<String>?>('licenseRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    ownerAccountId = registerOutput<String>('ownerAccountId');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
