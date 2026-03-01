// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_orbital_get_contact_args_doc}
/// Arguments for getContact.
/// {@endtemplate}
/// {@macro pulumi_orbital_get_contact_args_doc}
class GetContactArgs {
  /// Contact name.
  final pulumi.Input<String> contactName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Spacecraft ID.
  final pulumi.Input<String> spacecraftName;

  /// Creates a new [GetContactArgs].
  /// [contactName] Contact name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [spacecraftName] Spacecraft ID.
  GetContactArgs({
    required String contactName,
    required String resourceGroupName,
    required String spacecraftName,
  }) :
      contactName = pulumi.Input.asInput<String>(contactName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      spacecraftName = pulumi.Input.asInput<String>(spacecraftName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactName': contactName,
      'resourceGroupName': resourceGroupName,
      'spacecraftName': spacecraftName,
    };
  }

  factory GetContactArgs.fromMap(Map<String, dynamic> map) {
    return GetContactArgs(
      contactName: map['contactName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      spacecraftName: map['spacecraftName'] as String,
    );
  }
}

