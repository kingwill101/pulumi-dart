// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AlternativeContact.
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

  AlternativeContactArgs({
    this.accountId,
    required this.alternateContactType,
    required this.emailAddress,
    this.name,
    required this.phoneNumber,
    required this.title,
  });

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
      accountId: pulumi.Input.asOptionalInput<String>(map['accountId']),
      alternateContactType:
          pulumi.Input.asInput<String>(map['alternateContactType']),
      emailAddress: pulumi.Input.asInput<String>(map['emailAddress']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      phoneNumber: pulumi.Input.asInput<String>(map['phoneNumber']),
      title: pulumi.Input.asInput<String>(map['title']),
    );
  }
}
