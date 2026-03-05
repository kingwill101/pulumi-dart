// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_stocks_stock.dart';

/// Result data returned by getStocks.
class GetStocksResult {
  final String? gatewayClass;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? outputFile;
  final List<GetStocksStock> stocks;

  /// Creates a new [GetStocksResult].
  /// [gatewayClass] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [outputFile] Optional.
  /// [stocks] Required.
  GetStocksResult({
    this.gatewayClass,
    required this.id,
    this.outputFile,
    required this.stocks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayClass': ?gatewayClass,
      'id': id,
      'outputFile': ?outputFile,
      'stocks': pulumi.Input.encodeList<GetStocksStock, Map<String, dynamic>>(stocks, (value) => value.toMap()),
    };
  }

  factory GetStocksResult.fromMap(Map<String, dynamic> map) {
    return GetStocksResult(
      gatewayClass: (() { final guardedValue = map['gatewayClass']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stocks: pulumi.Input.decodeList<GetStocksStock>(map['stocks']!, (value) => GetStocksStock.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

