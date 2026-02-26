// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getNatAddress.
class GetNatAddressArgs {
  final Input<String> instanceId;
  final Input<String> natAddressId;
  final Input<String> organizationId;

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
      instanceId: Input.asInput<String>(map['instanceId']),
      natAddressId: Input.asInput<String>(map['natAddressId']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
