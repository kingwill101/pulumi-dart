// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudstoragegateway_get_stocks_get_stocks_args_doc}
/// Arguments for getStocks.
/// {@endtemplate}
/// {@macro pulumi_cloudstoragegateway_get_stocks_get_stocks_args_doc}
class GetStocksArgs {
  /// The gateway class. Valid values: `Basic`, `Standard`,`Enhanced`,`Advanced`.
  final pulumi.Input<String>? gatewayClass;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetStocksArgs].
  /// [gatewayClass] The gateway class. Valid values: `Basic`, `Standard`,`Enhanced`,`Advanced`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetStocksArgs({
    String? gatewayClass,
    String? outputFile,
  }) :
      gatewayClass = pulumi.Input.asOptionalInput<String>(gatewayClass),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayClass': ?gatewayClass,
      'outputFile': ?outputFile,
    };
  }

  factory GetStocksArgs.fromMap(Map<String, dynamic> map) {
    return GetStocksArgs(
      gatewayClass: map['gatewayClass'] == null ? null : map['gatewayClass'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

