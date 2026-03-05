// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_prices_price.dart';

/// Result data returned by getPrices.
class GetPricesResult {
  final Map<String, String>? desireAttributes;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? outputFile;
  /// A list of Price Entries. Each element contains the following attributes:
  final List<GetPricesPrice> prices;
  final String product;
  final String resourceCode;

  /// Creates a new [GetPricesResult].
  /// [desireAttributes] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [outputFile] Optional.
  /// [prices] A list of Price Entries. Each element contains the following attributes:
  /// [product] Required.
  /// [resourceCode] Required.
  GetPricesResult({
    this.desireAttributes,
    required this.id,
    this.outputFile,
    required this.prices,
    required this.product,
    required this.resourceCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desireAttributes': ?desireAttributes,
      'id': id,
      'outputFile': ?outputFile,
      'prices': pulumi.Input.encodeList<GetPricesPrice, Map<String, dynamic>>(prices, (value) => value.toMap()),
      'product': product,
      'resourceCode': resourceCode,
    };
  }

  factory GetPricesResult.fromMap(Map<String, dynamic> map) {
    return GetPricesResult(
      desireAttributes: (() { final guardedValue = map['desireAttributes']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      id: map['id'] as String,
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      prices: pulumi.Input.decodeList<GetPricesPrice>(map['prices']!, (value) => GetPricesPrice.fromMap((value as Map).cast<String, dynamic>())),
      product: map['product'] as String,
      resourceCode: map['resourceCode'] as String,
    );
  }
}

