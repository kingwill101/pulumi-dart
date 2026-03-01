// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1_contacts.dart';
import 'google_cloud_datacatalog_v1_entry_overview.dart';

/// Business Context of the entry.
class GoogleCloudDatacatalogV1BusinessContext {
  /// Contact people for the entry.
  final GoogleCloudDatacatalogV1Contacts? contacts;

  /// Entry overview fields for rich text descriptions of entries.
  final GoogleCloudDatacatalogV1EntryOverview? entryOverview;

  /// Creates a new [GoogleCloudDatacatalogV1BusinessContext].
  /// [contacts] Contact people for the entry.
  /// [entryOverview] Entry overview fields for rich text descriptions of entries.
  GoogleCloudDatacatalogV1BusinessContext({this.contacts, this.entryOverview});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contacts': ?contacts == null ? null : contacts!.toMap(),
      'entryOverview': ?entryOverview == null ? null : entryOverview!.toMap(),
    };
  }

  factory GoogleCloudDatacatalogV1BusinessContext.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatacatalogV1BusinessContext(
      contacts: map['contacts'] == null
          ? null
          : GoogleCloudDatacatalogV1Contacts.fromMap(
              (map['contacts'] as Map).cast<String, dynamic>(),
            ),
      entryOverview: map['entryOverview'] == null
          ? null
          : GoogleCloudDatacatalogV1EntryOverview.fromMap(
              (map['entryOverview'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
