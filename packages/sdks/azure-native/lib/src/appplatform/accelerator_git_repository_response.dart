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
  const AcceleratorGitRepositoryResponse({
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
      authSetting: pulumi.Input.fromValue(AcceleratorBasicAuthSettingResponse.fromMap((map['authSetting']! as Map).cast<String, dynamic>())),
      branch: (() { final guardedValue = map['branch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commit: (() { final guardedValue = map['commit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gitTag: (() { final guardedValue = map['gitTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      intervalInSeconds: (() { final guardedValue = map['intervalInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      subPath: (() { final guardedValue = map['subPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

