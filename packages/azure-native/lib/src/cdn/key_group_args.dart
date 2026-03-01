// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference.dart';

/// {@template pulumi_cdn_key_group_args_doc}
/// The set of arguments for KeyGroup.
/// {@endtemplate}
/// {@macro pulumi_cdn_key_group_args_doc}
class KeyGroupArgs {
  /// Name of the KeyGroup under the profile.
  final pulumi.Input<String>? keyGroupName;
  /// Names of UrlSigningKey type secret objects
  final pulumi.Input<List<ResourceReference>>? keyReferences;
  /// Name of the Azure Front Door Standard or Azure Front Door Premium which is unique within the resource group.
  final pulumi.Input<String> profileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [KeyGroupArgs].
  /// [keyGroupName] Name of the KeyGroup under the profile.
  /// [keyReferences] Names of UrlSigningKey type secret objects
  /// [profileName] Name of the Azure Front Door Standard or Azure Front Door Premium which is unique within the resource group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  KeyGroupArgs({
    String? keyGroupName,
    List<ResourceReference>? keyReferences,
    required String profileName,
    required String resourceGroupName,
  }) :
      keyGroupName = pulumi.Input.asOptionalInput<String>(keyGroupName),
      keyReferences = pulumi.Input.asOptionalInput<List<ResourceReference>>(keyReferences),
      profileName = pulumi.Input.asInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyGroupName': ?keyGroupName,
      'keyReferences': ?pulumi.Input.mapOptionalInputValue<List<ResourceReference>, List<Map<String, dynamic>>>(keyReferences, (value) => pulumi.Input.encodeList<ResourceReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory KeyGroupArgs.fromMap(Map<String, dynamic> map) {
    return KeyGroupArgs(
      keyGroupName: map['keyGroupName'] == null ? null : map['keyGroupName'] as String,
      keyReferences: map['keyReferences'] == null ? null : pulumi.Input.decodeList<ResourceReference>(map['keyReferences'], (value) => ResourceReference.fromMap((value as Map).cast<String, dynamic>())),
      profileName: map['profileName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

