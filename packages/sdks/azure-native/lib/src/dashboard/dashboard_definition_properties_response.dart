// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties specific to the dashboard definition.
class DashboardDefinitionPropertiesResponse {
  /// The provisioning state of the dashboard definition resource.
  final pulumi.Input<String> provisioningState;

  /// The dashboard definition data in JSON format.
  final pulumi.Input<String>? serializedData;

  /// Creates a new [DashboardDefinitionPropertiesResponse].
  /// [provisioningState] The provisioning state of the dashboard definition resource.
  /// [serializedData] The dashboard definition data in JSON format.
  DashboardDefinitionPropertiesResponse({
    required this.provisioningState,
    this.serializedData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'serializedData': ?serializedData,
    };
  }

  factory DashboardDefinitionPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return DashboardDefinitionPropertiesResponse(
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      serializedData: (() {
        final guardedValue = map['serializedData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
