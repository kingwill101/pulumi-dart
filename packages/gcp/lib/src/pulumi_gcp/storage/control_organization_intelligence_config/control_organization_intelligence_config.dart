import 'package:pulumi/pulumi.dart';
import '../control_organization_intelligence_config_effective_intelligence_config/control_organization_intelligence_config_effective_intelligence_config.dart';
import '../control_organization_intelligence_config_filter/control_organization_intelligence_config_filter.dart';
import '../control_organization_intelligence_config_trial_config/control_organization_intelligence_config_trial_config.dart';
import 'control_organization_intelligence_config_args.dart';

/// ## Example Usage
///
/// ### Storage Control Organization Intelligence Config Basic
///
///
///
///
/// ## Import
///
/// OrganizationIntelligenceConfig can be imported using any of these accepted formats:
///
/// * `organizations/{{name}}/locations/global/intelligenceConfig`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, OrganizationIntelligenceConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:storage/controlOrganizationIntelligenceConfig:ControlOrganizationIntelligenceConfig default organizations/{{name}}/locations/global/intelligenceConfig
/// ```
///
/// ```sh
/// $ pulumi import gcp:storage/controlOrganizationIntelligenceConfig:ControlOrganizationIntelligenceConfig default {{name}}
/// ```
class ControlOrganizationIntelligenceConfig extends CustomResource {
  /// Edition configuration of the Storage Intelligence resource. Valid values are INHERIT, DISABLED, TRIAL and STANDARD.
  late final Output<String> editionConfig;

  /// The Intelligence config that is effective for the resource.
  /// Structure is documented below.
  late final Output<
          List<
              ControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig>>
      effectiveIntelligenceConfigs;

  /// Filter over location and bucket using include or exclude semantics. Resources that match the include or exclude filter are exclusively included or excluded from the Storage Intelligence plan.
  /// Structure is documented below.
  late final Output<ControlOrganizationIntelligenceConfigFilter?> filter;

  /// Identifier of the GCP Organization. For GCP org, this field should be organization number.
  late final Output<String> name;

  /// The trial configuration of the Storage Intelligence resource.
  /// Structure is documented below.
  late final Output<List<ControlOrganizationIntelligenceConfigTrialConfig>>
      trialConfigs;

  /// The time at which the Storage Intelligence Config resource is last updated.
  late final Output<String> updateTime;

  ControlOrganizationIntelligenceConfig(
    String name, {
    ControlOrganizationIntelligenceConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:storage/controlOrganizationIntelligenceConfig:ControlOrganizationIntelligenceConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.editionConfig = registerOutput<String>('editionConfig');
    this.effectiveIntelligenceConfigs = registerOutput<
            List<
                ControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig>>(
        'effectiveIntelligenceConfigs');
    this.filter =
        registerOutput<ControlOrganizationIntelligenceConfigFilter?>('filter');
    this.name = registerOutput<String>('name');
    this.trialConfigs =
        registerOutput<List<ControlOrganizationIntelligenceConfigTrialConfig>>(
            'trialConfigs');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
