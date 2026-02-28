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
  AlternativeContactArgs({
    String? accountId,
    required String alternateContactType,
    required String emailAddress,
    String? name,
    required String phoneNumber,
    required String title,
  })  : accountId = pulumi.Input.asOptionalInput<String>(accountId),
        alternateContactType =
            pulumi.Input.asInput<String>(alternateContactType),
        emailAddress = pulumi.Input.asInput<String>(emailAddress),
        name = pulumi.Input.asOptionalInput<String>(name),
        phoneNumber = pulumi.Input.asInput<String>(phoneNumber),
        title = pulumi.Input.asInput<String>(title);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    map['alternateContactType'] = alternateContactType;
    map['emailAddress'] = emailAddress;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['phoneNumber'] = phoneNumber;
    map['title'] = title;
    return map;
  }

  factory AlternativeContactArgs.fromMap(Map<String, dynamic> map) {
    return AlternativeContactArgs(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      alternateContactType: map['alternateContactType'] as String,
      emailAddress: map['emailAddress'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      phoneNumber: map['phoneNumber'] as String,
      title: map['title'] as String,
    );
  }
}
