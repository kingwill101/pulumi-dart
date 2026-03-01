// ignore_for_file: unused_element, unnecessary_cast

import 'grouping_configuration_response.dart';

/// Incident Configuration property bag.
class IncidentConfigurationResponse {
  /// Create incidents from alerts triggered by this analytics rule
  final bool createIncident;
  /// Set how the alerts that are triggered by this analytics rule, are grouped into incidents
  final GroupingConfigurationResponse? groupingConfiguration;

  /// Creates a new [IncidentConfigurationResponse].
  /// [createIncident] Create incidents from alerts triggered by this analytics rule
  /// [groupingConfiguration] Set how the alerts that are triggered by this analytics rule, are grouped into incidents
  IncidentConfigurationResponse({
    required this.createIncident,
    this.groupingConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createIncident': createIncident,
      'groupingConfiguration': ?groupingConfiguration == null ? null : groupingConfiguration!.toMap(),
    };
  }

  factory IncidentConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return IncidentConfigurationResponse(
      createIncident: map['createIncident'] as bool,
      groupingConfiguration: map['groupingConfiguration'] == null ? null : GroupingConfigurationResponse.fromMap((map['groupingConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

