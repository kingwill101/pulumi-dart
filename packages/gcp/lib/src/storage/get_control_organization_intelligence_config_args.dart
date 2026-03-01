// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_control_organization_intelligence_config_get_control_organization_intelligence_config_args_doc}
/// Arguments for getControlOrganizationIntelligenceConfig.
/// {@endtemplate}
/// {@macro pulumi_storage_get_control_organization_intelligence_config_get_control_organization_intelligence_config_args_doc}
class GetControlOrganizationIntelligenceConfigArgs {
  /// The id of GCP organization.
  final pulumi.Input<String> name;

  /// Creates a new [GetControlOrganizationIntelligenceConfigArgs].
  /// [name] The id of GCP organization.
  GetControlOrganizationIntelligenceConfigArgs({required String name})
    : name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory GetControlOrganizationIntelligenceConfigArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetControlOrganizationIntelligenceConfigArgs(
      name: map['name'] as String,
    );
  }
}
