// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_attached_network_get_attached_network_args_doc}
/// Arguments for getAttachedNetwork.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_attached_network_get_attached_network_args_doc}
class GetAttachedNetworkArgs {
  /// The ID of the associated Dev Center.
  final pulumi.Input<String> devCenterId;
  /// The name of this Dev Center Attached Network.
  final pulumi.Input<String> name;

  /// Creates a new [GetAttachedNetworkArgs].
  /// [devCenterId] The ID of the associated Dev Center.
  /// [name] The name of this Dev Center Attached Network.
  GetAttachedNetworkArgs({
    required String devCenterId,
    required String name,
  }) :
      devCenterId = pulumi.Input.asInput<String>(devCenterId),
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterId': devCenterId,
      'name': name,
    };
  }

  factory GetAttachedNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetAttachedNetworkArgs(
      devCenterId: map['devCenterId'] as String,
      name: map['name'] as String,
    );
  }
}

