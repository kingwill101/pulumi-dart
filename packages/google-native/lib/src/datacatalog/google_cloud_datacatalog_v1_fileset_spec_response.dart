// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1_dataplex_fileset_spec_response.dart';

/// Specification that applies to a fileset. Valid only for entries with the 'FILESET' type.
class GoogleCloudDatacatalogV1FilesetSpecResponse {
  /// Fields specific to a Dataplex fileset and present only in the Dataplex fileset entries.
  final GoogleCloudDatacatalogV1DataplexFilesetSpecResponse dataplexFileset;

  /// Creates a new [GoogleCloudDatacatalogV1FilesetSpecResponse].
  /// [dataplexFileset] Fields specific to a Dataplex fileset and present only in the Dataplex fileset entries.
  GoogleCloudDatacatalogV1FilesetSpecResponse({
    required this.dataplexFileset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataplexFileset': dataplexFileset.toMap(),
    };
  }

  factory GoogleCloudDatacatalogV1FilesetSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1FilesetSpecResponse(
      dataplexFileset: GoogleCloudDatacatalogV1DataplexFilesetSpecResponse.fromMap((map['dataplexFileset'] as Map).cast<String, dynamic>()),
    );
  }
}

