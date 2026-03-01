import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_scanning_configuration_args.dart';
import 'registry_scanning_configuration_rule.dart';

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
///     scanType: "ENHANCED",
///     rules: [{
///         scanFrequency: "CONTINUOUS_SCAN",
///         repositoryFilters: [{
///             filter: "example",
///             filterType: "WILDCARD",
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// configuration = aws.ecr.RegistryScanningConfiguration("configuration",
///     scan_type="ENHANCED",
///     rules=[{
///         "scan_frequency": "CONTINUOUS_SCAN",
///         "repository_filters": [{
///             "filter": "example",
///             "filter_type": "WILDCARD",
///         }],
///     }])
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
///         ScanType = "ENHANCED",
///         Rules = new[]
///         {
///             new Aws.Ecr.Inputs.RegistryScanningConfigurationRuleArgs
///             {
///                 ScanFrequency = "CONTINUOUS_SCAN",
///                 RepositoryFilters = new[]
///                 {
///                     new Aws.Ecr.Inputs.RegistryScanningConfigurationRuleRepositoryFilterArgs
///                     {
///                         Filter = "example",
///                         FilterType = "WILDCARD",
///                     },
///                 },
///             },
///         },
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
/// 			ScanType: pulumi.String("ENHANCED"),
/// 			Rules: ecr.RegistryScanningConfigurationRuleArray{
/// 				&ecr.RegistryScanningConfigurationRuleArgs{
/// 					ScanFrequency: pulumi.String("CONTINUOUS_SCAN"),
/// 					RepositoryFilters: ecr.RegistryScanningConfigurationRuleRepositoryFilterArray{
/// 						&ecr.RegistryScanningConfigurationRuleRepositoryFilterArgs{
/// 							Filter:     pulumi.String("example"),
/// 							FilterType: pulumi.String("WILDCARD"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .scanType("ENHANCED")
///             .rules(RegistryScanningConfigurationRuleArgs.builder()
///                 .scanFrequency("CONTINUOUS_SCAN")
///                 .repositoryFilters(RegistryScanningConfigurationRuleRepositoryFilterArgs.builder()
///                     .filter("example")
///                     .filterType("WILDCARD")
///                     .build())
///                 .build())
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
///       scanType: ENHANCED
///       rules:
///         - scanFrequency: CONTINUOUS_SCAN
///           repositoryFilters:
///             - filter: example
///               filterType: WILDCARD
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
///     scanType: "ENHANCED",
///     rules: [
///         {
///             scanFrequency: "SCAN_ON_PUSH",
///             repositoryFilters: [{
///                 filter: "*",
///                 filterType: "WILDCARD",
///             }],
///         },
///         {
///             scanFrequency: "CONTINUOUS_SCAN",
///             repositoryFilters: [{
///                 filter: "example",
///                 filterType: "WILDCARD",
///             }],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ecr.RegistryScanningConfiguration("test",
///     scan_type="ENHANCED",
///     rules=[
///         {
///             "scan_frequency": "SCAN_ON_PUSH",
///             "repository_filters": [{
///                 "filter": "*",
///                 "filter_type": "WILDCARD",
///             }],
///         },
///         {
///             "scan_frequency": "CONTINUOUS_SCAN",
///             "repository_filters": [{
///                 "filter": "example",
///                 "filter_type": "WILDCARD",
///             }],
///         },
///     ])
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
///         ScanType = "ENHANCED",
///         Rules = new[]
///         {
///             new Aws.Ecr.Inputs.RegistryScanningConfigurationRuleArgs
///             {
///                 ScanFrequency = "SCAN_ON_PUSH",
///                 RepositoryFilters = new[]
///                 {
///                     new Aws.Ecr.Inputs.RegistryScanningConfigurationRuleRepositoryFilterArgs
///                     {
///                         Filter = "*",
///                         FilterType = "WILDCARD",
///                     },
///                 },
///             },
///             new Aws.Ecr.Inputs.RegistryScanningConfigurationRuleArgs
///             {
///                 ScanFrequency = "CONTINUOUS_SCAN",
///                 RepositoryFilters = new[]
///                 {
///                     new Aws.Ecr.Inputs.RegistryScanningConfigurationRuleRepositoryFilterArgs
///                     {
///                         Filter = "example",
///                         FilterType = "WILDCARD",
///                     },
///                 },
///             },
///         },
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
/// 			ScanType: pulumi.String("ENHANCED"),
/// 			Rules: ecr.RegistryScanningConfigurationRuleArray{
/// 				&ecr.RegistryScanningConfigurationRuleArgs{
/// 					ScanFrequency: pulumi.String("SCAN_ON_PUSH"),
/// 					RepositoryFilters: ecr.RegistryScanningConfigurationRuleRepositoryFilterArray{
/// 						&ecr.RegistryScanningConfigurationRuleRepositoryFilterArgs{
/// 							Filter:     pulumi.String("*"),
/// 							FilterType: pulumi.String("WILDCARD"),
/// 						},
/// 					},
/// 				},
/// 				&ecr.RegistryScanningConfigurationRuleArgs{
/// 					ScanFrequency: pulumi.String("CONTINUOUS_SCAN"),
/// 					RepositoryFilters: ecr.RegistryScanningConfigurationRuleRepositoryFilterArray{
/// 						&ecr.RegistryScanningConfigurationRuleRepositoryFilterArgs{
/// 							Filter:     pulumi.String("example"),
/// 							FilterType: pulumi.String("WILDCARD"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .scanType("ENHANCED")
///             .rules(
///                 RegistryScanningConfigurationRuleArgs.builder()
///                     .scanFrequency("SCAN_ON_PUSH")
///                     .repositoryFilters(RegistryScanningConfigurationRuleRepositoryFilterArgs.builder()
///                         .filter("*")
///                         .filterType("WILDCARD")
///                         .build())
///                     .build(),
///                 RegistryScanningConfigurationRuleArgs.builder()
///                     .scanFrequency("CONTINUOUS_SCAN")
///                     .repositoryFilters(RegistryScanningConfigurationRuleRepositoryFilterArgs.builder()
///                         .filter("example")
///                         .filterType("WILDCARD")
///                         .build())
///                     .build())
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
///       scanType: ENHANCED
///       rules:
///         - scanFrequency: SCAN_ON_PUSH
///           repositoryFilters:
///             - filter: '*'
///               filterType: WILDCARD
///         - scanFrequency: CONTINUOUS_SCAN
///           repositoryFilters:
///             - filter: example
///               filterType: WILDCARD
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import ECR Scanning Configurations using the `registry_id`. For example:
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.registryId = registerOutput<String>('registryId');
    this.rules = registerOutput<List<RegistryScanningConfigurationRule>?>('rules');
    this.scanType = registerOutput<String>('scanType');
  }
}
