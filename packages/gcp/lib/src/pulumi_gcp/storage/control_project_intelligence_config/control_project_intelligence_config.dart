import 'package:pulumi/pulumi.dart';
import '../control_project_intelligence_config_effective_intelligence_config/control_project_intelligence_config_effective_intelligence_config.dart';
import '../control_project_intelligence_config_filter/control_project_intelligence_config_filter.dart';
import '../control_project_intelligence_config_trial_config/control_project_intelligence_config_trial_config.dart';
import 'control_project_intelligence_config_args.dart';

/// ## Example Usage
///
/// ### Storage Control Project Intelligence Config Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.storage.ControlProjectIntelligenceConfig("example", {
/// name: "test-project",
/// editionConfig: "TRIAL",
/// filter: {
/// includedCloudStorageBuckets: {
/// bucketIdRegexes: [
/// "test-id-1*",
/// "test-id-2*",
/// ],
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.storage.ControlProjectIntelligenceConfig("example",
/// name="test-project",
/// edition_config="TRIAL",
/// filter={
/// "included_cloud_storage_buckets": {
/// "bucket_id_regexes": [
/// "test-id-1*",
/// "test-id-2*",
/// ],
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Gcp.Storage.ControlProjectIntelligenceConfig("example", new()
/// {
/// Name = "test-project",
/// EditionConfig = "TRIAL",
/// Filter = new Gcp.Storage.Inputs.ControlProjectIntelligenceConfigFilterArgs
/// {
/// IncludedCloudStorageBuckets = new Gcp.Storage.Inputs.ControlProjectIntelligenceConfigFilterIncludedCloudStorageBucketsArgs
/// {
/// BucketIdRegexes = new[]
/// {
/// "test-id-1*",
/// "test-id-2*",
/// },
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := storage.NewControlProjectIntelligenceConfig(ctx, "example", &storage.ControlProjectIntelligenceConfigArgs{
/// Name:          pulumi.String("test-project"),
/// EditionConfig: pulumi.String("TRIAL"),
/// Filter: &storage.ControlProjectIntelligenceConfigFilterArgs{
/// IncludedCloudStorageBuckets: &storage.ControlProjectIntelligenceConfigFilterIncludedCloudStorageBucketsArgs{
/// BucketIdRegexes: pulumi.StringArray{
/// pulumi.String("test-id-1*"),
/// pulumi.String("test-id-2*"),
/// },
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
/// import com.pulumi.gcp.storage.ControlProjectIntelligenceConfig;
/// import com.pulumi.gcp.storage.ControlProjectIntelligenceConfigArgs;
/// import com.pulumi.gcp.storage.inputs.ControlProjectIntelligenceConfigFilterArgs;
/// import com.pulumi.gcp.storage.inputs.ControlProjectIntelligenceConfigFilterIncludedCloudStorageBucketsArgs;
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
/// var example = new ControlProjectIntelligenceConfig("example", ControlProjectIntelligenceConfigArgs.builder()
/// .name("test-project")
/// .editionConfig("TRIAL")
/// .filter(ControlProjectIntelligenceConfigFilterArgs.builder()
/// .includedCloudStorageBuckets(ControlProjectIntelligenceConfigFilterIncludedCloudStorageBucketsArgs.builder()
/// .bucketIdRegexes(
/// "test-id-1*",
/// "test-id-2*")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: gcp:storage:ControlProjectIntelligenceConfig
/// properties:
/// name: test-project
/// editionConfig: TRIAL
/// filter:
/// includedCloudStorageBuckets:
/// bucketIdRegexes:
/// - test-id-1*
/// - test-id-2*
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ProjectIntelligenceConfig can be imported using any of these accepted formats:
///
/// * `projects/{{name}}/locations/global/intelligenceConfig`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, ProjectIntelligenceConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:storage/controlProjectIntelligenceConfig:ControlProjectIntelligenceConfig default projects/{{name}}/locations/global/intelligenceConfig
/// ```
///
/// ```sh
/// $ pulumi import gcp:storage/controlProjectIntelligenceConfig:ControlProjectIntelligenceConfig default {{name}}
/// ```
class ControlProjectIntelligenceConfig extends CustomResource {
  /// Edition configuration of the Storage Intelligence resource. Valid values are INHERIT, TRIAL, DISABLED and STANDARD.
  late final Output<String> editionConfig;

  /// The Intelligence config that is effective for the resource.
  /// Structure is documented below.
  late final Output<
          List<ControlProjectIntelligenceConfigEffectiveIntelligenceConfig>>
      effectiveIntelligenceConfigs;

  /// Filter over location and bucket using include or exclude semantics. Resources that match the include or exclude filter are exclusively included or excluded from the Storage Intelligence plan.
  /// Structure is documented below.
  late final Output<ControlProjectIntelligenceConfigFilter?> filter;

  /// Identifier of the GCP project. For GCP project, this field can be project name or project number.
  late final Output<String> name;

  /// The trial configuration of the Storage Intelligence resource.
  /// Structure is documented below.
  late final Output<List<ControlProjectIntelligenceConfigTrialConfig>>
      trialConfigs;

  /// The time at which the Storage Intelligence Config resource is last updated.
  late final Output<String> updateTime;

  ControlProjectIntelligenceConfig(
    String name, {
    ControlProjectIntelligenceConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:storage/controlProjectIntelligenceConfig:ControlProjectIntelligenceConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.editionConfig = registerOutput<String>('editionConfig');
    this.effectiveIntelligenceConfigs = registerOutput<
            List<ControlProjectIntelligenceConfigEffectiveIntelligenceConfig>>(
        'effectiveIntelligenceConfigs');
    this.filter =
        registerOutput<ControlProjectIntelligenceConfigFilter?>('filter');
    this.name = registerOutput<String>('name');
    this.trialConfigs =
        registerOutput<List<ControlProjectIntelligenceConfigTrialConfig>>(
            'trialConfigs');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
