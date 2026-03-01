// ignore_for_file: unused_element, unnecessary_cast


class NetworkVirtualPortParamsMidoNet {
  /// Specifies the interface ID for MidoNet virtual port parameters.
  final String? interfaceId;

  /// Creates a new [NetworkVirtualPortParamsMidoNet].
  /// [interfaceId] Specifies the interface ID for MidoNet virtual port parameters.
  NetworkVirtualPortParamsMidoNet({
    this.interfaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interfaceId': ?interfaceId,
    };
  }

  factory NetworkVirtualPortParamsMidoNet.fromMap(Map<String, dynamic> map) {
    return NetworkVirtualPortParamsMidoNet(
      interfaceId: map['interfaceId'] == null ? null : map['interfaceId'] as String,
    );
  }
}

