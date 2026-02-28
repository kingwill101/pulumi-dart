// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_nat_address_args_doc}
/// Arguments for getNatAddress.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_nat_address_args_doc}
class GetNatAddressArgs {
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> natAddressId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetNatAddressArgs].
  /// [instanceId] Required.
  /// [natAddressId] Required.
  /// [organizationId] Required.
  GetNatAddressArgs({
    required String instanceId,
    required String natAddressId,
    required String organizationId,
  })  : instanceId = pulumi.Input.asInput<String>(instanceId),
        natAddressId = pulumi.Input.asInput<String>(natAddressId),
        organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    map['natAddressId'] = natAddressId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetNatAddressArgs.fromMap(Map<String, dynamic> map) {
    return GetNatAddressArgs(
      instanceId: map['instanceId'] as String,
      natAddressId: map['natAddressId'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
