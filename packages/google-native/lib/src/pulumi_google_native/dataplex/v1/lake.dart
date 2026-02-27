import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_asset_status_response.dart';
import 'google_cloud_dataplex_v1_lake_metastore_response.dart';
import 'google_cloud_dataplex_v1_lake_metastore_status_response.dart';
import 'lake_args.dart';

/// Creates a lake resource.
/// Auto-naming is currently not supported for this resource.
class Lake extends pulumi.CustomResource {
  /// Aggregated status of the underlying assets of the lake.
  late final pulumi.Output<GoogleCloudDataplexV1AssetStatusResponse>
      assetStatus;

  /// The time when the lake was created.
  late final pulumi.Output<String> createTime;

  /// Optional. Description of the lake.
  late final pulumi.Output<String> description;

  /// Optional. User friendly display name.
  late final pulumi.Output<String> displayName;

  /// Optional. User-defined labels for the lake.
  late final pulumi.Output<Map<String, String>> labels;

  /// Required. Lake identifier. This ID will be used to generate names such as database and dataset names when publishing metadata to Hive Metastore and BigQuery. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must end with a number or a letter. * Must be between 1-63 characters. * Must be unique within the customer project / location.
  late final pulumi.Output<String> lakeId;
  late final pulumi.Output<String> location;

  /// Optional. Settings to manage lake and Dataproc Metastore service instance association.
  late final pulumi.Output<GoogleCloudDataplexV1LakeMetastoreResponse>
      metastore;

  /// Metastore status of the lake.
  late final pulumi.Output<GoogleCloudDataplexV1LakeMetastoreStatusResponse>
      metastoreStatus;

  /// The relative resource name of the lake, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Service account associated with this lake. This service account must be authorized to access or operate on resources managed by the lake.
  late final pulumi.Output<String> serviceAccount;

  /// Current state of the lake.
  late final pulumi.Output<String> state;

  /// System generated globally unique ID for the lake. This ID will be different if the lake is deleted and re-created with the same name.
  late final pulumi.Output<String> uid;

  /// The time when the lake was last updated.
  late final pulumi.Output<String> updateTime;

  Lake(
    String name, {
    LakeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dataplex/v1:Lake',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.assetStatus =
        registerOutput<GoogleCloudDataplexV1AssetStatusResponse>('assetStatus');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.lakeId = registerOutput<String>('lakeId');
    this.location = registerOutput<String>('location');
    this.metastore =
        registerOutput<GoogleCloudDataplexV1LakeMetastoreResponse>('metastore');
    this.metastoreStatus =
        registerOutput<GoogleCloudDataplexV1LakeMetastoreStatusResponse>(
            'metastoreStatus');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
