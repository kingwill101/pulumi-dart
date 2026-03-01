// ignore_for_file: unused_element, unnecessary_cast


class InputEndpointResponse {
  final String? endpointName;
  final int? privatePort;
  final String? protocol;
  final int? publicPort;

  /// Creates a new [InputEndpointResponse].
  /// [endpointName] Optional.
  /// [privatePort] Optional.
  /// [protocol] Optional.
  /// [publicPort] Optional.
  InputEndpointResponse({
    this.endpointName,
    this.privatePort,
    this.protocol,
    this.publicPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': ?endpointName,
      'privatePort': ?privatePort,
      'protocol': ?protocol,
      'publicPort': ?publicPort,
    };
  }

  factory InputEndpointResponse.fromMap(Map<String, dynamic> map) {
    return InputEndpointResponse(
      endpointName: map['endpointName'] == null ? null : map['endpointName'] as String,
      privatePort: map['privatePort'] == null ? null : map['privatePort'] as int,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      publicPort: map['publicPort'] == null ? null : map['publicPort'] as int,
    );
  }
}

