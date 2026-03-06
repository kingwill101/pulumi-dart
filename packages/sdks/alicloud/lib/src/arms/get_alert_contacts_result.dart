// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alert_contacts_contact.dart';

/// Result data returned by getAlertContacts.
class GetAlertContactsResult {
  final String? alertContactName;
  final List<GetAlertContactsContact> contacts;
  final String? email;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? phoneNum;

  /// Creates a new [GetAlertContactsResult].
  /// [alertContactName] Optional.
  /// [contacts] Required.
  /// [email] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [phoneNum] Optional.
  const GetAlertContactsResult({
    this.alertContactName,
    required this.contacts,
    this.email,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.phoneNum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertContactName': ?alertContactName,
      'contacts': pulumi.Input.encodeList<GetAlertContactsContact, Map<String, dynamic>>(contacts, (value) => value.toMap()),
      'email': ?email,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'phoneNum': ?phoneNum,
    };
  }

  factory GetAlertContactsResult.fromMap(Map<String, dynamic> map) {
    return GetAlertContactsResult(
      alertContactName: (() { final guardedValue = map['alertContactName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contacts: pulumi.Input.decodeList<GetAlertContactsContact>(map['contacts']!, (value) => GetAlertContactsContact.fromMap((value as Map).cast<String, dynamic>())),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      phoneNum: (() { final guardedValue = map['phoneNum']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

