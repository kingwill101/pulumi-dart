// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getProvisioningConfig.
class GetProvisioningConfigArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> provisioningConfigId;

  GetProvisioningConfigArgs({
    required this.location,
    this.project,
    required this.provisioningConfigId,
  });

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
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      provisioningConfigId: Input.asInput<String>(map['provisioningConfigId']),
    );
  }
}
