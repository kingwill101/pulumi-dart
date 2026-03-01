// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cms_get_alarm_contacts_get_alarm_contacts_args_doc}
/// Arguments for getAlarmContacts.
/// {@endtemplate}
/// {@macro pulumi_cms_get_alarm_contacts_get_alarm_contacts_args_doc}
class GetAlarmContactsArgs {
  /// The alarm notification method. Alarm notifications can be sent by using `Email` or `DingWebHook`.
  final pulumi.Input<String>? chanelType;
  /// The alarm notification target.
  final pulumi.Input<String>? chanelValue;
  /// A list of alarm contact IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by alarm contact name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  ///
  /// > **NOTE:** Specify at least one of the following alarm notification targets: phone number, email address, webhook URL of the DingTalk chatbot, and TradeManager ID.
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetAlarmContactsArgs].
  /// [chanelType] The alarm notification method. Alarm notifications can be sent by using `Email` or `DingWebHook`.
  /// [chanelValue] The alarm notification target.
  /// [ids] A list of alarm contact IDs.
  /// [nameRegex] A regex string to filter results by alarm contact name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetAlarmContactsArgs({
    pulumi.Output<String>? chanelType,
    pulumi.Output<String>? chanelValue,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
  }) :
      chanelType = pulumi.Input.asOptionalInput<String>(chanelType),
      chanelValue = pulumi.Input.asOptionalInput<String>(chanelValue),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chanelType': ?chanelType,
      'chanelValue': ?chanelValue,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetAlarmContactsArgs.fromMap(Map<String, dynamic> map) {
    return GetAlarmContactsArgs(
      chanelType: map['chanelType'] == null ? null : pulumi.Output.create<String>(map['chanelType'] as String),
      chanelValue: map['chanelValue'] == null ? null : pulumi.Output.create<String>(map['chanelValue'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

