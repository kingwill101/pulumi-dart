// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dicom_store_notification_config.dart';
import 'dicom_store_stream_config.dart';

/// {@template pulumi_healthcare_dicom_store_dicom_store_args_doc}
/// The set of arguments for DicomStore.
/// {@endtemplate}
/// {@macro pulumi_healthcare_dicom_store_dicom_store_args_doc}
class DicomStoreArgs {
  /// Identifies the dataset addressed by this request. Must be in the format
  /// 'projects/{project}/locations/{location}/datasets/{dataset}'
  final pulumi.Input<String> dataset;
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
  final pulumi.Input<Map<String, String>>? labels;
  /// The resource name for the DicomStore.
  /// ** Changing this property may recreate the Dicom store (removing all data) **
  final pulumi.Input<String>? name;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DicomStoreNotificationConfig>? notificationConfig;
  /// To enable streaming to BigQuery, configure the streamConfigs object in your DICOM store.
  /// streamConfigs is an array, so you can specify multiple BigQuery destinations. You can stream metadata from a single DICOM store to up to five BigQuery tables in a BigQuery dataset.
  /// Structure is documented below.
  final pulumi.Input<List<DicomStoreStreamConfig>>? streamConfigs;

  /// Creates a new [DicomStoreArgs].
  /// [dataset] Identifies the dataset addressed by this request. Must be in the format
  /// [labels] User-supplied key-value pairs used to organize DICOM stores.
  /// [name] The resource name for the DicomStore.
  /// [notificationConfig] A nested object resource.
  /// [streamConfigs] To enable streaming to BigQuery, configure the streamConfigs object in your DICOM store.
  DicomStoreArgs({
    required String dataset,
    Map<String, String>? labels,
    String? name,
    DicomStoreNotificationConfig? notificationConfig,
    List<DicomStoreStreamConfig>? streamConfigs,
  }) :
      dataset = pulumi.Input.asInput<String>(dataset),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      notificationConfig = pulumi.Input.asOptionalInput<DicomStoreNotificationConfig>(notificationConfig),
      streamConfigs = pulumi.Input.asOptionalInput<List<DicomStoreStreamConfig>>(streamConfigs);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': dataset,
      'labels': ?labels,
      'name': ?name,
      'notificationConfig': ?pulumi.Input.mapOptionalInputValue<DicomStoreNotificationConfig, Map<String, dynamic>>(notificationConfig, (value) => value.toMap()),
      'streamConfigs': ?pulumi.Input.mapOptionalInputValue<List<DicomStoreStreamConfig>, List<Map<String, dynamic>>>(streamConfigs, (value) => pulumi.Input.encodeList<DicomStoreStreamConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DicomStoreArgs.fromMap(Map<String, dynamic> map) {
    return DicomStoreArgs(
      dataset: map['dataset'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      notificationConfig: map['notificationConfig'] == null ? null : DicomStoreNotificationConfig.fromMap((map['notificationConfig'] as Map).cast<String, dynamic>()),
      streamConfigs: map['streamConfigs'] == null ? null : pulumi.Input.decodeList<DicomStoreStreamConfig>(map['streamConfigs'], (value) => DicomStoreStreamConfig.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

