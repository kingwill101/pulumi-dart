// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInterfaceVirtualPortParamsMidoNet {
  /// Sets the interface ID for the MidoNet virtual port parameters.
  final String? interfaceId;

  /// Creates a new [DomainDevicesInterfaceVirtualPortParamsMidoNet].
  /// [interfaceId] Sets the interface ID for the MidoNet virtual port parameters.
  DomainDevicesInterfaceVirtualPortParamsMidoNet({
    this.interfaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interfaceId': ?interfaceId,
    };
  }

  factory DomainDevicesInterfaceVirtualPortParamsMidoNet.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceVirtualPortParamsMidoNet(
      interfaceId: map['interfaceId'] == null ? null : map['interfaceId'] as String,
    );
  }
}

