// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_datacatalog_v1_contacts_person.dart';

/// Contact people for the entry.
class GoogleCloudDatacatalogV1Contacts {
  /// The list of contact people for the entry.
  final List<GoogleCloudDatacatalogV1ContactsPerson>? people;

  GoogleCloudDatacatalogV1Contacts({
    this.people,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final peopleValue = people;
    if (peopleValue != null) {
      map['people'] = Input.encodeList<GoogleCloudDatacatalogV1ContactsPerson,
          Map<String, dynamic>>(peopleValue, (value) => value.toMap());
    }
    return map;
  }

  factory GoogleCloudDatacatalogV1Contacts.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1Contacts(
      people: map['people'] == null
          ? null
          : Input.decodeList<GoogleCloudDatacatalogV1ContactsPerson>(
              map['people'],
              (value) => GoogleCloudDatacatalogV1ContactsPerson.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
