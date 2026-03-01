// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_organization_intelligence_config_filter.dart';

/// {@template pulumi_storage_control_organization_intelligence_config_control_organization_intelligence_config_args_doc}
/// The set of arguments for ControlOrganizationIntelligenceConfig.
/// {@endtemplate}
/// {@macro pulumi_storage_control_organization_intelligence_config_control_organization_intelligence_config_args_doc}
class ControlOrganizationIntelligenceConfigArgs {
  /// Edition configuration of the Storage Intelligence resource. Valid values are INHERIT, DISABLED, TRIAL and STANDARD.
  final pulumi.Input<String>? editionConfig;
  /// Filter over location and bucket using include or exclude semantics. Resources that match the include or exclude filter are exclusively included or excluded from the Storage Intelligence plan.
  /// Structure is documented below.
  final pulumi.Input<ControlOrganizationIntelligenceConfigFilter>? filter;
  /// Identifier of the GCP Organization. For GCP org, this field should be organization number.
  final pulumi.Input<String>? name;

  /// Creates a new [ControlOrganizationIntelligenceConfigArgs].
  /// [editionConfig] Edition configuration of the Storage Intelligence resource. Valid values are INHERIT, DISABLED, TRIAL and STANDARD.
  /// [filter] Filter over location and bucket using include or exclude semantics. Resources that match the include or exclude filter are exclusively included or excluded from the Storage Intelligence plan.
  /// [name] Identifier of the GCP Organization. For GCP org, this field should be organization number.
  ControlOrganizationIntelligenceConfigArgs({
    String? editionConfig,
    ControlOrganizationIntelligenceConfigFilter? filter,
    String? name,
  }) :
      editionConfig = pulumi.Input.asOptionalInput<String>(editionConfig),
      filter = pulumi.Input.asOptionalInput<ControlOrganizationIntelligenceConfigFilter>(filter),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'editionConfig': ?editionConfig,
      'filter': ?pulumi.Input.mapOptionalInputValue<ControlOrganizationIntelligenceConfigFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory ControlOrganizationIntelligenceConfigArgs.fromMap(Map<String, dynamic> map) {
    return ControlOrganizationIntelligenceConfigArgs(
      editionConfig: map['editionConfig'] == null ? null : map['editionConfig'] as String,
      filter: map['filter'] == null ? null : ControlOrganizationIntelligenceConfigFilter.fromMap((map['filter'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

