// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEndpoint.
class GetEndpointResult {
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

  /// Creates a new [GetEndpointResult].
  /// [endpointAddress] Endpoint based on `endpoint_type`:
  /// [endpointType] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  GetEndpointResult({
    required this.endpointAddress,
    this.endpointType,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointAddress': endpointAddress,
      'endpointType': ?endpointType,
      'id': id,
      'region': region,
    };
  }

  factory GetEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetEndpointResult(
      endpointAddress: map['endpointAddress'] as String,
      endpointType: (() { final guardedValue = map['endpointType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}

