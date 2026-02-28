// ignore_for_file: unused_element, unnecessary_cast

class StackAccessEndpoint {
  /// Type of the interface endpoint.
  /// See the [`AccessEndpoint` AWS API documentation](https://docs.aws.amazon.com/appstream2/latest/APIReference/API_AccessEndpoint.html) for valid values.
  final String endpointType;

  /// ID of the VPC in which the interface endpoint is used.
  final String? vpceId;

  /// Creates a new [StackAccessEndpoint].
  /// [endpointType] Type of the interface endpoint.
  /// [vpceId] ID of the VPC in which the interface endpoint is used.
  StackAccessEndpoint({
    required this.endpointType,
    this.vpceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpointType'] = endpointType;
    final vpceIdValue = vpceId;
    if (vpceIdValue != null) {
      map['vpceId'] = vpceIdValue;
    }
    return map;
  }

  factory StackAccessEndpoint.fromMap(Map<String, dynamic> map) {
    return StackAccessEndpoint(
      endpointType: map['endpointType'] as String,
      vpceId: map['vpceId'] == null ? null : map['vpceId'] as String,
    );
  }
}
