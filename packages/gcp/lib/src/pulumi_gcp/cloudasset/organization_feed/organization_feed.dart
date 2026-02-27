import 'package:pulumi/pulumi.dart';
import '../organization_feed_condition/organization_feed_condition.dart';
import '../organization_feed_feed_output_config/organization_feed_feed_output_config.dart';
import 'organization_feed_args.dart';

/// Describes a Cloud Asset Inventory feed used to to listen to asset updates.
///
///
/// To get more information about OrganizationFeed, see:
///
/// * [API documentation](https://cloud.google.com/asset-inventory/docs/reference/rest/)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/asset-inventory/docs)
///
/// ## Example Usage
///
/// ### Cloud Asset Organization Feed
///
///
///
///
/// ## Import
///
/// OrganizationFeed can be imported using any of these accepted formats:
///
/// * `organizations/{{org_id}}/feeds/{{name}}`
///
/// * `{{org_id}}/{{name}}`
///
/// When using the `pulumi import` command, OrganizationFeed can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudasset/organizationFeed:OrganizationFeed default organizations/{{org_id}}/feeds/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudasset/organizationFeed:OrganizationFeed default {{org_id}}/{{name}}
/// ```
class OrganizationFeed extends CustomResource {
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
  /// enablement check, quota, and billing.
  late final Output<String> billingProject;

  /// A condition which determines whether an asset update should be published. If specified, an asset
  /// will be returned only when the expression evaluates to true. When set, expression field
  /// must be a valid CEL expression on a TemporalAsset with name temporal_asset. Example: a Feed with
  /// expression "temporal_asset.deleted == true" will only publish Asset deletions. Other fields of
  /// condition are optional.
  /// Structure is documented below.
  late final Output<OrganizationFeedCondition?> condition;

  /// Asset content type. If not specified, no content but the asset name and type will be returned.
  /// Possible values are: `CONTENT_TYPE_UNSPECIFIED`, `RESOURCE`, `IAM_POLICY`, `ORG_POLICY`, `OS_INVENTORY`, `ACCESS_POLICY`.
  late final Output<String?> contentType;

  /// This is the client-assigned asset feed identifier and it needs to be unique under a specific parent.
  late final Output<String> feedId;

  /// Output configuration for asset feed destination.
  /// Structure is documented below.
  late final Output<OrganizationFeedFeedOutputConfig> feedOutputConfig;

  /// The format will be organizations/{organization_number}/feeds/{client-assigned_feed_identifier}.
  late final Output<String> name;

  /// The organization this feed should be created in.
  late final Output<String> orgId;

  OrganizationFeed(
    String name, {
    OrganizationFeedArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:cloudasset/organizationFeed:OrganizationFeed',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.assetNames = registerOutput<List<String>?>('assetNames');
    this.assetTypes = registerOutput<List<String>?>('assetTypes');
    this.billingProject = registerOutput<String>('billingProject');
    this.condition = registerOutput<OrganizationFeedCondition?>('condition');
    this.contentType = registerOutput<String?>('contentType');
    this.feedId = registerOutput<String>('feedId');
    this.feedOutputConfig =
        registerOutput<OrganizationFeedFeedOutputConfig>('feedOutputConfig');
    this.name = registerOutput<String>('name');
    this.orgId = registerOutput<String>('orgId');
  }
}
