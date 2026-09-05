// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectDataDeliveryCloudwatchLogs {
  /// The name of the log group where the project stores evaluation events.
  final pulumi.Input<String?>? logGroup;

  /// Creates a new [ProjectDataDeliveryCloudwatchLogs].
  /// [logGroup] The name of the log group where the project stores evaluation events.
  const ProjectDataDeliveryCloudwatchLogs({
    this.logGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logGroup': ?logGroup,
    };
  }

  factory ProjectDataDeliveryCloudwatchLogs.fromMap(Map<String, dynamic> map) {
    return ProjectDataDeliveryCloudwatchLogs(
      logGroup: (() { final guardedValue = map['logGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
