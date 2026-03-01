// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_nat_address_nat_address_args_doc}
/// The set of arguments for NatAddress.
/// {@endtemplate}
/// {@macro pulumi_apigee_nat_address_nat_address_args_doc}
class NatAddressArgs {
  /// Flag that specifies whether the reserved NAT address should be activate.
  final pulumi.Input<bool>? activate;

  /// The Apigee instance associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/instances/{{instance_name}}`.
  final pulumi.Input<String> instanceId;

  /// Resource ID of the NAT address.
  final pulumi.Input<String>? name;

  /// Creates a new [NatAddressArgs].
  /// [activate] Flag that specifies whether the reserved NAT address should be activate.
  /// [instanceId] The Apigee instance associated with the Apigee environment,
  /// [name] Resource ID of the NAT address.
  NatAddressArgs({bool? activate, required String instanceId, String? name})
    : activate = pulumi.Input.asOptionalInput<bool>(activate),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activate': ?activate,
      'instanceId': instanceId,
      'name': ?name,
    };
  }

  factory NatAddressArgs.fromMap(Map<String, dynamic> map) {
    return NatAddressArgs(
      activate: map['activate'] == null ? null : map['activate'] as bool,
      instanceId: map['instanceId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
