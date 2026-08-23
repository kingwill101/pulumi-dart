// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkgroupConfigurationQueryResultsS3AccessGrantsConfiguration {
  /// The authentication type used for Amazon S3 access grants. Currently, only `DIRECTORY_IDENTITY` is supported.
  final pulumi.Input<String> authenticationType;
  /// When enabled, appends the user ID as an Amazon S3 path prefix to the query result output location. Defaults to `false`.
  final pulumi.Input<bool>? createUserLevelPrefix;
  /// Specifies whether Amazon S3 access grants are enabled for query results.
  final pulumi.Input<bool> enableS3AccessGrants;

  /// Creates a new [WorkgroupConfigurationQueryResultsS3AccessGrantsConfiguration].
  /// [authenticationType] The authentication type used for Amazon S3 access grants. Currently, only `DIRECTORY_IDENTITY` is supported.
  /// [createUserLevelPrefix] When enabled, appends the user ID as an Amazon S3 path prefix to the query result output location. Defaults to `false`.
  /// [enableS3AccessGrants] Specifies whether Amazon S3 access grants are enabled for query results.
  const WorkgroupConfigurationQueryResultsS3AccessGrantsConfiguration({
    required this.authenticationType,
    this.createUserLevelPrefix,
    required this.enableS3AccessGrants,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': authenticationType,
      'createUserLevelPrefix': ?createUserLevelPrefix,
      'enableS3AccessGrants': enableS3AccessGrants,
    };
  }

  factory WorkgroupConfigurationQueryResultsS3AccessGrantsConfiguration.fromMap(Map<String, dynamic> map) {
    return WorkgroupConfigurationQueryResultsS3AccessGrantsConfiguration(
      authenticationType: pulumi.Input.fromValue(map['authenticationType'] as String),
      createUserLevelPrefix: (() { final guardedValue = map['createUserLevelPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableS3AccessGrants: pulumi.Input.fromValue(map['enableS3AccessGrants'] as bool),
    );
  }
}
