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
    this.keyGroupName,
    this.keyReferences,
    required this.profileName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyGroupName': ?keyGroupName,
      'keyReferences':
          ?pulumi.Input.mapOptionalInputValue<
            List<ResourceReference>,
            List<Map<String, dynamic>>
          >(
            keyReferences,
            (value) =>
                pulumi.Input.encodeList<
                  ResourceReference,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory KeyGroupArgs.fromMap(Map<String, dynamic> map) {
    return KeyGroupArgs(
      keyGroupName: (() {
        final guardedValue = map['keyGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyReferences: (() {
        final guardedValue = map['keyReferences'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ResourceReference>(
            guardedValue,
            (value) => ResourceReference.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      profileName: pulumi.Input.fromValue(map['profileName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
