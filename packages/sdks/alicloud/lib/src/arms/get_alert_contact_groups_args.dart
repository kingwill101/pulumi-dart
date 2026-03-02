// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_arms_get_alert_contact_groups_get_alert_contact_groups_args_doc}
/// Arguments for getAlertContactGroups.
/// {@endtemplate}
/// {@macro pulumi_arms_get_alert_contact_groups_get_alert_contact_groups_args_doc}
class GetAlertContactGroupsArgs {
  /// The name of the resource.
  final pulumi.Input<String>? alertContactGroupName;
  /// The contact id.
  final pulumi.Input<String>? contactId;
  /// The contact name.
  final pulumi.Input<String>? contactName;
  /// A list of Alert Contact Group IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Alert Contact Group name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetAlertContactGroupsArgs].
  /// [alertContactGroupName] The name of the resource.
  /// [contactId] The contact id.
  /// [contactName] The contact name.
  /// [ids] A list of Alert Contact Group IDs.
  /// [nameRegex] A regex string to filter results by Alert Contact Group name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetAlertContactGroupsArgs({
    this.alertContactGroupName,
    this.contactId,
    this.contactName,
    this.ids,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertContactGroupName': ?alertContactGroupName,
      'contactId': ?contactId,
      'contactName': ?contactName,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetAlertContactGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetAlertContactGroupsArgs(
      alertContactGroupName: map['alertContactGroupName'] == null ? null : (map['alertContactGroupName'] as String).input(),
      contactId: map['contactId'] == null ? null : (map['contactId'] as String).input(),
      contactName: map['contactName'] == null ? null : (map['contactName'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
    );
  }
}

