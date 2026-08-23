// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'signal_source_response.dart';

/// Represents a signal model used in SLI calculations.
class SignalResponse {
  /// Mathematical formula used to combine multiple metrics.
  final pulumi.Input<String> signalFormula;
  /// Sources of metrics used for SLIs.
  final pulumi.Input<List<SignalSourceResponse>> signalSources;

  /// Creates a new [SignalResponse].
  /// [signalFormula] Mathematical formula used to combine multiple metrics.
  /// [signalSources] Sources of metrics used for SLIs.
  const SignalResponse({
    required this.signalFormula,
    required this.signalSources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'signalFormula': signalFormula,
      'signalSources': pulumi.Input.mapInputValue<List<SignalSourceResponse>, List<Map<String, dynamic>>>(signalSources, (value) => pulumi.Input.encodeList<SignalSourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SignalResponse.fromMap(Map<String, dynamic> map) {
    return SignalResponse(
      signalFormula: pulumi.Input.fromValue(map['signalFormula'] as String),
      signalSources: pulumi.Input.fromValue(pulumi.Input.decodeList<SignalSourceResponse>(map['signalSources']!, (value) => SignalSourceResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
