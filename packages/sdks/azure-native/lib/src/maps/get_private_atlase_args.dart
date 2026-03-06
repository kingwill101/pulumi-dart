// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_maps_get_private_atlase_args_doc}
/// Arguments for getPrivateAtlase.
/// {@endtemplate}
/// {@macro pulumi_maps_get_private_atlase_args_doc}
class GetPrivateAtlaseArgs {
  /// The name of the Maps Account.
  final pulumi.Input<String> accountName;
  /// The name of the Private Atlas instance.
  final pulumi.Input<String> privateAtlasName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPrivateAtlaseArgs].
  /// [accountName] The name of the Maps Account.
  /// [privateAtlasName] The name of the Private Atlas instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetPrivateAtlaseArgs({
    required this.accountName,
    required this.privateAtlasName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'privateAtlasName': privateAtlasName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPrivateAtlaseArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateAtlaseArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      privateAtlasName: pulumi.Input.fromValue(map['privateAtlasName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

