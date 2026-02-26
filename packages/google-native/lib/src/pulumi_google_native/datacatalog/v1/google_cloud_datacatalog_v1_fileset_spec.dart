// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1_dataplex_fileset_spec.dart';

/// Specification that applies to a fileset. Valid only for entries with the 'FILESET' type.
class GoogleCloudDatacatalogV1FilesetSpec {
  /// Fields specific to a Dataplex fileset and present only in the Dataplex fileset entries.
  final GoogleCloudDatacatalogV1DataplexFilesetSpec? dataplexFileset;

  GoogleCloudDatacatalogV1FilesetSpec({
    this.dataplexFileset,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataplexFilesetValue = dataplexFileset;
    if (dataplexFilesetValue != null) {
      map['dataplexFileset'] = dataplexFilesetValue.toMap();
    }
    return map;
  }

  factory GoogleCloudDatacatalogV1FilesetSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1FilesetSpec(
      dataplexFileset: map['dataplexFileset'] == null
          ? null
          : GoogleCloudDatacatalogV1DataplexFilesetSpec.fromMap(
              (map['dataplexFileset'] as Map).cast<String, dynamic>()),
    );
  }
}
