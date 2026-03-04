// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_key_group_args_doc}
/// Arguments for getKeyGroup.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_key_group_args_doc}
class GetKeyGroupArgs {
  /// Name of the KeyGroup under the profile.
  final pulumi.Input<String> keyGroupName;

  /// Name of the Azure Front Door Standard or Azure Front Door Premium which is unique within the resource group.
  final pulumi.Input<String> profileName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetKeyGroupArgs].
  /// [keyGroupName] Name of the KeyGroup under the profile.
  /// [profileName] Name of the Azure Front Door Standard or Azure Front Door Premium which is unique within the resource group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetKeyGroupArgs({
    required this.keyGroupName,
    required this.profileName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyGroupName': keyGroupName,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetKeyGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyGroupArgs(
      keyGroupName: pulumi.Input.fromValue(map['keyGroupName'] as String),
      profileName: pulumi.Input.fromValue(map['profileName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
