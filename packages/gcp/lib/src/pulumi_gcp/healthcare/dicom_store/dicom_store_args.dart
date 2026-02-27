// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../dicom_store_notification_config/dicom_store_notification_config.dart';
import '../dicom_store_stream_config/dicom_store_stream_config.dart';

/// The set of arguments for DicomStore.
class DicomStoreArgs {
  /// Identifies the dataset addressed by this request. Must be in the format
  /// 'projects/{project}/locations/{location}/datasets/{dataset}'
  final Input<String> dataset;

  /// User-supplied key-value pairs used to organize DICOM stores.
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must
  /// conform to the following PCRE regular expression: [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}
  /// Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128
  /// bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}
  /// No more than 64 labels can be associated with a given store.
  /// An object containing a list of "key": value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The resource name for the DicomStore.
  /// ** Changing this property may recreate the Dicom store (removing all data) **
  final Input<String>? name;

  /// A nested object resource.
  /// Structure is documented below.
  final Input<DicomStoreNotificationConfig>? notificationConfig;

  /// To enable streaming to BigQuery, configure the streamConfigs object in your DICOM store.
  /// streamConfigs is an array, so you can specify multiple BigQuery destinations. You can stream metadata from a single DICOM store to up to five BigQuery tables in a BigQuery dataset.
  /// Structure is documented below.
  final Input<List<DicomStoreStreamConfig>>? streamConfigs;

  DicomStoreArgs({
    required this.dataset,
    this.labels,
    this.name,
    this.notificationConfig,
    this.streamConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataset'] = dataset;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final notificationConfigValue = notificationConfig;
    if (notificationConfigValue != null) {
      map['notificationConfig'] = Input.mapOptionalInputValue<
              DicomStoreNotificationConfig, Map<String, dynamic>>(
          notificationConfigValue, (value) => value.toMap());
    }
    final streamConfigsValue = streamConfigs;
    if (streamConfigsValue != null) {
      map['streamConfigs'] = Input.mapOptionalInputValue<
              List<DicomStoreStreamConfig>, List<Map<String, dynamic>>>(
          streamConfigsValue,
          (value) =>
              Input.encodeList<DicomStoreStreamConfig, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory DicomStoreArgs.fromMap(Map<String, dynamic> map) {
    return DicomStoreArgs(
      dataset: Input.asInput<String>(map['dataset']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      notificationConfig: Input.asOptionalInput<DicomStoreNotificationConfig>(
          map['notificationConfig']),
      streamConfigs: Input.asOptionalInput<List<DicomStoreStreamConfig>>(
          map['streamConfigs']),
    );
  }
}
