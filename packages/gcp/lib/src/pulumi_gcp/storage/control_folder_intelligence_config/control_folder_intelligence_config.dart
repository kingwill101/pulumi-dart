import 'package:pulumi/pulumi.dart';
import '../control_folder_intelligence_config_effective_intelligence_config/control_folder_intelligence_config_effective_intelligence_config.dart';
import '../control_folder_intelligence_config_filter/control_folder_intelligence_config_filter.dart';
import '../control_folder_intelligence_config_trial_config/control_folder_intelligence_config_trial_config.dart';
import 'control_folder_intelligence_config_args.dart';

/// ## Example Usage
///
/// ### Storage Control Folder Intelligence Config Basic
///
///
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
class ControlFolderIntelligenceConfig extends CustomResource {
  /// Edition configuration of the Storage Intelligence resource. Valid values are INHERIT, TRIAL, DISABLED and STANDARD.
  late final Output<String> editionConfig;

  /// The Intelligence config that is effective for the resource.
  /// Structure is documented below.
  late final Output<
          List<ControlFolderIntelligenceConfigEffectiveIntelligenceConfig>>
      effectiveIntelligenceConfigs;

  /// Filter over location and bucket using include or exclude semantics. Resources that match the include or exclude filter are exclusively included or excluded from the Storage Intelligence plan.
  /// Structure is documented below.
  late final Output<ControlFolderIntelligenceConfigFilter?> filter;

  /// Identifier of the GCP Folder. For GCP Folder, this field can be folder number.
  late final Output<String> name;

  /// The trial configuration of the Storage Intelligence resource.
  /// Structure is documented below.
  late final Output<List<ControlFolderIntelligenceConfigTrialConfig>>
      trialConfigs;

  /// The time at which the Storage Intelligence Config resource is last updated.
  late final Output<String> updateTime;

  ControlFolderIntelligenceConfig(
    String name, {
    ControlFolderIntelligenceConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:storage/controlFolderIntelligenceConfig:ControlFolderIntelligenceConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.editionConfig = registerOutput<String>('editionConfig');
    this.effectiveIntelligenceConfigs = registerOutput<
            List<ControlFolderIntelligenceConfigEffectiveIntelligenceConfig>>(
        'effectiveIntelligenceConfigs');
    this.filter =
        registerOutput<ControlFolderIntelligenceConfigFilter?>('filter');
    this.name = registerOutput<String>('name');
    this.trialConfigs =
        registerOutput<List<ControlFolderIntelligenceConfigTrialConfig>>(
            'trialConfigs');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
