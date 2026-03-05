// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_arms_get_alert_contacts_get_alert_contacts_args_doc}
/// Arguments for getAlertContacts.
/// {@endtemplate}
/// {@macro pulumi_arms_get_alert_contacts_get_alert_contacts_args_doc}
class GetAlertContactsArgs {
  /// The name of the alert contact.
  final pulumi.Input<String>? alertContactName;
  /// The email address of the alert contact.
  final pulumi.Input<String>? email;
  /// A list of Alert Contact IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Alert Contact name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The mobile number of the alert contact.
  final pulumi.Input<String>? phoneNum;

  /// Creates a new [GetAlertContactsArgs].
  /// [alertContactName] The name of the alert contact.
  /// [email] The email address of the alert contact.
  /// [ids] A list of Alert Contact IDs.
  /// [nameRegex] A regex string to filter results by Alert Contact name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [phoneNum] The mobile number of the alert contact.
  GetAlertContactsArgs({
    this.alertContactName,
    this.email,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.phoneNum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertContactName': ?alertContactName,
      'email': ?email,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'phoneNum': ?phoneNum,
    };
  }

  factory GetAlertContactsArgs.fromMap(Map<String, dynamic> map) {
    return GetAlertContactsArgs(
      alertContactName: (() { final guardedValue = map['alertContactName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phoneNum: (() { final guardedValue = map['phoneNum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

