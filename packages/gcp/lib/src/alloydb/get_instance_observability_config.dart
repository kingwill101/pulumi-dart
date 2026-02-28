// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceObservabilityConfig {
  /// Whether assistive experiences are enabled for this AlloyDB instance.
  final bool assistiveExperiencesEnabled;

  /// Observability feature status for an instance.
  final bool enabled;

  /// Query string length. The default value is 10240. Any integer between 1024 and 100000 is considered valid.
  final int maxQueryStringLength;

  /// Preserve comments in the query string.
  final bool preserveComments;

  /// Number of query execution plans captured by Insights per minute for all queries combined. The default value is 5. Any integer between 0 and 200 is considered valid.
  final int queryPlansPerMinute;

  /// Record application tags for an instance. This flag is turned "on" by default.
  final bool recordApplicationTags;

  /// Track actively running queries. If not set, default value is "off".
  final bool trackActiveQueries;

  /// Record wait event types during query execution for an instance.
  final bool trackWaitEventTypes;

  /// Record wait events during query execution for an instance.
  final bool trackWaitEvents;

  /// Creates a new [GetInstanceObservabilityConfig].
  /// [assistiveExperiencesEnabled] Whether assistive experiences are enabled for this AlloyDB instance.
  /// [enabled] Observability feature status for an instance.
  /// [maxQueryStringLength] Query string length. The default value is 10240. Any integer between 1024 and 100000 is considered valid.
  /// [preserveComments] Preserve comments in the query string.
  /// [queryPlansPerMinute] Number of query execution plans captured by Insights per minute for all queries combined. The default value is 5. Any integer between 0 and 200 is considered valid.
  /// [recordApplicationTags] Record application tags for an instance. This flag is turned "on" by default.
  /// [trackActiveQueries] Track actively running queries. If not set, default value is "off".
  /// [trackWaitEventTypes] Record wait event types during query execution for an instance.
  /// [trackWaitEvents] Record wait events during query execution for an instance.
  GetInstanceObservabilityConfig({
    required this.assistiveExperiencesEnabled,
    required this.enabled,
    required this.maxQueryStringLength,
    required this.preserveComments,
    required this.queryPlansPerMinute,
    required this.recordApplicationTags,
    required this.trackActiveQueries,
    required this.trackWaitEventTypes,
    required this.trackWaitEvents,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['assistiveExperiencesEnabled'] = assistiveExperiencesEnabled;
    map['enabled'] = enabled;
    map['maxQueryStringLength'] = maxQueryStringLength;
    map['preserveComments'] = preserveComments;
    map['queryPlansPerMinute'] = queryPlansPerMinute;
    map['recordApplicationTags'] = recordApplicationTags;
    map['trackActiveQueries'] = trackActiveQueries;
    map['trackWaitEventTypes'] = trackWaitEventTypes;
    map['trackWaitEvents'] = trackWaitEvents;
    return map;
  }

  factory GetInstanceObservabilityConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceObservabilityConfig(
      assistiveExperiencesEnabled: map['assistiveExperiencesEnabled'] as bool,
      enabled: map['enabled'] as bool,
      maxQueryStringLength: map['maxQueryStringLength'] as int,
      preserveComments: map['preserveComments'] as bool,
      queryPlansPerMinute: map['queryPlansPerMinute'] as int,
      recordApplicationTags: map['recordApplicationTags'] as bool,
      trackActiveQueries: map['trackActiveQueries'] as bool,
      trackWaitEventTypes: map['trackWaitEventTypes'] as bool,
      trackWaitEvents: map['trackWaitEvents'] as bool,
    );
  }
}
