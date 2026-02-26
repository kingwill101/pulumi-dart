// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_healthcare_v1beta1_dicom_stream_config_response.dart';
import 'notification_config_response4.dart';

/// Result data returned by getDicomStore.
class GetDicomStoreResult2 {
  /// User-supplied key-value pairs used to organize DICOM stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  final Map<String, String> labels;

  /// Resource name of the DICOM store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  final String name;

  /// Notification destination for new DICOM instances. Supplied by the client.
  final NotificationConfigResponse4 notificationConfig;

  /// Optional. A list of streaming configs used to configure the destination of streaming exports for every DICOM instance insertion in this DICOM store. After a new config is added to `stream_configs`, DICOM instance insertions are streamed to the new destination. When a config is removed from `stream_configs`, the server stops streaming to that destination. Each config must contain a unique destination.
  final List<GoogleCloudHealthcareV1beta1DicomStreamConfigResponse>
      streamConfigs;

  GetDicomStoreResult2({
    required this.labels,
    required this.name,
    required this.notificationConfig,
    required this.streamConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['labels'] = labels;
    map['name'] = name;
    map['notificationConfig'] = notificationConfig.toMap();
    map['streamConfigs'] = Input.encodeList<
        GoogleCloudHealthcareV1beta1DicomStreamConfigResponse,
        Map<String, dynamic>>(streamConfigs, (value) => value.toMap());
    return map;
  }

  factory GetDicomStoreResult2.fromMap(Map<String, dynamic> map) {
    return GetDicomStoreResult2(
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      notificationConfig: NotificationConfigResponse4.fromMap(
          (map['notificationConfig'] as Map).cast<String, dynamic>()),
      streamConfigs: Input.decodeList<
              GoogleCloudHealthcareV1beta1DicomStreamConfigResponse>(
          map['streamConfigs'],
          (value) =>
              GoogleCloudHealthcareV1beta1DicomStreamConfigResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
