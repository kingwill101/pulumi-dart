// ignore_for_file: unused_element, unnecessary_cast


class ImageBuilderAccessEndpoint {
  /// Type of interface endpoint. For valid values, refer to the [AWS documentation](https://docs.aws.amazon.com/appstream2/latest/APIReference/API_AccessEndpoint.html).
  final String endpointType;
  /// Identifier (ID) of the interface VPC endpoint.
  final String? vpceId;

  /// Creates a new [ImageBuilderAccessEndpoint].
  /// [endpointType] Type of interface endpoint. For valid values, refer to the [AWS documentation](https://docs.aws.amazon.com/appstream2/latest/APIReference/API_AccessEndpoint.html).
  /// [vpceId] Identifier (ID) of the interface VPC endpoint.
  ImageBuilderAccessEndpoint({
    required this.endpointType,
    this.vpceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointType': endpointType,
      'vpceId': ?vpceId,
    };
  }

  factory ImageBuilderAccessEndpoint.fromMap(Map<String, dynamic> map) {
    return ImageBuilderAccessEndpoint(
      endpointType: map['endpointType'] as String,
      vpceId: map['vpceId'] == null ? null : map['vpceId'] as String,
    );
  }
}

