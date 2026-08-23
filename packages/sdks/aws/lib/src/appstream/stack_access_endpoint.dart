// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StackAccessEndpoint {
  /// Type of the interface endpoint. See the [`AccessEndpoint` AWS API documentation](https://docs.aws.amazon.com/appstream2/latest/APIReference/API_AccessEndpoint.html) for valid values.
  final pulumi.Input<String> endpointType;
  /// ID of the VPC in which the interface endpoint is used.
  final pulumi.Input<String>? vpceId;

  /// Creates a new [StackAccessEndpoint].
  /// [endpointType] Type of the interface endpoint. See the [`AccessEndpoint` AWS API documentation](https://docs.aws.amazon.com/appstream2/latest/APIReference/API_AccessEndpoint.html) for valid values.
  /// [vpceId] ID of the VPC in which the interface endpoint is used.
  const StackAccessEndpoint({
    required this.endpointType,
    this.vpceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointType': endpointType,
      'vpceId': ?vpceId,
    };
  }

  factory StackAccessEndpoint.fromMap(Map<String, dynamic> map) {
    return StackAccessEndpoint(
      endpointType: pulumi.Input.fromValue(map['endpointType'] as String),
      vpceId: (() { final guardedValue = map['vpceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
