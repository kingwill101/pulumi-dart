// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1_contacts_response.dart';
import 'google_cloud_datacatalog_v1_entry_overview_response.dart';

/// Business Context of the entry.
class GoogleCloudDatacatalogV1BusinessContextResponse {
  /// Contact people for the entry.
  final GoogleCloudDatacatalogV1ContactsResponse contacts;
  /// Entry overview fields for rich text descriptions of entries.
  final GoogleCloudDatacatalogV1EntryOverviewResponse entryOverview;

  /// Creates a new [GoogleCloudDatacatalogV1BusinessContextResponse].
  /// [contacts] Contact people for the entry.
  /// [entryOverview] Entry overview fields for rich text descriptions of entries.
  GoogleCloudDatacatalogV1BusinessContextResponse({
    required this.contacts,
    required this.entryOverview,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contacts': contacts.toMap(),
      'entryOverview': entryOverview.toMap(),
    };
  }

  factory GoogleCloudDatacatalogV1BusinessContextResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1BusinessContextResponse(
      contacts: GoogleCloudDatacatalogV1ContactsResponse.fromMap((map['contacts'] as Map).cast<String, dynamic>()),
      entryOverview: GoogleCloudDatacatalogV1EntryOverviewResponse.fromMap((map['entryOverview'] as Map).cast<String, dynamic>()),
    );
  }
}

