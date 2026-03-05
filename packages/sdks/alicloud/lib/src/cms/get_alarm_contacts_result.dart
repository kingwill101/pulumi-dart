// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alarm_contacts_contact.dart';

/// Result data returned by getAlarmContacts.
class GetAlarmContactsResult {
  final String? chanelType;
  final String? chanelValue;
  /// A list of alarm contacts. Each element contains the following attributes:
  final List<GetAlarmContactsContact> contacts;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of alarm contact IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of alarm contact names.
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetAlarmContactsResult].
  /// [chanelType] Optional.
  /// [chanelValue] Optional.
  /// [contacts] A list of alarm contacts. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of alarm contact IDs.
  /// [nameRegex] Optional.
  /// [names] A list of alarm contact names.
  /// [outputFile] Optional.
  GetAlarmContactsResult({
    this.chanelType,
    this.chanelValue,
    required this.contacts,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chanelType': ?chanelType,
      'chanelValue': ?chanelValue,
      'contacts': pulumi.Input.encodeList<GetAlarmContactsContact, Map<String, dynamic>>(contacts, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetAlarmContactsResult.fromMap(Map<String, dynamic> map) {
    return GetAlarmContactsResult(
      chanelType: (() { final guardedValue = map['chanelType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      chanelValue: (() { final guardedValue = map['chanelValue']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contacts: pulumi.Input.decodeList<GetAlarmContactsContact>(map['contacts']!, (value) => GetAlarmContactsContact.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

