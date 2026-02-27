import 'package:pulumi/pulumi.dart';
import '../project_feed_condition/project_feed_condition.dart';
import '../project_feed_feed_output_config/project_feed_feed_output_config.dart';
import 'project_feed_args.dart';

/// Describes a Cloud Asset Inventory feed used to to listen to asset updates.
///
///
/// To get more information about ProjectFeed, see:
///
/// * [API documentation](https://cloud.google.com/asset-inventory/docs/reference/rest/)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/asset-inventory/docs)
///
/// ## Example Usage
///
/// ### Cloud Asset Project Feed
///
///
///
///
/// ## Import
///
/// ProjectFeed can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/feeds/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, ProjectFeed can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudasset/projectFeed:ProjectFeed default projects/{{project}}/feeds/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudasset/projectFeed:ProjectFeed default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudasset/projectFeed:ProjectFeed default {{name}}
/// ```
class ProjectFeed extends CustomResource {
  /// A list of the full names of the assets to receive updates. You must specify either or both of
  /// assetNames and assetTypes. Only asset updates matching specified assetNames and assetTypes are
  /// exported to the feed. For example: //compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1.
  /// See https://cloud.google.com/apis/design/resourceNames#fullResourceName for more info.
  late final Output<List<String>?> assetNames;

  /// A list of types of the assets to receive updates. You must specify either or both of assetNames
  /// and assetTypes. Only asset updates matching specified assetNames and assetTypes are exported to
  /// the feed. For example: "compute.googleapis.com/Disk"
  /// See https://cloud.google.com/asset-inventory/docs/supported-asset-types for a list of all
  /// supported asset types.
  late final Output<List<String>?> assetTypes;

  /// The project whose identity will be used when sending messages to the
  /// destination pubsub topic. It also specifies the project for API
  /// enablement check, quota, and billing. If not specified, the resource's
  /// project will be used.
  late final Output<String?> billingProject;

  /// A condition which determines whether an asset update should be published. If specified, an asset
  /// will be returned only when the expression evaluates to true. When set, expression field
  /// must be a valid CEL expression on a TemporalAsset with name temporal_asset. Example: a Feed with
  /// expression "temporal_asset.deleted == true" will only publish Asset deletions. Other fields of
  /// condition are optional.
  /// Structure is documented below.
  late final Output<ProjectFeedCondition?> condition;

  /// Asset content type. If not specified, no content but the asset name and type will be returned.
  /// Possible values are: `CONTENT_TYPE_UNSPECIFIED`, `RESOURCE`, `IAM_POLICY`, `ORG_POLICY`, `OS_INVENTORY`, `ACCESS_POLICY`.
  late final Output<String?> contentType;

  /// This is the client-assigned asset feed identifier and it needs to be unique under a specific parent.
  late final Output<String> feedId;

  /// Output configuration for asset feed destination.
  /// Structure is documented below.
  late final Output<ProjectFeedFeedOutputConfig> feedOutputConfig;

  /// The format will be projects/{projectNumber}/feeds/{client-assigned_feed_identifier}.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  ProjectFeed(
    String name, {
    ProjectFeedArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:cloudasset/projectFeed:ProjectFeed',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.assetNames = registerOutput<List<String>?>('assetNames');
    this.assetTypes = registerOutput<List<String>?>('assetTypes');
    this.billingProject = registerOutput<String?>('billingProject');
    this.condition = registerOutput<ProjectFeedCondition?>('condition');
    this.contentType = registerOutput<String?>('contentType');
    this.feedId = registerOutput<String>('feedId');
    this.feedOutputConfig =
        registerOutput<ProjectFeedFeedOutputConfig>('feedOutputConfig');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
