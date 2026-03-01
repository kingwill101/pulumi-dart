// ignore_for_file: unused_element, unnecessary_cast

import 'dicom_store_stream_config_bigquery_destination.dart';

class DicomStoreStreamConfig {
  /// BigQueryDestination to include a fully qualified BigQuery table URI where DICOM instance metadata will be streamed.
  /// Structure is documented below.
  final DicomStoreStreamConfigBigqueryDestination bigqueryDestination;

  /// Creates a new [DicomStoreStreamConfig].
  /// [bigqueryDestination] BigQueryDestination to include a fully qualified BigQuery table URI where DICOM instance metadata will be streamed.
  DicomStoreStreamConfig({required this.bigqueryDestination});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryDestination': bigqueryDestination.toMap(),
    };
  }

  factory DicomStoreStreamConfig.fromMap(Map<String, dynamic> map) {
    return DicomStoreStreamConfig(
      bigqueryDestination: DicomStoreStreamConfigBigqueryDestination.fromMap(
        (map['bigqueryDestination'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
