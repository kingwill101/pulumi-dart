import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosting_release_args.dart';

/// A Release is a particular collection of configurations that is set to be public at a particular time.
///
/// To get more information about Release, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/hosting/rest/v1beta1/sites.releases)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/hosting)
///
/// ## Example Usage
///
/// ### Firebasehosting Release In Site
///
///
///
/// ### Firebasehosting Release In Channel
///
///
///
/// ### Firebasehosting Release Disable
///
///
///
///
/// ## Import
///
/// Release can be imported using any of these accepted formats:
///
/// * `sites/{{site_id}}/channels/{{channel_id}}/releases/{{release_id}}`
///
/// * `sites/{{site_id}}/releases/{{release_id}}`
///
/// * `{{site_id}}/{{channel_id}}/{{release_id}}`
///
/// * `{{site_id}}/{{release_id}}`
///
/// When using the `pulumi import` command, Release can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/hostingRelease:HostingRelease default sites/{{site_id}}/channels/{{channel_id}}/releases/{{release_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/hostingRelease:HostingRelease default sites/{{site_id}}/releases/{{release_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/hostingRelease:HostingRelease default {{site_id}}/{{channel_id}}/{{release_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/hostingRelease:HostingRelease default {{site_id}}/{{release_id}}
/// ```
class HostingRelease extends pulumi.CustomResource {
  /// The ID of the channel to which the release belongs. If not provided, the release will
  /// belong to the default "live" channel
  late final pulumi.Output<String?> channelId;

  /// The deploy description when the release was created. The value can be up to 512 characters.
  late final pulumi.Output<String?> message;

  /// The unique identifier for the release, in either of the following formats:
  /// sites/SITE_ID/releases/RELEASE_ID
  /// sites/SITE_ID/channels/CHANNEL_ID/releases/RELEASE_ID
  late final pulumi.Output<String> name;

  /// The unique identifier for the Release.
  late final pulumi.Output<String> releaseId;

  /// Required. The ID of the site to which the release belongs.
  late final pulumi.Output<String> siteId;

  /// The type of the release; indicates what happened to the content of the site. There is no need to specify
  /// `DEPLOY` or `ROLLBACK` type if a `version_name` is provided.
  /// DEPLOY: A version was uploaded to Firebase Hosting and released. Output only.
  /// ROLLBACK: The release points back to a previously deployed version. Output only.
  /// SITE_DISABLE: The release prevents the site from serving content. Firebase Hosting acts as if the site never existed
  /// Possible values are: `DEPLOY`, `ROLLBACK`, `SITE_DISABLE`.
  late final pulumi.Output<String> type;

  /// The unique identifier for a version, in the format: sites/SITE_ID/versions/VERSION_ID.
  /// The content of the version specified will be actively displayed on the appropriate URL.
  /// The Version must belong to the same site as in the `site_id`.
  /// This parameter must be empty if the `type` of the release is `SITE_DISABLE`.
  late final pulumi.Output<String?> versionName;

  HostingRelease(
    String name, {
    HostingReleaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/hostingRelease:HostingRelease',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.channelId = registerOutput<String?>('channelId');
    this.message = registerOutput<String?>('message');
    this.name = registerOutput<String>('name');
    this.releaseId = registerOutput<String>('releaseId');
    this.siteId = registerOutput<String>('siteId');
    this.type = registerOutput<String>('type');
    this.versionName = registerOutput<String?>('versionName');
  }
}
