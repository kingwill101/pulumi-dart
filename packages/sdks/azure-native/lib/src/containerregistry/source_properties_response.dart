// ignore_for_file: unused_element, unnecessary_cast

import 'auth_info_response.dart';

/// The properties of the source code repository.
class SourcePropertiesResponse {
  /// The branch name of the source code.
  final String? branch;
  /// The full URL to the source code repository
  final String repositoryUrl;
  /// The authorization properties for accessing the source code repository and to set up
  /// webhooks for notifications.
  final AuthInfoResponse? sourceControlAuthProperties;
  /// The type of source control service.
  final String sourceControlType;

  /// Creates a new [SourcePropertiesResponse].
  /// [branch] The branch name of the source code.
  /// [repositoryUrl] The full URL to the source code repository
  /// [sourceControlAuthProperties] The authorization properties for accessing the source code repository and to set up
  /// [sourceControlType] The type of source control service.
  SourcePropertiesResponse({
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

  factory SourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SourcePropertiesResponse(
      branch: map['branch'] == null ? null : map['branch'] as String,
      repositoryUrl: map['repositoryUrl'] as String,
      sourceControlAuthProperties: map['sourceControlAuthProperties'] == null ? null : AuthInfoResponse.fromMap((map['sourceControlAuthProperties'] as Map).cast<String, dynamic>()),
      sourceControlType: map['sourceControlType'] as String,
    );
  }
}

