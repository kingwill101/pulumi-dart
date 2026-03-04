// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImageBuilderAccessEndpoint {
  /// Type of interface endpoint. For valid values, refer to the [AWS documentation](https://docs.aws.amazon.com/appstream2/latest/APIReference/API_AccessEndpoint.html).
  final pulumi.Input<String> endpointType;

  /// Identifier (ID) of the interface VPC endpoint.
  final pulumi.Input<String>? vpceId;

  /// Creates a new [ImageBuilderAccessEndpoint].
  /// [endpointType] Type of interface endpoint. For valid values, refer to the [AWS documentation](https://docs.aws.amazon.com/appstream2/latest/APIReference/API_AccessEndpoint.html).
  /// [vpceId] Identifier (ID) of the interface VPC endpoint.
  ImageBuilderAccessEndpoint({required this.endpointType, this.vpceId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'endpointType': endpointType, 'vpceId': ?vpceId};
  }

  factory ImageBuilderAccessEndpoint.fromMap(Map<String, dynamic> map) {
    return ImageBuilderAccessEndpoint(
      endpointType: pulumi.Input.fromValue(map['endpointType'] as String),
      vpceId: (() {
        final guardedValue = map['vpceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
