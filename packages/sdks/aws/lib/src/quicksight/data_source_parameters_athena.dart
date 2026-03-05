// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceParametersAthena {
  /// The work-group to which to connect.
  final pulumi.Input<String>? workGroup;

  /// Creates a new [DataSourceParametersAthena].
  /// [workGroup] The work-group to which to connect.
  DataSourceParametersAthena({
    this.workGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workGroup': ?workGroup,
    };
  }

  factory DataSourceParametersAthena.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersAthena(
      workGroup: (() { final guardedValue = map['workGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

