// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'signal_source.dart';

/// Represents a signal model used in SLI calculations.
class Signal {
  /// Mathematical formula used to combine multiple metrics.
  final pulumi.Input<String> signalFormula;
  /// Sources of metrics used for SLIs.
  final pulumi.Input<List<SignalSource>> signalSources;

  /// Creates a new [Signal].
  /// [signalFormula] Mathematical formula used to combine multiple metrics.
  /// [signalSources] Sources of metrics used for SLIs.
  const Signal({
    required this.signalFormula,
    required this.signalSources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'signalFormula': signalFormula,
      'signalSources': pulumi.Input.mapInputValue<List<SignalSource>, List<Map<String, dynamic>>>(signalSources, (value) => pulumi.Input.encodeList<SignalSource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory Signal.fromMap(Map<String, dynamic> map) {
    return Signal(
      signalFormula: pulumi.Input.fromValue(map['signalFormula'] as String),
      signalSources: pulumi.Input.fromValue(pulumi.Input.decodeList<SignalSource>(map['signalSources']!, (value) => SignalSource.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
