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
///
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
