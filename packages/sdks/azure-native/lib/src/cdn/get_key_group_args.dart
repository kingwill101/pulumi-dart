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
    required pulumi.Output<String> keyGroupName,
    required pulumi.Output<String> profileName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      keyGroupName = pulumi.Input.asInput<String>(keyGroupName),
      profileName = pulumi.Input.asInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyGroupName': keyGroupName,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetKeyGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyGroupArgs(
      keyGroupName: pulumi.Output.create<String>(map['keyGroupName'] as String),
      profileName: pulumi.Output.create<String>(map['profileName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

