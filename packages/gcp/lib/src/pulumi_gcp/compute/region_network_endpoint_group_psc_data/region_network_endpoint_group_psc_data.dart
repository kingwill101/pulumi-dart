// ignore_for_file: unused_element, unnecessary_cast

class RegionNetworkEndpointGroupPscData {
  /// The PSC producer port to use when consumer PSC NEG connects to a producer. If
  /// this flag isn't specified for a PSC NEG with endpoint type
  /// private-service-connect, then PSC NEG will be connected to a first port in the
  /// available PSC producer port range.
  final String? producerPort;

  RegionNetworkEndpointGroupPscData({
    this.producerPort,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final producerPortValue = producerPort;
    if (producerPortValue != null) {
      map['producerPort'] = producerPortValue;
    }
    return map;
  }

  factory RegionNetworkEndpointGroupPscData.fromMap(Map<String, dynamic> map) {
    return RegionNetworkEndpointGroupPscData(
      producerPort:
          map['producerPort'] == null ? null : map['producerPort'] as String,
    );
  }
}
