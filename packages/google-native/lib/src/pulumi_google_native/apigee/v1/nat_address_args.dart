// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for NatAddress.
class NatAddressArgs {
  final Input<String> instanceId;

  /// Resource ID of the NAT address.
  final Input<String>? name;
  final Input<String> organizationId;

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
      instanceId: Input.asInput<String>(map['instanceId']),
      name: Input.asOptionalInput<String>(map['name']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
