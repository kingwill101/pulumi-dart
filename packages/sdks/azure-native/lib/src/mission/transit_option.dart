// ignore_for_file: unused_element, unnecessary_cast

import 'transit_option_params.dart';

/// TransitOption Properties
class TransitOption {
  /// Transit Option Params
  final TransitOptionParams? params;
  /// Transit Option Type.
  final String? type;

  /// Creates a new [TransitOption].
  /// [params] Transit Option Params
  /// [type] Transit Option Type.
  TransitOption({
    this.params,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'params': ?params == null ? null : params!.toMap(),
      'type': ?type,
    };
  }

  factory TransitOption.fromMap(Map<String, dynamic> map) {
    return TransitOption(
      params: map['params'] == null ? null : TransitOptionParams.fromMap((map['params'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

