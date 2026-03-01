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
      'applicationInsights': ?applicationInsights == null ? null : applicationInsights!.toMap(),
      'commonDestination': ?commonDestination == null ? null : commonDestination!.toMap(),
      'decryptLogDestination': ?decryptLogDestination == null ? null : decryptLogDestination!.toMap(),
      'logOption': ?logOption,
      'logType': ?logType,
      'threatLogDestination': ?threatLogDestination == null ? null : threatLogDestination!.toMap(),
      'trafficLogDestination': ?trafficLogDestination == null ? null : trafficLogDestination!.toMap(),
    };
  }

  factory GetFirewallLogProfileResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallLogProfileResult(
      applicationInsights: map['applicationInsights'] == null ? null : ApplicationInsightsResponse.fromMap((map['applicationInsights'] as Map).cast<String, dynamic>()),
      commonDestination: map['commonDestination'] == null ? null : LogDestinationResponse.fromMap((map['commonDestination'] as Map).cast<String, dynamic>()),
      decryptLogDestination: map['decryptLogDestination'] == null ? null : LogDestinationResponse.fromMap((map['decryptLogDestination'] as Map).cast<String, dynamic>()),
      logOption: map['logOption'] == null ? null : map['logOption'] as String,
      logType: map['logType'] == null ? null : map['logType'] as String,
      threatLogDestination: map['threatLogDestination'] == null ? null : LogDestinationResponse.fromMap((map['threatLogDestination'] as Map).cast<String, dynamic>()),
      trafficLogDestination: map['trafficLogDestination'] == null ? null : LogDestinationResponse.fromMap((map['trafficLogDestination'] as Map).cast<String, dynamic>()),
    );
  }
}

