// ignore_for_file: unused_element, unnecessary_cast

import 'auth_info.dart';

/// The properties of the source code repository.
class SourceProperties {
  /// The branch name of the source code.
  final String? branch;
  /// The full URL to the source code repository
  final String repositoryUrl;
  /// The authorization properties for accessing the source code repository and to set up
  /// webhooks for notifications.
  final AuthInfo? sourceControlAuthProperties;
  /// The type of source control service.
  final String sourceControlType;

  /// Creates a new [SourceProperties].
  /// [branch] The branch name of the source code.
  /// [repositoryUrl] The full URL to the source code repository
  /// [sourceControlAuthProperties] The authorization properties for accessing the source code repository and to set up
  /// [sourceControlType] The type of source control service.
  SourceProperties({
    this.branch,
    required this.repositoryUrl,
    this.sourceControlAuthProperties,
    required this.sourceControlType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': ?branch,
      'repositoryUrl': repositoryUrl,
      'sourceControlAuthProperties': ?sourceControlAuthProperties == null ? null : sourceControlAuthProperties!.toMap(),
      'sourceControlType': sourceControlType,
    };
  }

  factory SourceProperties.fromMap(Map<String, dynamic> map) {
    return SourceProperties(
      branch: map['branch'] == null ? null : map['branch'] as String,
      repositoryUrl: map['repositoryUrl'] as String,
      sourceControlAuthProperties: map['sourceControlAuthProperties'] == null ? null : AuthInfo.fromMap((map['sourceControlAuthProperties'] as Map).cast<String, dynamic>()),
      sourceControlType: map['sourceControlType'] as String,
    );
  }
}

