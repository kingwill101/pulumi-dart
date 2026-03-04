// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MessageContact resources.
class MessageContactState {
  /// The time when the contact was created.
  final pulumi.Input<String>? createTime;

  /// The email address of the contact.
  /// After you specify an email address, you need to call SendEmailVerificationForMessageContact to send verification information to the email address. After the verification is passed, the email address takes effect.
  final pulumi.Input<String>? emailAddress;

  /// The name of the contact.
  /// The name must be unique in your resource directory.
  /// The name must be 2 to 12 characters in length and can contain only letters.
  final pulumi.Input<String>? messageContactName;

  /// The types of messages received by the contact.
  final pulumi.Input<List<String>>? messageTypes;

  /// The mobile phone number of the contact.
  ///
  /// Specify the mobile phone number in the `-` format.
  ///
  /// &gt; **NOTE:**  Only mobile phone numbers in the `86-` format in the Chinese mainland are supported.
  ///
  /// After you specify a mobile phone number, you need to call SendPhoneVerificationForMessageContact to send verification information to the mobile phone number. After the verification is passed, the mobile phone number takes effect.
  final pulumi.Input<String>? phoneNumber;

  /// The status of the contact.
  final pulumi.Input<String>? status;

  /// The job title of the contact.Valid values:
  /// - FinanceDirector
  /// - TechnicalDirector
  /// - MaintenanceDirector
  /// - CEO
  /// - ProjectDirector
  /// - Other
  final pulumi.Input<String>? title;

  /// Creates a new [MessageContactState].
  /// [createTime] The time when the contact was created.
  /// [emailAddress] The email address of the contact.
  /// [messageContactName] The name of the contact.
  /// [messageTypes] The types of messages received by the contact.
  /// [phoneNumber] The mobile phone number of the contact.
  /// [status] The status of the contact.
  /// [title] The job title of the contact.Valid values:
  MessageContactState({
    this.createTime,
    this.emailAddress,
    this.messageContactName,
    this.messageTypes,
    this.phoneNumber,
    this.status,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'emailAddress': ?emailAddress,
      'messageContactName': ?messageContactName,
      'messageTypes': ?messageTypes,
      'phoneNumber': ?phoneNumber,
      'status': ?status,
      'title': ?title,
    };
  }

  factory MessageContactState.fromMap(Map<String, dynamic> map) {
    return MessageContactState(
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      emailAddress: (() {
        final guardedValue = map['emailAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      messageContactName: (() {
        final guardedValue = map['messageContactName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      messageTypes: (() {
        final guardedValue = map['messageTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      phoneNumber: (() {
        final guardedValue = map['phoneNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      title: (() {
        final guardedValue = map['title'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
