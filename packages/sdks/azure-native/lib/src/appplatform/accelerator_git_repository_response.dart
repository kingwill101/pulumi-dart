// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_basic_auth_setting_response.dart';

class AcceleratorGitRepositoryResponse {
  /// Properties of the auth setting payload.
  final pulumi.Input<AcceleratorBasicAuthSettingResponse> authSetting;
  /// Git repository branch to be used.
  final pulumi.Input<String>? branch;
  /// Git repository commit to be used.
  final pulumi.Input<String>? commit;
  /// Git repository tag to be used.
  final pulumi.Input<String>? gitTag;
  /// Interval for checking for updates to Git or image repository.
  final pulumi.Input<int>? intervalInSeconds;
  /// Folder path inside the git repository to consider as the root of the accelerator or fragment.
  final pulumi.Input<String>? subPath;
  /// Git repository URL for the accelerator.
  final pulumi.Input<String> url;

  /// Creates a new [AcceleratorGitRepositoryResponse].
  /// [authSetting] Properties of the auth setting payload.
  /// [branch] Git repository branch to be used.
  /// [commit] Git repository commit to be used.
  /// [gitTag] Git repository tag to be used.
  /// [intervalInSeconds] Interval for checking for updates to Git or image repository.
  /// [subPath] Folder path inside the git repository to consider as the root of the accelerator or fragment.
  /// [url] Git repository URL for the accelerator.
  AcceleratorGitRepositoryResponse({
    required this.authSetting,
    this.branch,
    this.commit,
    this.gitTag,
    this.intervalInSeconds,
    this.subPath,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authSetting': pulumi.Input.mapInputValue<AcceleratorBasicAuthSettingResponse, Map<String, dynamic>>(authSetting, (value) => value.toMap()),
      'branch': ?branch,
      'commit': ?commit,
      'gitTag': ?gitTag,
      'intervalInSeconds': ?intervalInSeconds,
      'subPath': ?subPath,
      'url': url,
    };
  }

  factory AcceleratorGitRepositoryResponse.fromMap(Map<String, dynamic> map) {
    return AcceleratorGitRepositoryResponse(
      authSetting: (AcceleratorBasicAuthSettingResponse.fromMap((map['authSetting'] as Map).cast<String, dynamic>())).input(),
      branch: map['branch'] == null ? null : (map['branch'] as String).input(),
      commit: map['commit'] == null ? null : (map['commit'] as String).input(),
      gitTag: map['gitTag'] == null ? null : (map['gitTag'] as String).input(),
      intervalInSeconds: map['intervalInSeconds'] == null ? null : (map['intervalInSeconds'] as int).input(),
      subPath: map['subPath'] == null ? null : (map['subPath'] as String).input(),
      url: (map['url'] as String).input(),
    );
  }
}

