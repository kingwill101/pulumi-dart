// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_msc_sub_contacts_contact.dart';

/// Result data returned by getMscSubContacts.
class GetMscSubContactsResult {
  /// A list of Msc Sub Contacts. Each element contains the following attributes:
  final List<GetMscSubContactsContact> contacts;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Contact names.
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetMscSubContactsResult].
  /// [contacts] A list of Msc Sub Contacts. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Contact names.
  /// [outputFile] Optional.
  GetMscSubContactsResult({
    required this.contacts,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contacts': pulumi.Input.encodeList<GetMscSubContactsContact, Map<String, dynamic>>(contacts, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetMscSubContactsResult.fromMap(Map<String, dynamic> map) {
    return GetMscSubContactsResult(
      contacts: pulumi.Input.decodeList<GetMscSubContactsContact>(map['contacts'], (value) => GetMscSubContactsContact.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

