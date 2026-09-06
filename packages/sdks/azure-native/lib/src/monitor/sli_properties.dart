// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'signal.dart';
import 'window_uptime_criteria.dart';

/// Defines the properties of an SLI.
class SliProperties {
  /// Represents good signals used in request-based SLI calculations.
  final pulumi.Input<Signal?>? goodSignals;
  /// Signals used for window-based SLI calculations.
  final pulumi.Input<Signal?>? signals;
  /// Represents total signals used in request-based SLI calculations.
  final pulumi.Input<Signal?>? totalSignals;
  /// Defines the uptime criteria for window-based SLIs.
  final pulumi.Input<WindowUptimeCriteria?>? windowUptimeCriteria;

  /// Creates a new [SliProperties].
  /// [goodSignals] Represents good signals used in request-based SLI calculations.
  /// [signals] Signals used for window-based SLI calculations.
  /// [totalSignals] Represents total signals used in request-based SLI calculations.
  /// [windowUptimeCriteria] Defines the uptime criteria for window-based SLIs.
  const SliProperties({
    this.goodSignals,
    this.signals,
    this.totalSignals,
    this.windowUptimeCriteria,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'goodSignals': ?pulumi.Input.mapOptionalInputValue<Signal, Map<String, dynamic>>(goodSignals, (value) => value.toMap()),
      'signals': ?pulumi.Input.mapOptionalInputValue<Signal, Map<String, dynamic>>(signals, (value) => value.toMap()),
      'totalSignals': ?pulumi.Input.mapOptionalInputValue<Signal, Map<String, dynamic>>(totalSignals, (value) => value.toMap()),
      'windowUptimeCriteria': ?pulumi.Input.mapOptionalInputValue<WindowUptimeCriteria, Map<String, dynamic>>(windowUptimeCriteria, (value) => value.toMap()),
    };
  }

  factory SliProperties.fromMap(Map<String, dynamic> map) {
    return SliProperties(
      goodSignals: (() { final guardedValue = map['goodSignals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Signal.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      signals: (() { final guardedValue = map['signals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Signal.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      totalSignals: (() { final guardedValue = map['totalSignals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Signal.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      windowUptimeCriteria: (() { final guardedValue = map['windowUptimeCriteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowUptimeCriteria.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
