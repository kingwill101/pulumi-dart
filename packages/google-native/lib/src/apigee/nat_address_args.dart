// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_nat_address_args_doc}
/// The set of arguments for NatAddress.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_nat_address_args_doc}
class NatAddressArgs {
  final pulumi.Input<String> instanceId;
  /// Resource ID of the NAT address.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  /// Creates a new [NatAddressArgs].
  /// [instanceId] Required.
  /// [name] Resource ID of the NAT address.
  /// [organizationId] Required.
  NatAddressArgs({
    required String instanceId,
    String? name,
    required String organizationId,
  }) :
      instanceId = pulumi.Input.asInput<String>(instanceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'name': ?name,
      'organizationId': organizationId,
    };
  }

  factory NatAddressArgs.fromMap(Map<String, dynamic> map) {
    return NatAddressArgs(
      instanceId: map['instanceId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}

