// ignore_for_file: unused_element, unnecessary_cast

import 'accelerator_basic_auth_setting.dart';

class AcceleratorGitRepository {
  /// Properties of the auth setting payload.
  final AcceleratorBasicAuthSetting authSetting;
  /// Git repository branch to be used.
  final String? branch;
  /// Git repository commit to be used.
  final String? commit;
  /// Git repository tag to be used.
  final String? gitTag;
  /// Interval for checking for updates to Git or image repository.
  final int? intervalInSeconds;
  /// Folder path inside the git repository to consider as the root of the accelerator or fragment.
  final String? subPath;
  /// Git repository URL for the accelerator.
  final String url;

  /// Creates a new [AcceleratorGitRepository].
  /// [authSetting] Properties of the auth setting payload.
  /// [branch] Git repository branch to be used.
  /// [commit] Git repository commit to be used.
  /// [gitTag] Git repository tag to be used.
  /// [intervalInSeconds] Interval for checking for updates to Git or image repository.
  /// [subPath] Folder path inside the git repository to consider as the root of the accelerator or fragment.
  /// [url] Git repository URL for the accelerator.
  AcceleratorGitRepository({
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
      'authSetting': authSetting.toMap(),
      'branch': ?branch,
      'commit': ?commit,
      'gitTag': ?gitTag,
      'intervalInSeconds': ?intervalInSeconds,
      'subPath': ?subPath,
      'url': url,
    };
  }

  factory AcceleratorGitRepository.fromMap(Map<String, dynamic> map) {
    return AcceleratorGitRepository(
      authSetting: AcceleratorBasicAuthSetting.fromMap((map['authSetting'] as Map).cast<String, dynamic>()),
      branch: map['branch'] == null ? null : map['branch'] as String,
      commit: map['commit'] == null ? null : map['commit'] as String,
      gitTag: map['gitTag'] == null ? null : map['gitTag'] as String,
      intervalInSeconds: map['intervalInSeconds'] == null ? null : map['intervalInSeconds'] as int,
      subPath: map['subPath'] == null ? null : map['subPath'] as String,
      url: map['url'] as String,
    );
  }
}

