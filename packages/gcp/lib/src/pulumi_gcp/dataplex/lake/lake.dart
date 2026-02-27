import 'package:pulumi/pulumi.dart';
import '../lake_asset_status/lake_asset_status.dart';
import '../lake_metastore/lake_metastore.dart';
import '../lake_metastore_status/lake_metastore_status.dart';
import 'lake_args.dart';

/// The Dataplex Lake resource
///
/// ## Example Usage
///
/// ### Basic_lake
/// A basic example of a dataplex lake
///
///
/// ## Import
///
/// Lake can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/lakes/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Lake can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/lake:Lake default projects/{{project}}/locations/{{location}}/lakes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/lake:Lake default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/lake:Lake default {{location}}/{{name}}
/// ```
class Lake extends CustomResource {
  /// Output only. Aggregated status of the underlying assets of the lake.
  late final Output<List<LakeAssetStatus>> assetStatuses;

  /// Output only. The time when the lake was created.
  late final Output<String> createTime;

  /// Optional. Description of the lake.
  late final Output<String?> description;

  /// Optional. User friendly display name.
  late final Output<String?> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Optional. User-defined labels for the lake.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location for the resource
  late final Output<String> location;

  /// Optional. Settings to manage lake and Dataproc Metastore service instance association.
  late final Output<LakeMetastore?> metastore;

  /// Output only. Metastore status of the lake.
  late final Output<List<LakeMetastoreStatus>> metastoreStatuses;

  /// The name of the lake.
  ///
  ///
  ///
  /// - - -
  late final Output<String> name;

  /// The project for the resource
  late final Output<String> project;

  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Output only. Service account associated with this lake. This service account must be authorized to access or operate on resources managed by the lake.
  late final Output<String> serviceAccount;

  /// Output only. Current state of the lake. Possible values: STATE_UNSPECIFIED, ACTIVE, CREATING, DELETING, ACTION_REQUIRED
  late final Output<String> state;

  /// Output only. System generated globally unique ID for the lake. This ID will be different if the lake is deleted and re-created with the same name.
  late final Output<String> uid;

  /// Output only. The time when the lake was last updated.
  late final Output<String> updateTime;

  Lake(
    String name, {
    LakeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/lake:Lake',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.assetStatuses = registerOutput<List<LakeAssetStatus>>('assetStatuses');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.metastore = registerOutput<LakeMetastore?>('metastore');
    this.metastoreStatuses =
        registerOutput<List<LakeMetastoreStatus>>('metastoreStatuses');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
