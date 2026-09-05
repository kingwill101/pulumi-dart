import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_scanning_configuration_args.dart';
import 'registry_scanning_configuration_rule.dart';
import 'registry_scanning_configuration_state.dart';

/// Provides an Elastic Container Registry Scanning Configuration. Can't be completely deleted, instead reverts to the default `BASIC` scanning configuration without rules.
///
/// ## Example Usage
///
/// ### Basic example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const configuration = new aws.ecr.RegistryScanningConfiguration("configuration", {
///     rules: [{
///         repositoryFilters: [{
///             filter: "example",
///             filterType: "WILDCARD",
///         }],
///         scanFrequency: "CONTINUOUS_SCAN",
///     }],
///     scanType: "ENHANCED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// configuration = aws.ecr.RegistryScanningConfiguration("configuration",
///     rules=[{
///         "repository_filters": [{
///             "filter": "example",
///             "filter_type": "WILDCARD",
///         }],
///         "scan_frequency": "CONTINUOUS_SCAN",
///     }],
///     scan_type="ENHANCED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var configuration = new Aws.Ecr.RegistryScanningConfiguration("configuration", new()
///     {
///         Rules = new[]
///         {
///             new Aws.Ecr.Inputs.RegistryScanningConfigurationRuleArgs
///             {
///                 RepositoryFilters = new[]
///                 {
///                     new Aws.Ecr.Inputs.RegistryScanningConfigurationRuleRepositoryFilterArgs
///                     {
///                         Filter = "example",
///                         FilterType = "WILDCARD",
///                     },
///                 },
///                 ScanFrequency = "CONTINUOUS_SCAN",
///             },
///         },
///         ScanType = "ENHANCED",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecr.NewRegistryScanningConfiguration(ctx, "configuration", &ecr.RegistryScanningConfigurationArgs{
/// 			Rules: ecr.RegistryScanningConfigurationRuleArray{
/// 				&ecr.RegistryScanningConfigurationRuleArgs{
/// 					RepositoryFilters: ecr.RegistryScanningConfigurationRuleRepositoryFilterArray{
/// 						&ecr.RegistryScanningConfigurationRuleRepositoryFilterArgs{
/// 							Filter:     pulumi.String("example"),
/// 							FilterType: pulumi.String("WILDCARD"),
/// 						},
/// 					},
/// 					ScanFrequency: pulumi.String("CONTINUOUS_SCAN"),
/// 				},
/// 			},
/// 			ScanType: pulumi.String("ENHANCED"),
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
/// resource "aws_ecr_registryscanningconfiguration" "configuration" {
///   rules {
///     repository_filters {
///       filter      = "example"
///       filter_type = "WILDCARD"
///     }
///     scan_frequency = "CONTINUOUS_SCAN"
///   }
///   scan_type = "ENHANCED"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecr.RegistryScanningConfiguration;
/// import com.pulumi.aws.ecr.RegistryScanningConfigurationArgs;
/// import com.pulumi.aws.ecr.inputs.RegistryScanningConfigurationRuleArgs;
/// import com.pulumi.aws.ecr.inputs.RegistryScanningConfigurationRuleRepositoryFilterArgs;
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
///         var configuration = new RegistryScanningConfiguration("configuration", RegistryScanningConfigurationArgs.builder()
///             .rules(RegistryScanningConfigurationRuleArgs.builder()
///                 .repositoryFilters(RegistryScanningConfigurationRuleRepositoryFilterArgs.builder()
///                     .filter("example")
///                     .filterType("WILDCARD")
///                     .build())
///                 .scanFrequency("CONTINUOUS_SCAN")
///                 .build())
///             .scanType("ENHANCED")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   configuration:
///     type: aws:ecr:RegistryScanningConfiguration
///     properties:
///       rules:
///         - repositoryFilters:
///             - filter: example
///               filterType: WILDCARD
///           scanFrequency: CONTINUOUS_SCAN
///       scanType: ENHANCED
/// ```
///
///
/// ### Multiple rules
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.ecr.RegistryScanningConfiguration("test", {
///     rules: [
///         {
///             repositoryFilters: [{
///                 filter: "*",
///                 filterType: "WILDCARD",
///             }],
///             scanFrequency: "SCAN_ON_PUSH",
///         },
///         {
///             repositoryFilters: [{
///                 filter: "example",
///                 filterType: "WILDCARD",
///             }],
///             scanFrequency: "CONTINUOUS_SCAN",
///         },
///     ],
///     scanType: "ENHANCED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ecr.RegistryScanningConfiguration("test",
///     rules=[
///         {
///             "repository_filters": [{
///                 "filter": "*",
///                 "filter_type": "WILDCARD",
///             }],
///             "scan_frequency": "SCAN_ON_PUSH",
///         },
///         {
///             "repository_filters": [{
///                 "filter": "example",
///                 "filter_type": "WILDCARD",
///             }],
///             "scan_frequency": "CONTINUOUS_SCAN",
///         },
///     ],
///     scan_type="ENHANCED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Ecr.RegistryScanningConfiguration("test", new()
///     {
///         Rules = new[]
///         {
///             new Aws.Ecr.Inputs.RegistryScanningConfigurationRuleArgs
///             {
///                 RepositoryFilters = new[]
///                 {
///                     new Aws.Ecr.Inputs.RegistryScanningConfigurationRuleRepositoryFilterArgs
///                     {
///                         Filter = "*",
///                         FilterType = "WILDCARD",
///                     },
///                 },
///                 ScanFrequency = "SCAN_ON_PUSH",
///             },
///             new Aws.Ecr.Inputs.RegistryScanningConfigurationRuleArgs
///             {
///                 RepositoryFilters = new[]
///                 {
///                     new Aws.Ecr.Inputs.RegistryScanningConfigurationRuleRepositoryFilterArgs
///                     {
///                         Filter = "example",
///                         FilterType = "WILDCARD",
///                     },
///                 },
///                 ScanFrequency = "CONTINUOUS_SCAN",
///             },
///         },
///         ScanType = "ENHANCED",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecr.NewRegistryScanningConfiguration(ctx, "test", &ecr.RegistryScanningConfigurationArgs{
/// 			Rules: ecr.RegistryScanningConfigurationRuleArray{
/// 				&ecr.RegistryScanningConfigurationRuleArgs{
/// 					RepositoryFilters: ecr.RegistryScanningConfigurationRuleRepositoryFilterArray{
/// 						&ecr.RegistryScanningConfigurationRuleRepositoryFilterArgs{
/// 							Filter:     pulumi.String("*"),
/// 							FilterType: pulumi.String("WILDCARD"),
/// 						},
/// 					},
/// 					ScanFrequency: pulumi.String("SCAN_ON_PUSH"),
/// 				},
/// 				&ecr.RegistryScanningConfigurationRuleArgs{
/// 					RepositoryFilters: ecr.RegistryScanningConfigurationRuleRepositoryFilterArray{
/// 						&ecr.RegistryScanningConfigurationRuleRepositoryFilterArgs{
/// 							Filter:     pulumi.String("example"),
/// 							FilterType: pulumi.String("WILDCARD"),
/// 						},
/// 					},
/// 					ScanFrequency: pulumi.String("CONTINUOUS_SCAN"),
/// 				},
/// 			},
/// 			ScanType: pulumi.String("ENHANCED"),
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
/// resource "aws_ecr_registryscanningconfiguration" "test" {
///   rules {
///     repository_filters {
///       filter      = "*"
///       filter_type = "WILDCARD"
///     }
///     scan_frequency = "SCAN_ON_PUSH"
///   }
///   rules {
///     repository_filters {
///       filter      = "example"
///       filter_type = "WILDCARD"
///     }
///     scan_frequency = "CONTINUOUS_SCAN"
///   }
///   scan_type = "ENHANCED"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecr.RegistryScanningConfiguration;
/// import com.pulumi.aws.ecr.RegistryScanningConfigurationArgs;
/// import com.pulumi.aws.ecr.inputs.RegistryScanningConfigurationRuleArgs;
/// import com.pulumi.aws.ecr.inputs.RegistryScanningConfigurationRuleRepositoryFilterArgs;
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
///         var test = new RegistryScanningConfiguration("test", RegistryScanningConfigurationArgs.builder()
///             .rules(
///                 RegistryScanningConfigurationRuleArgs.builder()
///                     .repositoryFilters(RegistryScanningConfigurationRuleRepositoryFilterArgs.builder()
///                         .filter("*")
///                         .filterType("WILDCARD")
///                         .build())
///                     .scanFrequency("SCAN_ON_PUSH")
///                     .build(),
///                 RegistryScanningConfigurationRuleArgs.builder()
///                     .repositoryFilters(RegistryScanningConfigurationRuleRepositoryFilterArgs.builder()
///                         .filter("example")
///                         .filterType("WILDCARD")
///                         .build())
///                     .scanFrequency("CONTINUOUS_SCAN")
///                     .build())
///             .scanType("ENHANCED")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:ecr:RegistryScanningConfiguration
///     properties:
///       rules:
///         - repositoryFilters:
///             - filter: '*'
///               filterType: WILDCARD
///           scanFrequency: SCAN_ON_PUSH
///         - repositoryFilters:
///             - filter: example
///               filterType: WILDCARD
///           scanFrequency: CONTINUOUS_SCAN
///       scanType: ENHANCED
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import ECR Scanning Configurations using the `registryId`. For example:
///
/// ```sh
/// $ pulumi import aws:ecr/registryScanningConfiguration:RegistryScanningConfiguration example 123456789012
/// ```
class RegistryScanningConfiguration extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The registry ID the scanning configuration applies to.
  late final pulumi.Output<String> registryId;
  /// One or multiple blocks specifying scanning rules to determine which repository filters are used and at what frequency scanning will occur. See below for schema.
  late final pulumi.Output<List<RegistryScanningConfigurationRule>?> rules;
  /// the scanning type to set for the registry. Can be either `ENHANCED` or `BASIC`.
  late final pulumi.Output<String> scanType;

  /// Creates a new [RegistryScanningConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegistryScanningConfiguration]. {@macro pulumi_ecr_registry_scanning_configuration_registry_scanning_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegistryScanningConfiguration(
    String name, {
    RegistryScanningConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecr/registryScanningConfiguration:RegistryScanningConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    region = registerOutput<String>('region');
    registryId = registerOutput<String>('registryId');
    rules = registerOutput<List<RegistryScanningConfigurationRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegistryScanningConfigurationRule>(guardedValue, (value) => RegistryScanningConfigurationRule.fromMap((value as Map).cast<String, dynamic>())); });
    scanType = registerOutput<String>('scanType');
  }

  /// Gets an existing [RegistryScanningConfiguration] resource's state with the given [name] and [id].
  static RegistryScanningConfiguration get(
    String name,
    pulumi.Input<String> id, {
    RegistryScanningConfigurationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RegistryScanningConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RegistryScanningConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecr/registryScanningConfiguration:RegistryScanningConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    registryId = registerOutput<String>('registryId');
    rules = registerOutput<List<RegistryScanningConfigurationRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegistryScanningConfigurationRule>(guardedValue, (value) => RegistryScanningConfigurationRule.fromMap((value as Map).cast<String, dynamic>())); });
    scanType = registerOutput<String>('scanType');
  }

  /// Creates a typed reference to an existing [RegistryScanningConfiguration] resource.
  RegistryScanningConfiguration.reference(String urn)
    : super(
        'aws:ecr/registryScanningConfiguration:RegistryScanningConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    region = registerOutput<String>('region');
    registryId = registerOutput<String>('registryId');
    rules = registerOutput<List<RegistryScanningConfigurationRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegistryScanningConfigurationRule>(guardedValue, (value) => RegistryScanningConfigurationRule.fromMap((value as Map).cast<String, dynamic>())); });
    scanType = registerOutput<String>('scanType');
  }
}
