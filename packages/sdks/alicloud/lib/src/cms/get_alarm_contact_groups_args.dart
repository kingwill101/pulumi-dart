// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cms_get_alarm_contact_groups_get_alarm_contact_groups_args_doc}
/// Arguments for getAlarmContactGroups.
/// {@endtemplate}
/// {@macro pulumi_cms_get_alarm_contact_groups_get_alarm_contact_groups_args_doc}
class GetAlarmContactGroupsArgs {
  /// A list of Alarm Contact Group IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Alarm Contact Group name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetAlarmContactGroupsArgs].
  /// [ids] A list of Alarm Contact Group IDs.
  /// [nameRegex] A regex string to filter results by Alarm Contact Group name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  const GetAlarmContactGroupsArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetAlarmContactGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetAlarmContactGroupsArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

