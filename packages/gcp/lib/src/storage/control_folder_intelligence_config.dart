import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_folder_intelligence_config_args.dart';
import 'control_folder_intelligence_config_effective_intelligence_config.dart';
import 'control_folder_intelligence_config_filter.dart';
import 'control_folder_intelligence_config_trial_config.dart';

/// ## Example Usage
///
/// ### Storage Control Folder Intelligence Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.storage.ControlFolderIntelligenceConfig("example", {
///     name: "12345678",
///     editionConfig: "STANDARD",
///     filter: {
///         includedCloudStorageBuckets: {
///             bucketIdRegexes: [
///                 "test-id-1*",
///                 "test-id-2*",
///             ],
///         },
///         excludedCloudStorageLocations: {
///             locations: [
///                 "test-location-1*",
///                 "test-locations-2*",
///             ],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.storage.ControlFolderIntelligenceConfig("example",
///     name="12345678",
///     edition_config="STANDARD",
///     filter={
///         "included_cloud_storage_buckets": {
///             "bucket_id_regexes": [
///                 "test-id-1*",
///                 "test-id-2*",
///             ],
///         },
///         "excluded_cloud_storage_locations": {
///             "locations": [
///                 "test-location-1*",
///                 "test-locations-2*",
///             ],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.Storage.ControlFolderIntelligenceConfig("example", new()
///     {
///         Name = "12345678",
///         EditionConfig = "STANDARD",
///         Filter = new Gcp.Storage.Inputs.ControlFolderIntelligenceConfigFilterArgs
///         {
///             IncludedCloudStorageBuckets = new Gcp.Storage.Inputs.ControlFolderIntelligenceConfigFilterIncludedCloudStorageBucketsArgs
///             {
///                 BucketIdRegexes = new[]
///                 {
///                     "test-id-1*",
///                     "test-id-2*",
///                 },
///             },
///             ExcludedCloudStorageLocations = new Gcp.Storage.Inputs.ControlFolderIntelligenceConfigFilterExcludedCloudStorageLocationsArgs
///             {
///                 Locations = new[]
///                 {
///                     "test-location-1*",
///                     "test-locations-2*",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewControlFolderIntelligenceConfig(ctx, "example", &storage.ControlFolderIntelligenceConfigArgs{
/// 			Name:          pulumi.String("12345678"),
/// 			EditionConfig: pulumi.String("STANDARD"),
/// 			Filter: &storage.ControlFolderIntelligenceConfigFilterArgs{
/// 				IncludedCloudStorageBuckets: &storage.ControlFolderIntelligenceConfigFilterIncludedCloudStorageBucketsArgs{
/// 					BucketIdRegexes: pulumi.StringArray{
/// 						pulumi.String("test-id-1*"),
/// 						pulumi.String("test-id-2*"),
/// 					},
/// 				},
/// 				ExcludedCloudStorageLocations: &storage.ControlFolderIntelligenceConfigFilterExcludedCloudStorageLocationsArgs{
/// 					Locations: pulumi.StringArray{
/// 						pulumi.String("test-location-1*"),
/// 						pulumi.String("test-locations-2*"),
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
/// import com.pulumi.gcp.storage.ControlFolderIntelligenceConfig;
/// import com.pulumi.gcp.storage.ControlFolderIntelligenceConfigArgs;
/// import com.pulumi.gcp.storage.inputs.ControlFolderIntelligenceConfigFilterArgs;
/// import com.pulumi.gcp.storage.inputs.ControlFolderIntelligenceConfigFilterIncludedCloudStorageBucketsArgs;
/// import com.pulumi.gcp.storage.inputs.ControlFolderIntelligenceConfigFilterExcludedCloudStorageLocationsArgs;
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
///         var example = new ControlFolderIntelligenceConfig("example", ControlFolderIntelligenceConfigArgs.builder()
///             .name("12345678")
///             .editionConfig("STANDARD")
///             .filter(ControlFolderIntelligenceConfigFilterArgs.builder()
///                 .includedCloudStorageBuckets(ControlFolderIntelligenceConfigFilterIncludedCloudStorageBucketsArgs.builder()
///                     .bucketIdRegexes(
///                         "test-id-1*",
///                         "test-id-2*")
///                     .build())
///                 .excludedCloudStorageLocations(ControlFolderIntelligenceConfigFilterExcludedCloudStorageLocationsArgs.builder()
///                     .locations(
///                         "test-location-1*",
///                         "test-locations-2*")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:storage:ControlFolderIntelligenceConfig
///     properties:
///       name: '12345678'
///       editionConfig: STANDARD
///       filter:
///         includedCloudStorageBuckets:
///           bucketIdRegexes:
///             - test-id-1*
///             - test-id-2*
///         excludedCloudStorageLocations:
///           locations:
///             - test-location-1*
///             - test-locations-2*
/// ```
///
///
/// ## Import
///
/// FolderIntelligenceConfig can be imported using any of these accepted formats:
///
/// * `folders/{{name}}/locations/global/intelligenceConfig`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, FolderIntelligenceConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:storage/controlFolderIntelligenceConfig:ControlFolderIntelligenceConfig default folders/{{name}}/locations/global/intelligenceConfig
/// ```
///
/// ```sh
/// $ pulumi import gcp:storage/controlFolderIntelligenceConfig:ControlFolderIntelligenceConfig default {{name}}
/// ```
class ControlFolderIntelligenceConfig extends pulumi.CustomResource {
  /// Edition configuration of the Storage Intelligence resource. Valid values are INHERIT, TRIAL, DISABLED and STANDARD.
  late final pulumi.Output<String> editionConfig;
  /// The Intelligence config that is effective for the resource.
  /// Structure is documented below.
  late final pulumi.Output<List<ControlFolderIntelligenceConfigEffectiveIntelligenceConfig>> effectiveIntelligenceConfigs;
  /// Filter over location and bucket using include or exclude semantics. Resources that match the include or exclude filter are exclusively included or excluded from the Storage Intelligence plan.
  /// Structure is documented below.
  late final pulumi.Output<ControlFolderIntelligenceConfigFilter?> filter;
  /// Identifier of the GCP Folder. For GCP Folder, this field can be folder number.
  late final pulumi.Output<String> name;
  /// The trial configuration of the Storage Intelligence resource.
  /// Structure is documented below.
  late final pulumi.Output<List<ControlFolderIntelligenceConfigTrialConfig>> trialConfigs;
  /// The time at which the Storage Intelligence Config resource is last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ControlFolderIntelligenceConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ControlFolderIntelligenceConfig]. {@macro pulumi_storage_control_folder_intelligence_config_control_folder_intelligence_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ControlFolderIntelligenceConfig(
    String name, {
    ControlFolderIntelligenceConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/controlFolderIntelligenceConfig:ControlFolderIntelligenceConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.editionConfig = registerOutput<String>('editionConfig');
    this.effectiveIntelligenceConfigs = registerOutput<List<ControlFolderIntelligenceConfigEffectiveIntelligenceConfig>>('effectiveIntelligenceConfigs');
    this.filter = registerOutput<ControlFolderIntelligenceConfigFilter?>('filter');
    this.name = registerOutput<String>('name');
    this.trialConfigs = registerOutput<List<ControlFolderIntelligenceConfigTrialConfig>>('trialConfigs');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
