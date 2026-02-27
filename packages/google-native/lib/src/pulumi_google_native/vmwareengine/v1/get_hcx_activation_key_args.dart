// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getHcxActivationKey.
class GetHcxActivationKeyArgs {
  final pulumi.Input<String> hcxActivationKeyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> privateCloudId;
  final pulumi.Input<String>? project;

  GetHcxActivationKeyArgs({
    required this.hcxActivationKeyId,
    required this.location,
    required this.privateCloudId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hcxActivationKeyId'] = hcxActivationKeyId;
    map['location'] = location;
    map['privateCloudId'] = privateCloudId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetHcxActivationKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetHcxActivationKeyArgs(
      hcxActivationKeyId:
          pulumi.Input.asInput<String>(map['hcxActivationKeyId']),
      location: pulumi.Input.asInput<String>(map['location']),
      privateCloudId: pulumi.Input.asInput<String>(map['privateCloudId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
