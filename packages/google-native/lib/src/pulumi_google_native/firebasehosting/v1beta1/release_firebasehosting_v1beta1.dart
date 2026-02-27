import 'package:pulumi/pulumi.dart' as pulumi;
import 'acting_user_response.dart';
import 'release_firebasehosting_v1beta1_args.dart';
import 'version_response_firebasehosting_v1beta1.dart';

/// Creates a new release, which makes the content of the specified version actively display on the appropriate URL(s).
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class ReleaseFirebasehostingV1beta1 extends pulumi.CustomResource {
  late final pulumi.Output<String> channelId;

  /// The deploy description when the release was created. The value can be up to 512 characters.
  late final pulumi.Output<String> message;

  /// The unique identifier for the release, in either of the following formats: - sites/SITE_ID/releases/RELEASE_ID - sites/SITE_ID/channels/CHANNEL_ID/releases/RELEASE_ID This name is provided in the response body when you call [`releases.create`](sites.releases/create) or [`channels.releases.create`](sites.channels.releases/create).
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The time at which the version is set to be public.
  late final pulumi.Output<String> releaseTime;

  /// Identifies the user who created the release.
  late final pulumi.Output<ActingUserResponse> releaseUser;
  late final pulumi.Output<String> siteId;

  /// Explains the reason for the release. Specify a value for this field only when creating a `SITE_DISABLE` type release.
  late final pulumi.Output<String> type;

  /// The configuration and content that was released.
  late final pulumi.Output<VersionResponseFirebasehostingV1beta1> version;

  /// The unique identifier for a version, in the format: sites/SITE_ID/versions/ VERSION_ID The SITE_ID in this version identifier must match the SITE_ID in the `parent` parameter. This query parameter must be empty if the `type` field in the request body is `SITE_DISABLE`.
  late final pulumi.Output<String?> versionName;

  ReleaseFirebasehostingV1beta1(
    String name, {
    ReleaseFirebasehostingV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:firebasehosting/v1beta1:Release',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.channelId = registerOutput<String>('channelId');
    this.message = registerOutput<String>('message');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.releaseTime = registerOutput<String>('releaseTime');
    this.releaseUser = registerOutput<ActingUserResponse>('releaseUser');
    this.siteId = registerOutput<String>('siteId');
    this.type = registerOutput<String>('type');
    this.version =
        registerOutput<VersionResponseFirebasehostingV1beta1>('version');
    this.versionName = registerOutput<String?>('versionName');
  }
}
