// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for NatAddress.
class NatAddressArgs {
  /// Flag that specifies whether the reserved NAT address should be activate.
  final Input<bool>? activate;

  /// The Apigee instance associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/instances/{{instance_name}}`.
  final Input<String> instanceId;

  /// Resource ID of the NAT address.
  final Input<String>? name;

  NatAddressArgs({
    this.activate,
    required this.instanceId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activateValue = activate;
    if (activateValue != null) {
      map['activate'] = activateValue;
    }
    map['instanceId'] = instanceId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory NatAddressArgs.fromMap(Map<String, dynamic> map) {
    return NatAddressArgs(
      activate: Input.asOptionalInput<bool>(map['activate']),
      instanceId: Input.asInput<String>(map['instanceId']),
      name: Input.asOptionalInput<String>(map['name']),
    );
  }
}
