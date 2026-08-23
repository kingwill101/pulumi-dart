// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_communication_suppression_list_address_args_doc}
/// The set of arguments for SuppressionListAddress.
/// {@endtemplate}
/// {@macro pulumi_communication_suppression_list_address_args_doc}
class SuppressionListAddressArgs {
  /// The id of the address in a suppression list.
  final pulumi.Input<String>? addressId;
  /// The name of the Domains resource.
  final pulumi.Input<String> domainName;
  /// Email address of the recipient.
  final pulumi.Input<String> email;
  /// The name of the EmailService resource.
  final pulumi.Input<String> emailServiceName;
  /// The first name of the email recipient.
  final pulumi.Input<String>? firstName;
  /// The last name of the email recipient.
  final pulumi.Input<String>? lastName;
  /// An optional property to provide contextual notes or a description for an address.
  final pulumi.Input<String>? notes;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the suppression list.
  final pulumi.Input<String> suppressionListName;

  /// Creates a new [SuppressionListAddressArgs].
  /// [addressId] The id of the address in a suppression list.
  /// [domainName] The name of the Domains resource.
  /// [email] Email address of the recipient.
  /// [emailServiceName] The name of the EmailService resource.
  /// [firstName] The first name of the email recipient.
  /// [lastName] The last name of the email recipient.
  /// [notes] An optional property to provide contextual notes or a description for an address.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [suppressionListName] The name of the suppression list.
  const SuppressionListAddressArgs({
    this.addressId,
    required this.domainName,
    required this.email,
    required this.emailServiceName,
    this.firstName,
    this.lastName,
    this.notes,
    required this.resourceGroupName,
    required this.suppressionListName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressId': ?addressId,
      'domainName': domainName,
      'email': email,
      'emailServiceName': emailServiceName,
      'firstName': ?firstName,
      'lastName': ?lastName,
      'notes': ?notes,
      'resourceGroupName': resourceGroupName,
      'suppressionListName': suppressionListName,
    };
  }

  factory SuppressionListAddressArgs.fromMap(Map<String, dynamic> map) {
    return SuppressionListAddressArgs(
      addressId: (() { final guardedValue = map['addressId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      email: pulumi.Input.fromValue(map['email'] as String),
      emailServiceName: pulumi.Input.fromValue(map['emailServiceName'] as String),
      firstName: (() { final guardedValue = map['firstName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastName: (() { final guardedValue = map['lastName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notes: (() { final guardedValue = map['notes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      suppressionListName: pulumi.Input.fromValue(map['suppressionListName'] as String),
    );
  }
}
