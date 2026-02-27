// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getNetworkPolicy.
class GetNetworkPolicyArgs {
  final Input<String> location;
  final Input<String> networkPolicyId;
  final Input<String>? project;

  GetNetworkPolicyArgs({
    required this.location,
    required this.networkPolicyId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['networkPolicyId'] = networkPolicyId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetNetworkPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkPolicyArgs(
      location: Input.asInput<String>(map['location']),
      networkPolicyId: Input.asInput<String>(map['networkPolicyId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
