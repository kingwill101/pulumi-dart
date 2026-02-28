// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_contacts_person_response.dart';

/// Contact people for the entry.
class GoogleCloudDatacatalogV1ContactsResponse {
  /// The list of contact people for the entry.
  final List<GoogleCloudDatacatalogV1ContactsPersonResponse> people;

  /// Creates a new [GoogleCloudDatacatalogV1ContactsResponse].
  /// [people] The list of contact people for the entry.
  GoogleCloudDatacatalogV1ContactsResponse({
    required this.people,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['people'] = pulumi.Input.encodeList<
        GoogleCloudDatacatalogV1ContactsPersonResponse,
        Map<String, dynamic>>(people, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudDatacatalogV1ContactsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1ContactsResponse(
      people: pulumi.Input.decodeList<
              GoogleCloudDatacatalogV1ContactsPersonResponse>(
          map['people'],
          (value) => GoogleCloudDatacatalogV1ContactsPersonResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
