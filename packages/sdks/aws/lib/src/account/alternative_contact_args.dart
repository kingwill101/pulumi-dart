// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_account_alternative_contact_alternative_contact_args_doc}
/// The set of arguments for AlternativeContact.
/// {@endtemplate}
/// {@macro pulumi_account_alternative_contact_alternative_contact_args_doc}
class AlternativeContactArgs {
  /// ID of the target account when managing member accounts. Will manage current user's account by default if omitted.
  final pulumi.Input<String>? accountId;
  /// Type of the alternate contact. Allowed values are: `BILLING`, `OPERATIONS`, `SECURITY`.
  final pulumi.Input<String> alternateContactType;
  /// An email address for the alternate contact.
  final pulumi.Input<String> emailAddress;
  /// Name of the alternate contact.
  final pulumi.Input<String>? name;
  /// Phone number for the alternate contact.
  final pulumi.Input<String> phoneNumber;
  /// Title for the alternate contact.
  final pulumi.Input<String> title;

  /// Creates a new [AlternativeContactArgs].
  /// [accountId] ID of the target account when managing member accounts. Will manage current user's account by default if omitted.
  /// [alternateContactType] Type of the alternate contact. Allowed values are: `BILLING`, `OPERATIONS`, `SECURITY`.
  /// [emailAddress] An email address for the alternate contact.
  /// [name] Name of the alternate contact.
  /// [phoneNumber] Phone number for the alternate contact.
  /// [title] Title for the alternate contact.
  const AlternativeContactArgs({
    this.accountId,
    required this.alternateContactType,
    required this.emailAddress,
    this.name,
    required this.phoneNumber,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'alternateContactType': alternateContactType,
      'emailAddress': emailAddress,
      'name': ?name,
      'phoneNumber': phoneNumber,
      'title': title,
    };
  }

  factory AlternativeContactArgs.fromMap(Map<String, dynamic> map) {
    return AlternativeContactArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      alternateContactType: pulumi.Input.fromValue(map['alternateContactType'] as String),
      emailAddress: pulumi.Input.fromValue(map['emailAddress'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phoneNumber: pulumi.Input.fromValue(map['phoneNumber'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}

