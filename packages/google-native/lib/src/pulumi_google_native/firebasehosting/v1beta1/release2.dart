import 'package:pulumi/pulumi.dart';
import 'acting_user_response.dart';
import 'release_args2.dart';
import 'version_response6.dart';

/// Creates a new release, which makes the content of the specified version actively display on the appropriate URL(s).
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Release2 extends CustomResource {
  late final Output<String> channelId;

  /// The deploy description when the release was created. The value can be up to 512 characters.
  late final Output<String> message;

  /// The unique identifier for the release, in either of the following formats: - sites/SITE_ID/releases/RELEASE_ID - sites/SITE_ID/channels/CHANNEL_ID/releases/RELEASE_ID This name is provided in the response body when you call [`releases.create`](sites.releases/create) or [`channels.releases.create`](sites.channels.releases/create).
  late final Output<String> name;
  late final Output<String> project;

  /// The time at which the version is set to be public.
  late final Output<String> releaseTime;

  /// Identifies the user who created the release.
  late final Output<ActingUserResponse> releaseUser;
  late final Output<String> siteId;

  /// Explains the reason for the release. Specify a value for this field only when creating a `SITE_DISABLE` type release.
  late final Output<String> type;

  /// The configuration and content that was released.
  late final Output<VersionResponse6> version;

  /// The unique identifier for a version, in the format: sites/SITE_ID/versions/ VERSION_ID The SITE_ID in this version identifier must match the SITE_ID in the `parent` parameter. This query parameter must be empty if the `type` field in the request body is `SITE_DISABLE`.
  late final Output<String?> versionName;

  Release2(
    String name, {
    ReleaseArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:firebasehosting/v1beta1:Release',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.channelId = Output.createUnknown<String>();
    this.message = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.releaseTime = Output.createUnknown<String>();
    this.releaseUser = Output.createUnknown<ActingUserResponse>();
    this.siteId = Output.createUnknown<String>();
    this.type = Output.createUnknown<String>();
    this.version = Output.createUnknown<VersionResponse6>();
    this.versionName = Output.createUnknown<String?>();
  }
}
