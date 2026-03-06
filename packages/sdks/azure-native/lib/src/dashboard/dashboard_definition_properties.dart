// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties specific to the dashboard definition.
class DashboardDefinitionProperties {
  /// The dashboard definition data in JSON format.
  final pulumi.Input<String>? serializedData;

  /// Creates a new [DashboardDefinitionProperties].
  /// [serializedData] The dashboard definition data in JSON format.
  const DashboardDefinitionProperties({
    this.serializedData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serializedData': ?serializedData,
    };
  }

  factory DashboardDefinitionProperties.fromMap(Map<String, dynamic> map) {
    return DashboardDefinitionProperties(
      serializedData: (() { final guardedValue = map['serializedData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

