// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_info.dart';

/// The properties of the source code repository.
class SourceProperties {
  /// The branch name of the source code.
  final pulumi.Input<String>? branch;

  /// The full URL to the source code repository
  final pulumi.Input<String> repositoryUrl;

  /// The authorization properties for accessing the source code repository and to set up
  /// webhooks for notifications.
  final pulumi.Input<AuthInfo>? sourceControlAuthProperties;

  /// The type of source control service.
  final pulumi.Input<String> sourceControlType;

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
      'sourceControlAuthProperties':
          ?pulumi.Input.mapOptionalInputValue<AuthInfo, Map<String, dynamic>>(
            sourceControlAuthProperties,
            (value) => value.toMap(),
          ),
      'sourceControlType': sourceControlType,
    };
  }

  factory SourceProperties.fromMap(Map<String, dynamic> map) {
    return SourceProperties(
      branch: (() {
        final guardedValue = map['branch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      repositoryUrl: pulumi.Input.fromValue(map['repositoryUrl'] as String),
      sourceControlAuthProperties: (() {
        final guardedValue = map['sourceControlAuthProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AuthInfo.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      sourceControlType: pulumi.Input.fromValue(
        map['sourceControlType'] as String,
      ),
    );
  }
}
