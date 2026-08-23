// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'signal_response.dart';
import 'window_uptime_criteria_response.dart';

/// Defines the properties of an SLI.
class SliPropertiesResponse {
  /// Represents good signals used in request-based SLI calculations.
  final pulumi.Input<SignalResponse>? goodSignals;
  /// Signals used for window-based SLI calculations.
  final pulumi.Input<SignalResponse>? signals;
  /// Represents total signals used in request-based SLI calculations.
  final pulumi.Input<SignalResponse>? totalSignals;
  /// Defines the uptime criteria for window-based SLIs.
  final pulumi.Input<WindowUptimeCriteriaResponse>? windowUptimeCriteria;

  /// Creates a new [SliPropertiesResponse].
  /// [goodSignals] Represents good signals used in request-based SLI calculations.
  /// [signals] Signals used for window-based SLI calculations.
  /// [totalSignals] Represents total signals used in request-based SLI calculations.
  /// [windowUptimeCriteria] Defines the uptime criteria for window-based SLIs.
  const SliPropertiesResponse({
    this.goodSignals,
    this.signals,
    this.totalSignals,
    this.windowUptimeCriteria,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'goodSignals': ?pulumi.Input.mapOptionalInputValue<SignalResponse, Map<String, dynamic>>(goodSignals, (value) => value.toMap()),
      'signals': ?pulumi.Input.mapOptionalInputValue<SignalResponse, Map<String, dynamic>>(signals, (value) => value.toMap()),
      'totalSignals': ?pulumi.Input.mapOptionalInputValue<SignalResponse, Map<String, dynamic>>(totalSignals, (value) => value.toMap()),
      'windowUptimeCriteria': ?pulumi.Input.mapOptionalInputValue<WindowUptimeCriteriaResponse, Map<String, dynamic>>(windowUptimeCriteria, (value) => value.toMap()),
    };
  }

  factory SliPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SliPropertiesResponse(
      goodSignals: (() { final guardedValue = map['goodSignals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SignalResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      signals: (() { final guardedValue = map['signals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SignalResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      totalSignals: (() { final guardedValue = map['totalSignals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SignalResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      windowUptimeCriteria: (() { final guardedValue = map['windowUptimeCriteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowUptimeCriteriaResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
