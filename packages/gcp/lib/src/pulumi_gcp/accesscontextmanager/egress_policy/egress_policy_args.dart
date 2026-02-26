// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for EgressPolicy.
class EgressPolicyArgs {
  /// The name of the Service Perimeter to add this resource to.
  final Input<String> egressPolicyName;

  /// A GCP resource that is inside of the service perimeter.
  final Input<String> resource;

  EgressPolicyArgs({
    required this.egressPolicyName,
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['egressPolicyName'] = egressPolicyName;
    map['resource'] = resource;
    return map;
  }

  factory EgressPolicyArgs.fromMap(Map<String, dynamic> map) {
    return EgressPolicyArgs(
      egressPolicyName: Input.asInput<String>(map['egressPolicyName']),
      resource: Input.asInput<String>(map['resource']),
    );
  }
}
