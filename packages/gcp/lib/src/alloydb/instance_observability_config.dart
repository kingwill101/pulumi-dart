// ignore_for_file: unused_element, unnecessary_cast


class InstanceObservabilityConfig {
  /// Whether assistive experiences are enabled for this AlloyDB instance.
  final bool? assistiveExperiencesEnabled;
  /// Observability feature status for an instance.
  final bool? enabled;
  /// Query string length. The default value is 10240. Any integer between 1024 and 100000 is considered valid.
  final int? maxQueryStringLength;
  /// Preserve comments in the query string.
  final bool? preserveComments;
  /// Number of query execution plans captured by Insights per minute for all queries combined. The default value is 5. Any integer between 0 and 200 is considered valid.
  final int? queryPlansPerMinute;
  /// Record application tags for an instance. This flag is turned "on" by default.
  final bool? recordApplicationTags;
  /// Track actively running queries. If not set, default value is "off".
  final bool? trackActiveQueries;
  /// Record wait event types during query execution for an instance.
  final bool? trackWaitEventTypes;
  /// Record wait events during query execution for an instance.
  final bool? trackWaitEvents;

  /// Creates a new [InstanceObservabilityConfig].
  /// [assistiveExperiencesEnabled] Whether assistive experiences are enabled for this AlloyDB instance.
  /// [enabled] Observability feature status for an instance.
  /// [maxQueryStringLength] Query string length. The default value is 10240. Any integer between 1024 and 100000 is considered valid.
  /// [preserveComments] Preserve comments in the query string.
  /// [queryPlansPerMinute] Number of query execution plans captured by Insights per minute for all queries combined. The default value is 5. Any integer between 0 and 200 is considered valid.
  /// [recordApplicationTags] Record application tags for an instance. This flag is turned "on" by default.
  /// [trackActiveQueries] Track actively running queries. If not set, default value is "off".
  /// [trackWaitEventTypes] Record wait event types during query execution for an instance.
  /// [trackWaitEvents] Record wait events during query execution for an instance.
  InstanceObservabilityConfig({
    this.assistiveExperiencesEnabled,
    this.enabled,
    this.maxQueryStringLength,
    this.preserveComments,
    this.queryPlansPerMinute,
    this.recordApplicationTags,
    this.trackActiveQueries,
    this.trackWaitEventTypes,
    this.trackWaitEvents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assistiveExperiencesEnabled': ?assistiveExperiencesEnabled,
      'enabled': ?enabled,
      'maxQueryStringLength': ?maxQueryStringLength,
      'preserveComments': ?preserveComments,
      'queryPlansPerMinute': ?queryPlansPerMinute,
      'recordApplicationTags': ?recordApplicationTags,
      'trackActiveQueries': ?trackActiveQueries,
      'trackWaitEventTypes': ?trackWaitEventTypes,
      'trackWaitEvents': ?trackWaitEvents,
    };
  }

  factory InstanceObservabilityConfig.fromMap(Map<String, dynamic> map) {
    return InstanceObservabilityConfig(
      assistiveExperiencesEnabled: map['assistiveExperiencesEnabled'] == null ? null : map['assistiveExperiencesEnabled'] as bool,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      maxQueryStringLength: map['maxQueryStringLength'] == null ? null : map['maxQueryStringLength'] as int,
      preserveComments: map['preserveComments'] == null ? null : map['preserveComments'] as bool,
      queryPlansPerMinute: map['queryPlansPerMinute'] == null ? null : map['queryPlansPerMinute'] as int,
      recordApplicationTags: map['recordApplicationTags'] == null ? null : map['recordApplicationTags'] as bool,
      trackActiveQueries: map['trackActiveQueries'] == null ? null : map['trackActiveQueries'] as bool,
      trackWaitEventTypes: map['trackWaitEventTypes'] == null ? null : map['trackWaitEventTypes'] as bool,
      trackWaitEvents: map['trackWaitEvents'] == null ? null : map['trackWaitEvents'] as bool,
    );
  }
}

