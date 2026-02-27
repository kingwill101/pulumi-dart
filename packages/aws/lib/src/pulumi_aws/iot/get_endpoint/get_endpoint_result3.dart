// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getEndpoint.
class GetEndpointResult3 {
  /// Endpoint based on `endpoint_type`:
  /// * No `endpoint_type`: Either `iot:Data` or `iot:Data-ATS` [depending on region](https://aws.amazon.com/blogs/iot/aws-iot-core-ats-endpoints/)
  /// * `iot:CredentialsProvider`: `IDENTIFIER.credentials.iot.REGION.amazonaws.com`
  /// * `iot:Data`: `IDENTIFIER.iot.REGION.amazonaws.com`
  /// * `iot:Data-ATS`: `IDENTIFIER-ats.iot.REGION.amazonaws.com`
  /// * `iot:Jobs`: `IDENTIFIER.jobs.iot.REGION.amazonaws.com`
  final String endpointAddress;
  final String? endpointType;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  GetEndpointResult3({
    required this.endpointAddress,
    this.endpointType,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpointAddress'] = endpointAddress;
    final endpointTypeValue = endpointType;
    if (endpointTypeValue != null) {
      map['endpointType'] = endpointTypeValue;
    }
    map['id'] = id;
    map['region'] = region;
    return map;
  }

  factory GetEndpointResult3.fromMap(Map<String, dynamic> map) {
    return GetEndpointResult3(
      endpointAddress: map['endpointAddress'] as String,
      endpointType:
          map['endpointType'] == null ? null : map['endpointType'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
