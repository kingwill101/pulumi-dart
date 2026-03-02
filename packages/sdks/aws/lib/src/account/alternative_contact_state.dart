// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AlternativeContact resources.
class AlternativeContactState {
  /// ID of the target account when managing member accounts. Will manage current user's account by default if omitted.
  final pulumi.Input<String>? accountId;
  /// Type of the alternate contact. Allowed values are: `BILLING`, `OPERATIONS`, `SECURITY`.
  final pulumi.Input<String>? alternateContactType;
  /// An email address for the alternate contact.
  final pulumi.Input<String>? emailAddress;
  /// Name of the alternate contact.
  final pulumi.Input<String>? name;
  /// Phone number for the alternate contact.
  final pulumi.Input<String>? phoneNumber;
  /// Title for the alternate contact.
  final pulumi.Input<String>? title;

  /// Creates a new [AlternativeContactState].
  /// [accountId] ID of the target account when managing member accounts. Will manage current user's account by default if omitted.
  /// [alternateContactType] Type of the alternate contact. Allowed values are: `BILLING`, `OPERATIONS`, `SECURITY`.
  /// [emailAddress] An email address for the alternate contact.
  /// [name] Name of the alternate contact.
  /// [phoneNumber] Phone number for the alternate contact.
  /// [title] Title for the alternate contact.
  AlternativeContactState({
    this.accountId,
    this.alternateContactType,
    this.emailAddress,
    this.name,
    this.phoneNumber,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'alternateContactType': ?alternateContactType,
      'emailAddress': ?emailAddress,
      'name': ?name,
      'phoneNumber': ?phoneNumber,
      'title': ?title,
    };
  }

  factory AlternativeContactState.fromMap(Map<String, dynamic> map) {
    return AlternativeContactState(
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
      alternateContactType: map['alternateContactType'] == null ? null : (map['alternateContactType'] as String).input(),
      emailAddress: map['emailAddress'] == null ? null : (map['emailAddress'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      phoneNumber: map['phoneNumber'] == null ? null : (map['phoneNumber'] as String).input(),
      title: map['title'] == null ? null : (map['title'] as String).input(),
    );
  }
}

