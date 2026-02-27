// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_healthcare_v1beta1_dicom_stream_config.dart';
import 'notification_config_healthcare_v1beta1.dart';

/// The set of arguments for DicomStore.
class DicomStoreHealthcareV1beta1Args {
  final pulumi.Input<String> datasetId;

  /// The ID of the DICOM store that is being created. Any string value up to 256 characters in length.
  final pulumi.Input<String>? dicomStoreId;

  /// User-supplied key-value pairs used to organize DICOM stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Resource name of the DICOM store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  final pulumi.Input<String>? name;

  /// Notification destination for new DICOM instances. Supplied by the client.
  final pulumi.Input<NotificationConfigHealthcareV1beta1>? notificationConfig;
  final pulumi.Input<String>? project;

  /// Optional. A list of streaming configs used to configure the destination of streaming exports for every DICOM instance insertion in this DICOM store. After a new config is added to `stream_configs`, DICOM instance insertions are streamed to the new destination. When a config is removed from `stream_configs`, the server stops streaming to that destination. Each config must contain a unique destination.
  final pulumi.Input<List<GoogleCloudHealthcareV1beta1DicomStreamConfig>>?
      streamConfigs;

  DicomStoreHealthcareV1beta1Args({
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
      map['notificationConfig'] = pulumi.Input.mapOptionalInputValue<
              NotificationConfigHealthcareV1beta1, Map<String, dynamic>>(
          notificationConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final streamConfigsValue = streamConfigs;
    if (streamConfigsValue != null) {
      map['streamConfigs'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudHealthcareV1beta1DicomStreamConfig>,
              List<Map<String, dynamic>>>(
          streamConfigsValue,
          (value) => pulumi.Input.encodeList<
              GoogleCloudHealthcareV1beta1DicomStreamConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory DicomStoreHealthcareV1beta1Args.fromMap(Map<String, dynamic> map) {
    return DicomStoreHealthcareV1beta1Args(
      datasetId: pulumi.Input.asInput<String>(map['datasetId']),
      dicomStoreId: pulumi.Input.asOptionalInput<String>(map['dicomStoreId']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      notificationConfig:
          pulumi.Input.asOptionalInput<NotificationConfigHealthcareV1beta1>(
              map['notificationConfig']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      streamConfigs: pulumi.Input.asOptionalInput<
              List<GoogleCloudHealthcareV1beta1DicomStreamConfig>>(
          map['streamConfigs']),
    );
  }
}
