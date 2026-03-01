// ignore_for_file: unused_element, unnecessary_cast


class GetStocksStock {
  /// A list of available gateway class in this Zone ID.
  final List<String> availableGatewayClasses;
  /// The Zone ID.
  final String zoneId;

  /// Creates a new [GetStocksStock].
  /// [availableGatewayClasses] A list of available gateway class in this Zone ID.
  /// [zoneId] The Zone ID.
  GetStocksStock({
    required this.availableGatewayClasses,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableGatewayClasses': availableGatewayClasses,
      'zoneId': zoneId,
    };
  }

  factory GetStocksStock.fromMap(Map<String, dynamic> map) {
    return GetStocksStock(
      availableGatewayClasses: (map['availableGatewayClasses'] as List).cast<String>(),
      zoneId: map['zoneId'] as String,
    );
  }
}

