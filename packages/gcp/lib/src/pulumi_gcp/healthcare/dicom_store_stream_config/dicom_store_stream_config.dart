// ignore_for_file: unused_element, unnecessary_cast

import '../dicom_store_stream_config_bigquery_destination/dicom_store_stream_config_bigquery_destination.dart';

class DicomStoreStreamConfig {
  /// BigQueryDestination to include a fully qualified BigQuery table URI where DICOM instance metadata will be streamed.
  /// Structure is documented below.
  final DicomStoreStreamConfigBigqueryDestination bigqueryDestination;

  DicomStoreStreamConfig({
    required this.bigqueryDestination,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bigqueryDestination'] = bigqueryDestination.toMap();
    return map;
  }

  factory DicomStoreStreamConfig.fromMap(Map<String, dynamic> map) {
    return DicomStoreStreamConfig(
      bigqueryDestination: DicomStoreStreamConfigBigqueryDestination.fromMap(
          (map['bigqueryDestination'] as Map).cast<String, dynamic>()),
    );
  }
}
