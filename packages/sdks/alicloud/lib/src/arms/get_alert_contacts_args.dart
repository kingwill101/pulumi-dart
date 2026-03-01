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
    pulumi.Output<String>? alertContactName,
    pulumi.Output<String>? email,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? phoneNum,
  }) :
      alertContactName = pulumi.Input.asOptionalInput<String>(alertContactName),
      email = pulumi.Input.asOptionalInput<String>(email),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      phoneNum = pulumi.Input.asOptionalInput<String>(phoneNum);

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
      alertContactName: map['alertContactName'] == null ? null : pulumi.Output.create<String>(map['alertContactName'] as String),
      email: map['email'] == null ? null : pulumi.Output.create<String>(map['email'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      phoneNum: map['phoneNum'] == null ? null : pulumi.Output.create<String>(map['phoneNum'] as String),
    );
  }
}

