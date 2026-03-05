// ignore_for_file: unused_element, unnecessary_cast

import 'application_insights_response.dart';
import 'log_destination_response.dart';

/// Result data returned by getFirewallLogProfile.
class GetFirewallLogProfileResult {
  /// Application Insight details
  final ApplicationInsightsResponse? applicationInsights;
  /// Common destination configurations
  final LogDestinationResponse? commonDestination;
  /// Decrypt destination configurations
  final LogDestinationResponse? decryptLogDestination;
  /// Log option SAME/INDIVIDUAL
  final String? logOption;
  /// One of possible log type
  final String? logType;
  /// Threat destination configurations
  final LogDestinationResponse? threatLogDestination;
  /// Traffic destination configurations
  final LogDestinationResponse? trafficLogDestination;

  /// Creates a new [GetFirewallLogProfileResult].
  /// [applicationInsights] Application Insight details
  /// [commonDestination] Common destination configurations
  /// [decryptLogDestination] Decrypt destination configurations
  /// [logOption] Log option SAME/INDIVIDUAL
  /// [logType] One of possible log type
  /// [threatLogDestination] Threat destination configurations
  /// [trafficLogDestination] Traffic destination configurations
  GetFirewallLogProfileResult({
    this.applicationInsights,
    this.commonDestination,
    this.decryptLogDestination,
    this.logOption,
    this.logType,
    this.threatLogDestination,
    this.trafficLogDestination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationInsights': ?applicationInsights?.toMap(),
      'commonDestination': ?commonDestination?.toMap(),
      'decryptLogDestination': ?decryptLogDestination?.toMap(),
      'logOption': ?logOption,
      'logType': ?logType,
      'threatLogDestination': ?threatLogDestination?.toMap(),
      'trafficLogDestination': ?trafficLogDestination?.toMap(),
    };
  }

  factory GetFirewallLogProfileResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallLogProfileResult(
      applicationInsights: (() { final guardedValue = map['applicationInsights']; if (guardedValue == null) return null; return ApplicationInsightsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      commonDestination: (() { final guardedValue = map['commonDestination']; if (guardedValue == null) return null; return LogDestinationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      decryptLogDestination: (() { final guardedValue = map['decryptLogDestination']; if (guardedValue == null) return null; return LogDestinationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      logOption: (() { final guardedValue = map['logOption']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logType: (() { final guardedValue = map['logType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      threatLogDestination: (() { final guardedValue = map['threatLogDestination']; if (guardedValue == null) return null; return LogDestinationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      trafficLogDestination: (() { final guardedValue = map['trafficLogDestination']; if (guardedValue == null) return null; return LogDestinationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

