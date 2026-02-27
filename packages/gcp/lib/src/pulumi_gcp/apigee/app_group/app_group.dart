import 'package:pulumi/pulumi.dart' as pulumi;
import '../app_group_attribute/app_group_attribute.dart';
import 'app_group_args.dart';

/// An `AppGroup` in Apigee.
///
///
/// To get more information about AppGroup, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.appgroups)
/// * How-to Guides
/// * [Organizing client app ownership](https://cloud.google.com/apigee/docs/api-platform/publish/organizing-client-app-ownership)
///
/// ## Example Usage
///
/// ### Apigee App Group Basic
///
///
///
/// ### Apigee App Group With Attributes
///
///
///
///
/// ## Import
///
/// AppGroup can be imported using any of these accepted formats:
///
/// * `{{org_id}}/appgroups/{{name}}`
///
/// * `{{org_id}}/{{name}}`
///
/// When using the `pulumi import` command, AppGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/appGroup:AppGroup default {{org_id}}/appgroups/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/appGroup:AppGroup default {{org_id}}/{{name}}
/// ```
class AppGroup extends pulumi.CustomResource {
  /// Internal identifier that cannot be edited
  late final pulumi.Output<String> appGroupId;

  /// A list of attributes
  /// Structure is documented below.
  late final pulumi.Output<List<AppGroupAttribute>?> attributes;

  /// Channel identifier identifies the owner maintaining this grouping.
  late final pulumi.Output<String?> channelId;

  /// A reference to the associated storefront/marketplace.
  late final pulumi.Output<String?> channelUri;

  /// Created time as milliseconds since epoch.
  late final pulumi.Output<String> createdAt;

  /// App group name displayed in the UI
  late final pulumi.Output<String?> displayName;

  /// Modified time as milliseconds since epoch.
  late final pulumi.Output<String> lastModifiedAt;

  /// Name of the AppGroup. Characters you can use in the name are restricted to: A-Z0-9._-$ %.
  late final pulumi.Output<String> name;

  /// The Apigee Organization associated with the Apigee app group,
  /// in the format `organizations/{{org_name}}`.
  late final pulumi.Output<String> orgId;

  /// App group name displayed in the UI
  late final pulumi.Output<String> organization;

  /// Valid values are active or inactive. Note that the status of the AppGroup should be updated via UpdateAppGroupRequest by setting the action as active or inactive.
  /// Possible values are: `active`, `inactive`.
  late final pulumi.Output<String?> status;

  AppGroup(
    String name, {
    AppGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/appGroup:AppGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appGroupId = registerOutput<String>('appGroupId');
    this.attributes = registerOutput<List<AppGroupAttribute>?>('attributes');
    this.channelId = registerOutput<String?>('channelId');
    this.channelUri = registerOutput<String?>('channelUri');
    this.createdAt = registerOutput<String>('createdAt');
    this.displayName = registerOutput<String?>('displayName');
    this.lastModifiedAt = registerOutput<String>('lastModifiedAt');
    this.name = registerOutput<String>('name');
    this.orgId = registerOutput<String>('orgId');
    this.organization = registerOutput<String>('organization');
    this.status = registerOutput<String?>('status');
  }
}
