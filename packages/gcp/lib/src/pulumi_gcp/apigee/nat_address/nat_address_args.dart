// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for NatAddress.
class NatAddressArgs {
  /// Flag that specifies whether the reserved NAT address should be activate.
  final pulumi.Input<bool>? activate;

  /// The Apigee instance associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/instances/{{instance_name}}`.
  final pulumi.Input<String> instanceId;

  /// Resource ID of the NAT address.
  final pulumi.Input<String>? name;

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
      activate: pulumi.Input.asOptionalInput<bool>(map['activate']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
    );
  }
}
