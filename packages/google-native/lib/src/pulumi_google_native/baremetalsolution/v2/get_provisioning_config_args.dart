// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getProvisioningConfig.
class GetProvisioningConfigArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> provisioningConfigId;

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
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      provisioningConfigId:
          pulumi.Input.asInput<String>(map['provisioningConfigId']),
    );
  }
}
