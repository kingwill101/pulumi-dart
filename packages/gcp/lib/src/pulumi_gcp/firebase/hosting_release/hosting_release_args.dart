// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for HostingRelease.
class HostingReleaseArgs {
  /// The ID of the channel to which the release belongs. If not provided, the release will
  /// belong to the default "live" channel
  final Input<String>? channelId;

  /// The deploy description when the release was created. The value can be up to 512 characters.
  final Input<String>? message;

  /// Required. The ID of the site to which the release belongs.
  final Input<String> siteId;

  /// The type of the release; indicates what happened to the content of the site. There is no need to specify
  /// `DEPLOY` or `ROLLBACK` type if a <span pulumi-lang-nodejs="`versionName`" pulumi-lang-dotnet="`VersionName`" pulumi-lang-go="`versionName`" pulumi-lang-python="`version_name`" pulumi-lang-yaml="`versionName`" pulumi-lang-java="`versionName`">`version_name`</span> is provided.
  /// DEPLOY: A version was uploaded to Firebase Hosting and released. Output only.
  /// ROLLBACK: The release points back to a previously deployed version. Output only.
  /// SITE_DISABLE: The release prevents the site from serving content. Firebase Hosting acts as if the site never existed
  /// Possible values are: `DEPLOY`, `ROLLBACK`, `SITE_DISABLE`.
  final Input<String>? type;

  /// The unique identifier for a version, in the format: sites/SITE_ID/versions/VERSION_ID.
  /// The content of the version specified will be actively displayed on the appropriate URL.
  /// The Version must belong to the same site as in the <span pulumi-lang-nodejs="`siteId`" pulumi-lang-dotnet="`SiteId`" pulumi-lang-go="`siteId`" pulumi-lang-python="`site_id`" pulumi-lang-yaml="`siteId`" pulumi-lang-java="`siteId`">`site_id`</span>.
  /// This parameter must be empty if the <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> of the release is `SITE_DISABLE`.
  final Input<String>? versionName;

  HostingReleaseArgs({
    this.channelId,
    this.message,
    required this.siteId,
    this.type,
    this.versionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final channelIdValue = channelId;
    if (channelIdValue != null) {
      map['channelId'] = channelIdValue;
    }
    final messageValue = message;
    if (messageValue != null) {
      map['message'] = messageValue;
    }
    map['siteId'] = siteId;
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final versionNameValue = versionName;
    if (versionNameValue != null) {
      map['versionName'] = versionNameValue;
    }
    return map;
  }

  factory HostingReleaseArgs.fromMap(Map<String, dynamic> map) {
    return HostingReleaseArgs(
      channelId: Input.asOptionalInput<String>(map['channelId']),
      message: Input.asOptionalInput<String>(map['message']),
      siteId: Input.asInput<String>(map['siteId']),
      type: Input.asOptionalInput<String>(map['type']),
      versionName: Input.asOptionalInput<String>(map['versionName']),
    );
  }
}
