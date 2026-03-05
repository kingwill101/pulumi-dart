// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStocksStock {
  /// A list of available gateway class in this Zone ID.
  final pulumi.Input<List<String>> availableGatewayClasses;
  /// The Zone ID.
  final pulumi.Input<String> zoneId;

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
      availableGatewayClasses: pulumi.Input.fromValue((map['availableGatewayClasses'] as List).cast<String>()),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

