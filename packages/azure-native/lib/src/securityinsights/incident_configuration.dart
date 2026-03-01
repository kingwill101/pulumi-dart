// ignore_for_file: unused_element, unnecessary_cast

import 'grouping_configuration.dart';

/// Incident Configuration property bag.
class IncidentConfiguration {
  /// Create incidents from alerts triggered by this analytics rule
  final bool createIncident;
  /// Set how the alerts that are triggered by this analytics rule, are grouped into incidents
  final GroupingConfiguration? groupingConfiguration;

  /// Creates a new [IncidentConfiguration].
  /// [createIncident] Create incidents from alerts triggered by this analytics rule
  /// [groupingConfiguration] Set how the alerts that are triggered by this analytics rule, are grouped into incidents
  IncidentConfiguration({
    required this.createIncident,
    this.groupingConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createIncident': createIncident,
      'groupingConfiguration': ?groupingConfiguration == null ? null : groupingConfiguration!.toMap(),
    };
  }

  factory IncidentConfiguration.fromMap(Map<String, dynamic> map) {
    return IncidentConfiguration(
      createIncident: map['createIncident'] as bool,
      groupingConfiguration: map['groupingConfiguration'] == null ? null : GroupingConfiguration.fromMap((map['groupingConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

