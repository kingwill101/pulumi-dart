import 'package:pulumi/pulumi.dart' as pulumi;
import 'dicom_store_healthcare_v1beta1_args.dart';
import 'google_cloud_healthcare_v1beta1_dicom_stream_config_response.dart';
import 'notification_config_response_healthcare_v1beta1.dart';

/// Creates a new DICOM store within the parent dataset.
class DicomStoreHealthcareV1beta1 extends pulumi.CustomResource {
  late final pulumi.Output<String> datasetId;

  /// The ID of the DICOM store that is being created. Any string value up to 256 characters in length.
  late final pulumi.Output<String?> dicomStoreId;

  /// User-supplied key-value pairs used to organize DICOM stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Resource name of the DICOM store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  late final pulumi.Output<String> name;

  /// Notification destination for new DICOM instances. Supplied by the client.
  late final pulumi.Output<NotificationConfigResponseHealthcareV1beta1>
      notificationConfig;
  late final pulumi.Output<String> project;

  /// Optional. A list of streaming configs used to configure the destination of streaming exports for every DICOM instance insertion in this DICOM store. After a new config is added to `stream_configs`, DICOM instance insertions are streamed to the new destination. When a config is removed from `stream_configs`, the server stops streaming to that destination. Each config must contain a unique destination.
  late final pulumi
      .Output<List<GoogleCloudHealthcareV1beta1DicomStreamConfigResponse>>
      streamConfigs;

  DicomStoreHealthcareV1beta1(
    String name, {
    DicomStoreHealthcareV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:healthcare/v1beta1:DicomStore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.datasetId = registerOutput<String>('datasetId');
    this.dicomStoreId = registerOutput<String?>('dicomStoreId');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.notificationConfig =
        registerOutput<NotificationConfigResponseHealthcareV1beta1>(
            'notificationConfig');
    this.project = registerOutput<String>('project');
    this.streamConfigs = registerOutput<
            List<GoogleCloudHealthcareV1beta1DicomStreamConfigResponse>>(
        'streamConfigs');
  }
}
