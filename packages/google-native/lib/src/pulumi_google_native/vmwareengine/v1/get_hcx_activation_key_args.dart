// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getHcxActivationKey.
class GetHcxActivationKeyArgs {
  final Input<String> hcxActivationKeyId;
  final Input<String> location;
  final Input<String> privateCloudId;
  final Input<String>? project;

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
      hcxActivationKeyId: Input.asInput<String>(map['hcxActivationKeyId']),
      location: Input.asInput<String>(map['location']),
      privateCloudId: Input.asInput<String>(map['privateCloudId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
