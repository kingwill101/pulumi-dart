import 'package:pulumi/pulumi.dart' as pulumi;
import 'appgroup_args.dart';
import 'google_cloud_apigee_v1_attribute_response.dart';

/// Creates an AppGroup. Once created, user can register apps under the AppGroup to obtain secret key and password. At creation time, the AppGroup's state is set as `active`.
class Appgroup extends pulumi.CustomResource {
  /// Internal identifier that cannot be edited
  late final pulumi.Output<String> appGroupId;

  /// A list of attributes
  late final pulumi.Output<List<GoogleCloudApigeeV1AttributeResponse>>
  attributes;

  /// channel identifier identifies the owner maintaing this grouping.
  late final pulumi.Output<String> channelId;

  /// A reference to the associated storefront/marketplace.
  late final pulumi.Output<String> channelUri;

  /// Created time as milliseconds since epoch.
  late final pulumi.Output<String> createdAt;

  /// app group name displayed in the UI
  late final pulumi.Output<String> displayName;

  /// Modified time as milliseconds since epoch.
  late final pulumi.Output<String> lastModifiedAt;

  /// Immutable. Name of the AppGroup. Characters you can use in the name are restricted to: A-Z0-9._\-$ %.
  late final pulumi.Output<String> name;

  /// Immutable. the org the app group is created
  late final pulumi.Output<String> organization;
  late final pulumi.Output<String> organizationId;

  /// Valid values are `active` or `inactive`. Note that the status of the AppGroup should be updated via UpdateAppGroupRequest by setting the action as `active` or `inactive`.
  late final pulumi.Output<String> status;

  /// Creates a new [Appgroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Appgroup]. {@macro pulumi_apigee_v1_appgroup_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Appgroup(
    String name, {
    AppgroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:apigee/v1:Appgroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.appGroupId = registerOutput<String>('appGroupId');
    this.attributes =
        registerOutput<List<GoogleCloudApigeeV1AttributeResponse>>(
          'attributes',
        );
    this.channelId = registerOutput<String>('channelId');
    this.channelUri = registerOutput<String>('channelUri');
    this.createdAt = registerOutput<String>('createdAt');
    this.displayName = registerOutput<String>('displayName');
    this.lastModifiedAt = registerOutput<String>('lastModifiedAt');
    this.name = registerOutput<String>('name');
    this.organization = registerOutput<String>('organization');
    this.organizationId = registerOutput<String>('organizationId');
    this.status = registerOutput<String>('status');
  }
}
