// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of DBClusterRole
class DBClusterRoleResponse {
  /// The name of the feature associated with the AWS Identity and Access Management (IAM) role. For the list of supported feature names, see DBEngineVersion in the Amazon RDS API Reference.
  final pulumi.Input<String>? featureName;
  /// The Amazon Resource Name (ARN) of the IAM role that is associated with the DB cluster.
  final pulumi.Input<String>? roleArn;

  /// Creates a new [DBClusterRoleResponse].
  /// [featureName] The name of the feature associated with the AWS Identity and Access Management (IAM) role. For the list of supported feature names, see DBEngineVersion in the Amazon RDS API Reference.
  /// [roleArn] The Amazon Resource Name (ARN) of the IAM role that is associated with the DB cluster.
  DBClusterRoleResponse({
    this.featureName,
    this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureName': ?featureName,
      'roleArn': ?roleArn,
    };
  }

  factory DBClusterRoleResponse.fromMap(Map<String, dynamic> map) {
    return DBClusterRoleResponse(
      featureName: map['featureName'] == null ? null : (map['featureName'] as String).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn'] as String).input(),
    );
  }
}

