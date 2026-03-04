// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetExperienceEndpoint {
  /// Endpoint of your Amazon Kendra Experience.
  final pulumi.Input<String> endpoint;

  /// Type of endpoint for your Amazon Kendra Experience.
  final pulumi.Input<String> endpointType;

  /// Creates a new [GetExperienceEndpoint].
  /// [endpoint] Endpoint of your Amazon Kendra Experience.
  /// [endpointType] Type of endpoint for your Amazon Kendra Experience.
  GetExperienceEndpoint({required this.endpoint, required this.endpointType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'endpointType': endpointType,
    };
  }

  factory GetExperienceEndpoint.fromMap(Map<String, dynamic> map) {
    return GetExperienceEndpoint(
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      endpointType: pulumi.Input.fromValue(map['endpointType'] as String),
    );
  }
}
