// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alert_contact_groups_group.dart';

/// Result data returned by getAlertContactGroups.
class GetAlertContactGroupsResult {
  final String? alertContactGroupName;
  final String? contactId;
  final String? contactName;
  final List<GetAlertContactGroupsGroup> groups;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetAlertContactGroupsResult].
  /// [alertContactGroupName] Optional.
  /// [contactId] Optional.
  /// [contactName] Optional.
  /// [groups] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  GetAlertContactGroupsResult({
    this.alertContactGroupName,
    this.contactId,
    this.contactName,
    required this.groups,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertContactGroupName': ?alertContactGroupName,
      'contactId': ?contactId,
      'contactName': ?contactName,
      'groups': pulumi.Input.encodeList<GetAlertContactGroupsGroup, Map<String, dynamic>>(groups, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetAlertContactGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetAlertContactGroupsResult(
      alertContactGroupName: map['alertContactGroupName'] == null ? null : map['alertContactGroupName']! as String,
      contactId: map['contactId'] == null ? null : map['contactId']! as String,
      contactName: map['contactName'] == null ? null : map['contactName']! as String,
      groups: pulumi.Input.decodeList<GetAlertContactGroupsGroup>(map['groups'], (value) => GetAlertContactGroupsGroup.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
    );
  }
}

