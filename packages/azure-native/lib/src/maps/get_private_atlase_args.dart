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
  GetPrivateAtlaseArgs({
    required String accountName,
    required String privateAtlasName,
    required String resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      privateAtlasName = pulumi.Input.asInput<String>(privateAtlasName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'privateAtlasName': privateAtlasName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPrivateAtlaseArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateAtlaseArgs(
      accountName: map['accountName'] as String,
      privateAtlasName: map['privateAtlasName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

