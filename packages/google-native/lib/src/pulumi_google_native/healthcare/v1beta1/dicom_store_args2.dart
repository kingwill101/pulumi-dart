// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_healthcare_v1beta1_dicom_stream_config.dart';
import 'notification_config4.dart';

/// The set of arguments for DicomStore.
class DicomStoreArgs2 {
  final Input<String> datasetId;

  /// The ID of the DICOM store that is being created. Any string value up to 256 characters in length.
  final Input<String>? dicomStoreId;

  /// User-supplied key-value pairs used to organize DICOM stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Resource name of the DICOM store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  final Input<String>? name;

  /// Notification destination for new DICOM instances. Supplied by the client.
  final Input<NotificationConfig4>? notificationConfig;
  final Input<String>? project;

  /// Optional. A list of streaming configs used to configure the destination of streaming exports for every DICOM instance insertion in this DICOM store. After a new config is added to `stream_configs`, DICOM instance insertions are streamed to the new destination. When a config is removed from `stream_configs`, the server stops streaming to that destination. Each config must contain a unique destination.
  final Input<List<GoogleCloudHealthcareV1beta1DicomStreamConfig>>?
      streamConfigs;

  DicomStoreArgs2({
    required this.datasetId,
    this.dicomStoreId,
    this.labels,
    this.location,
    this.name,
    this.notificationConfig,
    this.project,
    this.streamConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    final dicomStoreIdValue = dicomStoreId;
    if (dicomStoreIdValue != null) {
      map['dicomStoreId'] = dicomStoreIdValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final notificationConfigValue = notificationConfig;
    if (notificationConfigValue != null) {
      map['notificationConfig'] = Input.mapOptionalInputValue<
              NotificationConfig4, Map<String, dynamic>>(
          notificationConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final streamConfigsValue = streamConfigs;
    if (streamConfigsValue != null) {
      map['streamConfigs'] = Input.mapOptionalInputValue<
              List<GoogleCloudHealthcareV1beta1DicomStreamConfig>,
              List<Map<String, dynamic>>>(
          streamConfigsValue,
          (value) => Input.encodeList<
              GoogleCloudHealthcareV1beta1DicomStreamConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory DicomStoreArgs2.fromMap(Map<String, dynamic> map) {
    return DicomStoreArgs2(
      datasetId: Input.asInput<String>(map['datasetId']),
      dicomStoreId: Input.asOptionalInput<String>(map['dicomStoreId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      notificationConfig:
          Input.asOptionalInput<NotificationConfig4>(map['notificationConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      streamConfigs: Input.asOptionalInput<
              List<GoogleCloudHealthcareV1beta1DicomStreamConfig>>(
          map['streamConfigs']),
    );
  }
}
