// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNatAddress.
class GetNatAddressArgs {
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> natAddressId;
  final pulumi.Input<String> organizationId;

  GetNatAddressArgs({
    required this.instanceId,
    required this.natAddressId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    map['natAddressId'] = natAddressId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetNatAddressArgs.fromMap(Map<String, dynamic> map) {
    return GetNatAddressArgs(
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      natAddressId: pulumi.Input.asInput<String>(map['natAddressId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
