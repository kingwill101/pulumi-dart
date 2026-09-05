// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEndpoint.
class GetEndpointResult {
  /// Endpoint based on `endpointType`:
  /// * No `endpointType`: Either `iot:Data` or `iot:Data-ATS` [depending on region](https://aws.amazon.com/blogs/iot/aws-iot-core-ats-endpoints/)
  /// * `iot:CredentialsProvider`: `IDENTIFIER.credentials.iot.REGION.amazonaws.com`
  /// * `iot:Data`: `IDENTIFIER.iot.REGION.amazonaws.com`
  /// * `iot:Data-ATS`: `IDENTIFIER-ats.iot.REGION.amazonaws.com`
  /// * `iot:Jobs`: `IDENTIFIER.jobs.iot.REGION.amazonaws.com`
  final String? endpointAddress;
  final String? endpointType;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;

  /// Creates a new [GetEndpointResult].
  /// [endpointAddress] Endpoint based on `endpointType`:
  /// [endpointType] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  const GetEndpointResult({
    this.endpointAddress,
    this.endpointType,
    this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointAddress': ?endpointAddress,
      'endpointType': ?endpointType,
      'id': ?id,
      'region': ?region,
    };
  }

  factory GetEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetEndpointResult(
      endpointAddress: (() { final guardedValue = map['endpointAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpointType: (() { final guardedValue = map['endpointType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
