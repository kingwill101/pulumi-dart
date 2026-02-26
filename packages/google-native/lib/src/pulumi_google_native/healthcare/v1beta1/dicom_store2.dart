import 'package:pulumi/pulumi.dart';
import 'dicom_store_args2.dart';
import 'google_cloud_healthcare_v1beta1_dicom_stream_config_response.dart';
import 'notification_config_response4.dart';

/// Creates a new DICOM store within the parent dataset.
class DicomStore2 extends CustomResource {
  late final Output<String> datasetId;

  /// The ID of the DICOM store that is being created. Any string value up to 256 characters in length.
  late final Output<String?> dicomStoreId;

  /// User-supplied key-value pairs used to organize DICOM stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Resource name of the DICOM store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  late final Output<String> name;

  /// Notification destination for new DICOM instances. Supplied by the client.
  late final Output<NotificationConfigResponse4> notificationConfig;
  late final Output<String> project;

  /// Optional. A list of streaming configs used to configure the destination of streaming exports for every DICOM instance insertion in this DICOM store. After a new config is added to `stream_configs`, DICOM instance insertions are streamed to the new destination. When a config is removed from `stream_configs`, the server stops streaming to that destination. Each config must contain a unique destination.
  late final Output<List<GoogleCloudHealthcareV1beta1DicomStreamConfigResponse>>
      streamConfigs;

  DicomStore2(
    String name, {
    DicomStoreArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:healthcare/v1beta1:DicomStore',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.datasetId = Output.createUnknown<String>();
    this.dicomStoreId = Output.createUnknown<String?>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.notificationConfig =
        Output.createUnknown<NotificationConfigResponse4>();
    this.project = Output.createUnknown<String>();
    this.streamConfigs = Output.createUnknown<
        List<GoogleCloudHealthcareV1beta1DicomStreamConfigResponse>>();
  }
}
