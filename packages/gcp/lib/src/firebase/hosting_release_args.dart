// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_hosting_release_hosting_release_args_doc}
/// The set of arguments for HostingRelease.
/// {@endtemplate}
/// {@macro pulumi_firebase_hosting_release_hosting_release_args_doc}
class HostingReleaseArgs {
  /// The ID of the channel to which the release belongs. If not provided, the release will
  /// belong to the default "live" channel
  final pulumi.Input<String>? channelId;
  /// The deploy description when the release was created. The value can be up to 512 characters.
  final pulumi.Input<String>? message;
  /// Required. The ID of the site to which the release belongs.
  final pulumi.Input<String> siteId;
  /// The type of the release; indicates what happened to the content of the site. There is no need to specify
  /// `DEPLOY` or `ROLLBACK` type if a `version_name` is provided.
  /// DEPLOY: A version was uploaded to Firebase Hosting and released. Output only.
  /// ROLLBACK: The release points back to a previously deployed version. Output only.
  /// SITE_DISABLE: The release prevents the site from serving content. Firebase Hosting acts as if the site never existed
  /// Possible values are: `DEPLOY`, `ROLLBACK`, `SITE_DISABLE`.
  final pulumi.Input<String>? type;
  /// The unique identifier for a version, in the format: sites/SITE_ID/versions/VERSION_ID.
  /// The content of the version specified will be actively displayed on the appropriate URL.
  /// The Version must belong to the same site as in the `site_id`.
  /// This parameter must be empty if the `type` of the release is `SITE_DISABLE`.
  final pulumi.Input<String>? versionName;

  /// Creates a new [HostingReleaseArgs].
  /// [channelId] The ID of the channel to which the release belongs. If not provided, the release will
  /// [message] The deploy description when the release was created. The value can be up to 512 characters.
  /// [siteId] Required. The ID of the site to which the release belongs.
  /// [type] The type of the release; indicates what happened to the content of the site. There is no need to specify
  /// [versionName] The unique identifier for a version, in the format: sites/SITE_ID/versions/VERSION_ID.
  HostingReleaseArgs({
    String? channelId,
    String? message,
    required String siteId,
    String? type,
    String? versionName,
  }) :
      channelId = pulumi.Input.asOptionalInput<String>(channelId),
      message = pulumi.Input.asOptionalInput<String>(message),
      siteId = pulumi.Input.asInput<String>(siteId),
      type = pulumi.Input.asOptionalInput<String>(type),
      versionName = pulumi.Input.asOptionalInput<String>(versionName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelId': ?channelId,
      'message': ?message,
      'siteId': siteId,
      'type': ?type,
      'versionName': ?versionName,
    };
  }

  factory HostingReleaseArgs.fromMap(Map<String, dynamic> map) {
    return HostingReleaseArgs(
      channelId: map['channelId'] == null ? null : map['channelId'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      siteId: map['siteId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      versionName: map['versionName'] == null ? null : map['versionName'] as String,
    );
  }
}

