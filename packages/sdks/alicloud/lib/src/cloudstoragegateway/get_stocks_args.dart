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
    this.gatewayClass,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayClass': ?gatewayClass,
      'outputFile': ?outputFile,
    };
  }

  factory GetStocksArgs.fromMap(Map<String, dynamic> map) {
    return GetStocksArgs(
      gatewayClass: (() { final guardedValue = map['gatewayClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

