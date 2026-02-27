import 'package:pulumi/pulumi.dart';
import 'data_connect_service_args.dart';

/// A Firebase Data Connect service.
///
///
/// To get more information about Service, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/data-connect/rest)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/data-connect)
///
/// ## Example Usage
///
/// ### Firebasedataconnect Service Basic
///
///
///
/// ### Firebasedataconnect Service With Force Deletion
///
///
///
///
/// ## Import
///
/// Service can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/services/{{service_id}}`
///
/// * `{{project}}/{{location}}/{{service_id}}`
///
/// * `{{location}}/{{service_id}}`
///
/// When using the `pulumi import` command, Service can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/dataConnectService:DataConnectService default projects/{{project}}/locations/{{location}}/services/{{service_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/dataConnectService:DataConnectService default {{project}}/{{location}}/{{service_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/dataConnectService:DataConnectService default {{location}}/{{service_id}}
/// ```
class DataConnectService extends CustomResource {
  /// Optional. Stores small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final Output<Map<String, String>?> annotations;

  /// Output only. [Output only] Create time stamp.
  late final Output<String> createTime;

  /// The deletion policy for the database. Setting the field to FORCE allows the
  /// Service to be deleted even if a Schema or Connector is present. By default,
  /// the Service deletion will only succeed when no Schema or Connectors are
  /// present.
  /// Possible values: DEFAULT, FORCE
  late final Output<String?> deletionPolicy;

  /// Optional. Mutable human-readable name. 63 character limit.
  late final Output<String?> displayName;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Output only. This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  /// [AIP-154](https://google.aip.dev/154)
  late final Output<String> etag;

  /// Optional. Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The region in which the service resides, e.g. "us-central1" or "asia-east1".
  late final Output<String> location;

  /// Identifier. The relative resource name of the Firebase Data Connect service, in the
  /// format:
  /// ```
  /// projects/{project}/locations/{location}/services/{service}
  /// ```
  /// Note that the service ID is specific to Firebase Data Connect and does not
  /// correspond to any of the instance IDs of the underlying data source
  /// connections.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Output only. A field that if true, indicates that the system is working update the
  /// service.
  late final Output<bool> reconciling;

  /// Required. The ID to use for the service, which will become the final component of the
  /// service's resource name.
  late final Output<String> serviceId;

  /// Output only. System-assigned, unique identifier.
  late final Output<String> uid;

  /// Output only. [Output only] Update time stamp.
  late final Output<String> updateTime;

  DataConnectService(
    String name, {
    DataConnectServiceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/dataConnectService:DataConnectService',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.createTime = registerOutput<String>('createTime');
    this.deletionPolicy = registerOutput<String?>('deletionPolicy');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciling = registerOutput<bool>('reconciling');
    this.serviceId = registerOutput<String>('serviceId');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
