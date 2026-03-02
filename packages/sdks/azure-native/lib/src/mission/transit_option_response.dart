// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'transit_option_params_response.dart';

/// TransitOption Properties
class TransitOptionResponse {
  /// Transit Option Params
  final pulumi.Input<TransitOptionParamsResponse>? params;
  /// Transit Option Type.
  final pulumi.Input<String>? type;

  /// Creates a new [TransitOptionResponse].
  /// [params] Transit Option Params
  /// [type] Transit Option Type.
  TransitOptionResponse({
    this.params,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'params': ?pulumi.Input.mapOptionalInputValue<TransitOptionParamsResponse, Map<String, dynamic>>(params, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory TransitOptionResponse.fromMap(Map<String, dynamic> map) {
    return TransitOptionResponse(
      params: map['params'] == null ? null : (TransitOptionParamsResponse.fromMap((map['params']! as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

