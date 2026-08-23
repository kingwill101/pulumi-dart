// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceParametersAthena {
  /// Use the `roleArn` to override an account-wide role for a specific athena data source.
  final pulumi.Input<String>? roleArn;
  /// The work-group to which to connect.
  final pulumi.Input<String>? workGroup;

  /// Creates a new [DataSourceParametersAthena].
  /// [roleArn] Use the `roleArn` to override an account-wide role for a specific athena data source.
  /// [workGroup] The work-group to which to connect.
  const DataSourceParametersAthena({
    this.roleArn,
    this.workGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roleArn': ?roleArn,
      'workGroup': ?workGroup,
    };
  }

  factory DataSourceParametersAthena.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersAthena(
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workGroup: (() { final guardedValue = map['workGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
