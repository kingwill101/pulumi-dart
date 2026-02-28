// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_baremetalsolution_v2_get_provisioning_config_args_doc}
/// Arguments for getProvisioningConfig.
/// {@endtemplate}
/// {@macro pulumi_baremetalsolution_v2_get_provisioning_config_args_doc}
class GetProvisioningConfigArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> provisioningConfigId;

  /// Creates a new [GetProvisioningConfigArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [provisioningConfigId] Required.
  GetProvisioningConfigArgs({
    required String location,
    String? project,
    required String provisioningConfigId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        provisioningConfigId =
            pulumi.Input.asInput<String>(provisioningConfigId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['provisioningConfigId'] = provisioningConfigId;
    return map;
  }

  factory GetProvisioningConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetProvisioningConfigArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      provisioningConfigId: map['provisioningConfigId'] as String,
    );
  }
}
