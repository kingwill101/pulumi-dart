// ignore_for_file: unused_element, unnecessary_cast

class GetRegionNetworkEndpointGroupPscData {
  /// The PSC producer port to use when consumer PSC NEG connects to a producer. If
  /// this flag isn't specified for a PSC NEG with endpoint type
  /// private-service-connect, then PSC NEG will be connected to a first port in the
  /// available PSC producer port range.
  final String producerPort;

  GetRegionNetworkEndpointGroupPscData({
    required this.producerPort,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['producerPort'] = producerPort;
    return map;
  }

  factory GetRegionNetworkEndpointGroupPscData.fromMap(
      Map<String, dynamic> map) {
    return GetRegionNetworkEndpointGroupPscData(
      producerPort: map['producerPort'] as String,
    );
  }
}
