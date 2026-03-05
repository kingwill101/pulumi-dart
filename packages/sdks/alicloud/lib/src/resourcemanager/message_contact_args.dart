// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_message_contact_message_contact_args_doc}
/// The set of arguments for MessageContact.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_message_contact_message_contact_args_doc}
class MessageContactArgs {
  /// The email address of the contact.
  /// After you specify an email address, you need to call SendEmailVerificationForMessageContact to send verification information to the email address. After the verification is passed, the email address takes effect.
  final pulumi.Input<String> emailAddress;
  /// The name of the contact.
  /// The name must be unique in your resource directory.
  /// The name must be 2 to 12 characters in length and can contain only letters.
  final pulumi.Input<String> messageContactName;
  /// The types of messages received by the contact.
  final pulumi.Input<List<String>> messageTypes;
  /// The mobile phone number of the contact.
  ///
  /// Specify the mobile phone number in the `-` format.
  ///
  /// &gt; **NOTE:**  Only mobile phone numbers in the `86-` format in the Chinese mainland are supported.
  ///
  /// After you specify a mobile phone number, you need to call SendPhoneVerificationForMessageContact to send verification information to the mobile phone number. After the verification is passed, the mobile phone number takes effect.
  final pulumi.Input<String>? phoneNumber;
  /// The job title of the contact.Valid values:
  /// - FinanceDirector
  /// - TechnicalDirector
  /// - MaintenanceDirector
  /// - CEO
  /// - ProjectDirector
  /// - Other
  final pulumi.Input<String> title;

  /// Creates a new [MessageContactArgs].
  /// [emailAddress] The email address of the contact.
  /// [messageContactName] The name of the contact.
  /// [messageTypes] The types of messages received by the contact.
  /// [phoneNumber] The mobile phone number of the contact.
  /// [title] The job title of the contact.Valid values:
  MessageContactArgs({
    required this.emailAddress,
    required this.messageContactName,
    required this.messageTypes,
    this.phoneNumber,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailAddress': emailAddress,
      'messageContactName': messageContactName,
      'messageTypes': messageTypes,
      'phoneNumber': ?phoneNumber,
      'title': title,
    };
  }

  factory MessageContactArgs.fromMap(Map<String, dynamic> map) {
    return MessageContactArgs(
      emailAddress: pulumi.Input.fromValue(map['emailAddress'] as String),
      messageContactName: pulumi.Input.fromValue(map['messageContactName'] as String),
      messageTypes: pulumi.Input.fromValue((map['messageTypes'] as List).cast<String>()),
      phoneNumber: (() { final guardedValue = map['phoneNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}

