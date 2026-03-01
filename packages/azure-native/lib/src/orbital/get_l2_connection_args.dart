// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_orbital_get_l2_connection_args_doc}
/// Arguments for getL2Connection.
/// {@endtemplate}
/// {@macro pulumi_orbital_get_l2_connection_args_doc}
class GetL2ConnectionArgs {
  /// L2 Connection name.
  final pulumi.Input<String> l2ConnectionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetL2ConnectionArgs].
  /// [l2ConnectionName] L2 Connection name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetL2ConnectionArgs({
    required String l2ConnectionName,
    required String resourceGroupName,
  }) :
      l2ConnectionName = pulumi.Input.asInput<String>(l2ConnectionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'l2ConnectionName': l2ConnectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetL2ConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetL2ConnectionArgs(
      l2ConnectionName: map['l2ConnectionName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

