// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'transit_option_params.dart';

/// TransitOption Properties
class TransitOption {
  /// Transit Option Params
  final pulumi.Input<TransitOptionParams>? params;

  /// Transit Option Type.
  final pulumi.Input<String>? type;

  /// Creates a new [TransitOption].
  /// [params] Transit Option Params
  /// [type] Transit Option Type.
  TransitOption({this.params, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'params':
          ?pulumi.Input.mapOptionalInputValue<
            TransitOptionParams,
            Map<String, dynamic>
          >(params, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory TransitOption.fromMap(Map<String, dynamic> map) {
    return TransitOption(
      params: (() {
        final guardedValue = map['params'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TransitOptionParams.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
