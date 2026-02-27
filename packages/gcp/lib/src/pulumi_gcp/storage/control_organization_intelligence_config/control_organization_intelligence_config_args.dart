// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../control_organization_intelligence_config_filter/control_organization_intelligence_config_filter.dart';

/// The set of arguments for ControlOrganizationIntelligenceConfig.
class ControlOrganizationIntelligenceConfigArgs {
  /// Edition configuration of the Storage Intelligence resource. Valid values are INHERIT, DISABLED, TRIAL and STANDARD.
  final pulumi.Input<String>? editionConfig;

  /// Filter over location and bucket using include or exclude semantics. Resources that match the include or exclude filter are exclusively included or excluded from the Storage Intelligence plan.
  /// Structure is documented below.
  final pulumi.Input<ControlOrganizationIntelligenceConfigFilter>? filter;

  /// Identifier of the GCP Organization. For GCP org, this field should be organization number.
  final pulumi.Input<String>? name;

  ControlOrganizationIntelligenceConfigArgs({
    this.editionConfig,
    this.filter,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final editionConfigValue = editionConfig;
    if (editionConfigValue != null) {
      map['editionConfig'] = editionConfigValue;
    }
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = pulumi.Input.mapOptionalInputValue<
          ControlOrganizationIntelligenceConfigFilter,
          Map<String, dynamic>>(filterValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory ControlOrganizationIntelligenceConfigArgs.fromMap(
      Map<String, dynamic> map) {
    return ControlOrganizationIntelligenceConfigArgs(
      editionConfig: pulumi.Input.asOptionalInput<String>(map['editionConfig']),
      filter: pulumi.Input.asOptionalInput<
          ControlOrganizationIntelligenceConfigFilter>(map['filter']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
    );
  }
}
