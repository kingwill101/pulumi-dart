import 'package:pulumi/pulumi.dart';
import 'datastore_args.dart';
import 'google_cloud_apigee_v1_datastore_config_response.dart';

/// Create a Datastore for an org
/// Auto-naming is currently not supported for this resource.
class Datastore extends CustomResource {
  /// Datastore create time, in milliseconds since the epoch of 1970-01-01T00:00:00Z
  late final Output<String> createTime;

  /// Datastore Configurations.
  late final Output<GoogleCloudApigeeV1DatastoreConfigResponse> datastoreConfig;

  /// Display name in UI
  late final Output<String> displayName;

  /// Datastore last update time, in milliseconds since the epoch of 1970-01-01T00:00:00Z
  late final Output<String> lastUpdateTime;

  /// Organization that the datastore belongs to
  late final Output<String> org;
  late final Output<String> organizationId;

  /// Resource link of Datastore. Example: `/organizations/{org}/analytics/datastores/{uuid}`
  late final Output<String> self;

  /// Destination storage type. Supported types `gcs` or `bigquery`.
  late final Output<String> targetType;

  Datastore(
    String name, {
    DatastoreArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:Datastore',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.datastoreConfig =
        Output.createUnknown<GoogleCloudApigeeV1DatastoreConfigResponse>();
    this.displayName = Output.createUnknown<String>();
    this.lastUpdateTime = Output.createUnknown<String>();
    this.org = Output.createUnknown<String>();
    this.organizationId = Output.createUnknown<String>();
    this.self = Output.createUnknown<String>();
    this.targetType = Output.createUnknown<String>();
  }
}
