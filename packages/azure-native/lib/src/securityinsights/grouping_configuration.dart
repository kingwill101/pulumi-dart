// ignore_for_file: unused_element, unnecessary_cast


/// Grouping configuration property bag.
class GroupingConfiguration {
  /// Grouping enabled
  final bool enabled;
  /// A list of alert details to group by (when matchingMethod is Selected)
  final List<String>? groupByAlertDetails;
  /// A list of custom details keys to group by (when matchingMethod is Selected). Only keys defined in the current alert rule may be used.
  final List<String>? groupByCustomDetails;
  /// A list of entity types to group by (when matchingMethod is Selected). Only entities defined in the current alert rule may be used.
  final List<String>? groupByEntities;
  /// Limit the group to alerts created within the lookback duration (in ISO 8601 duration format)
  final String lookbackDuration;
  /// Grouping matching method. When method is Selected at least one of groupByEntities, groupByAlertDetails, groupByCustomDetails must be provided and not empty.
  final String matchingMethod;
  /// Re-open closed matching incidents
  final bool reopenClosedIncident;

  /// Creates a new [GroupingConfiguration].
  /// [enabled] Grouping enabled
  /// [groupByAlertDetails] A list of alert details to group by (when matchingMethod is Selected)
  /// [groupByCustomDetails] A list of custom details keys to group by (when matchingMethod is Selected). Only keys defined in the current alert rule may be used.
  /// [groupByEntities] A list of entity types to group by (when matchingMethod is Selected). Only entities defined in the current alert rule may be used.
  /// [lookbackDuration] Limit the group to alerts created within the lookback duration (in ISO 8601 duration format)
  /// [matchingMethod] Grouping matching method. When method is Selected at least one of groupByEntities, groupByAlertDetails, groupByCustomDetails must be provided and not empty.
  /// [reopenClosedIncident] Re-open closed matching incidents
  GroupingConfiguration({
    required this.enabled,
    this.groupByAlertDetails,
    this.groupByCustomDetails,
    this.groupByEntities,
    required this.lookbackDuration,
    required this.matchingMethod,
    required this.reopenClosedIncident,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'groupByAlertDetails': ?groupByAlertDetails,
      'groupByCustomDetails': ?groupByCustomDetails,
      'groupByEntities': ?groupByEntities,
      'lookbackDuration': lookbackDuration,
      'matchingMethod': matchingMethod,
      'reopenClosedIncident': reopenClosedIncident,
    };
  }

  factory GroupingConfiguration.fromMap(Map<String, dynamic> map) {
    return GroupingConfiguration(
      enabled: map['enabled'] as bool,
      groupByAlertDetails: map['groupByAlertDetails'] == null ? null : (map['groupByAlertDetails'] as List).cast<String>(),
      groupByCustomDetails: map['groupByCustomDetails'] == null ? null : (map['groupByCustomDetails'] as List).cast<String>(),
      groupByEntities: map['groupByEntities'] == null ? null : (map['groupByEntities'] as List).cast<String>(),
      lookbackDuration: map['lookbackDuration'] as String,
      matchingMethod: map['matchingMethod'] as String,
      reopenClosedIncident: map['reopenClosedIncident'] as bool,
    );
  }
}

