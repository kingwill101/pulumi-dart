// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1_dataplex_spec.dart';

/// Entry specyfication for a Dataplex fileset.
class GoogleCloudDatacatalogV1DataplexFilesetSpec {
  /// Common Dataplex fields.
  final GoogleCloudDatacatalogV1DataplexSpec? dataplexSpec;

  GoogleCloudDatacatalogV1DataplexFilesetSpec({
    this.dataplexSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataplexSpecValue = dataplexSpec;
    if (dataplexSpecValue != null) {
      map['dataplexSpec'] = dataplexSpecValue.toMap();
    }
    return map;
  }

  factory GoogleCloudDatacatalogV1DataplexFilesetSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1DataplexFilesetSpec(
      dataplexSpec: map['dataplexSpec'] == null
          ? null
          : GoogleCloudDatacatalogV1DataplexSpec.fromMap(
              (map['dataplexSpec'] as Map).cast<String, dynamic>()),
    );
  }
}
