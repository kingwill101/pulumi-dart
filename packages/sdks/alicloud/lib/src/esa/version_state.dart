// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Version resources.
class VersionState {
  /// The creation time. The date format follows ISO8601 notation and uses UTC time. The format is yyyy-MM-ddTHH:mm:ssZ.
  final pulumi.Input<String>? createTime;
  /// The Site version's description.
  final pulumi.Input<String>? description;
  /// The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  final pulumi.Input<int>? originVersion;
  /// The site ID, which can be obtained by calling the ListSites API.
  final pulumi.Input<String>? siteId;
  /// The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  final pulumi.Input<int>? siteVersion;
  /// Site version status:：`online`.：`configuring`._faild`：`configure_faild`.
  final pulumi.Input<String>? status;

  /// Creates a new [VersionState].
  /// [createTime] The creation time. The date format follows ISO8601 notation and uses UTC time. The format is yyyy-MM-ddTHH:mm:ssZ.
  /// [description] The Site version's description.
  /// [originVersion] The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  /// [siteId] The site ID, which can be obtained by calling the ListSites API.
  /// [siteVersion] The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  /// [status] Site version status:：`online`.：`configuring`._faild`：`configure_faild`.
  VersionState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<int>? originVersion,
    pulumi.Output<String>? siteId,
    pulumi.Output<int>? siteVersion,
    pulumi.Output<String>? status,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      originVersion = pulumi.Input.asOptionalInput<int>(originVersion),
      siteId = pulumi.Input.asOptionalInput<String>(siteId),
      siteVersion = pulumi.Input.asOptionalInput<int>(siteVersion),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'originVersion': ?originVersion,
      'siteId': ?siteId,
      'siteVersion': ?siteVersion,
      'status': ?status,
    };
  }

  factory VersionState.fromMap(Map<String, dynamic> map) {
    return VersionState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      originVersion: map['originVersion'] == null ? null : pulumi.Output.create<int>(map['originVersion'] as int),
      siteId: map['siteId'] == null ? null : pulumi.Output.create<String>(map['siteId'] as String),
      siteVersion: map['siteVersion'] == null ? null : pulumi.Output.create<int>(map['siteVersion'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

