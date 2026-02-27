// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for NatAddress.
class NatAddressArgs {
  final pulumi.Input<String> instanceId;

  /// Resource ID of the NAT address.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  NatAddressArgs({
    required this.instanceId,
    this.name,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['organizationId'] = organizationId;
    return map;
  }

  factory NatAddressArgs.fromMap(Map<String, dynamic> map) {
    return NatAddressArgs(
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
