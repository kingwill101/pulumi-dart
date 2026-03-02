// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertConfigurationQueryList {
  /// Chart Name.
  final pulumi.Input<String>? chartTitle;
  /// Dashboard ID.
  final pulumi.Input<String>? dashboardId;
  /// End time. When storeType is set to log or metric, end must be set.
  final pulumi.Input<String>? end;
  /// Whether to use exclusive SQL. The value is as follows: auto: automatic switching. enable: Starts. disable: disable.
  final pulumi.Input<String>? powerSqlMode;
  /// Project Name.
  final pulumi.Input<String>? project;
  /// Query and analysis statements. When storeType is set to log or metric, query is set to the query analysis statement. When storeType is set to meta, set query to an empty string.
  final pulumi.Input<String>? query;
  /// Region of the target Project.
  final pulumi.Input<String>? region;
  /// Roles used to write alarm data to the event Library.
  final pulumi.Input<String>? roleArn;
  /// Start time. When storeType is set to log or metric, start must be set.
  final pulumi.Input<String>? start;
  /// Query the Logstore, Metricstore, or resource data associated with the statistics. When storeType is set to log, store is set to the target Logstore. When storeType is set to metric, store is set to the target Metricstore. When storeType is set to meta, store is set to the target resource data name.
  final pulumi.Input<String>? store;
  /// Query the data source type. The value is as follows: log: Logstore. metric: Time series Library. meta: resource data.
  final pulumi.Input<String>? storeType;
  /// Time Type.
  final pulumi.Input<String>? timeSpanType;
  /// Use of specific scene alarm front end.
  final pulumi.Input<String>? ui;

  /// Creates a new [AlertConfigurationQueryList].
  /// [chartTitle] Chart Name.
  /// [dashboardId] Dashboard ID.
  /// [end] End time. When storeType is set to log or metric, end must be set.
  /// [powerSqlMode] Whether to use exclusive SQL. The value is as follows: auto: automatic switching. enable: Starts. disable: disable.
  /// [project] Project Name.
  /// [query] Query and analysis statements. When storeType is set to log or metric, query is set to the query analysis statement. When storeType is set to meta, set query to an empty string.
  /// [region] Region of the target Project.
  /// [roleArn] Roles used to write alarm data to the event Library.
  /// [start] Start time. When storeType is set to log or metric, start must be set.
  /// [store] Query the Logstore, Metricstore, or resource data associated with the statistics. When storeType is set to log, store is set to the target Logstore. When storeType is set to metric, store is set to the target Metricstore. When storeType is set to meta, store is set to the target resource data name.
  /// [storeType] Query the data source type. The value is as follows: log: Logstore. metric: Time series Library. meta: resource data.
  /// [timeSpanType] Time Type.
  /// [ui] Use of specific scene alarm front end.
  AlertConfigurationQueryList({
    this.chartTitle,
    this.dashboardId,
    this.end,
    this.powerSqlMode,
    this.project,
    this.query,
    this.region,
    this.roleArn,
    this.start,
    this.store,
    this.storeType,
    this.timeSpanType,
    this.ui,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chartTitle': ?chartTitle,
      'dashboardId': ?dashboardId,
      'end': ?end,
      'powerSqlMode': ?powerSqlMode,
      'project': ?project,
      'query': ?query,
      'region': ?region,
      'roleArn': ?roleArn,
      'start': ?start,
      'store': ?store,
      'storeType': ?storeType,
      'timeSpanType': ?timeSpanType,
      'ui': ?ui,
    };
  }

  factory AlertConfigurationQueryList.fromMap(Map<String, dynamic> map) {
    return AlertConfigurationQueryList(
      chartTitle: map['chartTitle'] == null ? null : (map['chartTitle']! as String).input(),
      dashboardId: map['dashboardId'] == null ? null : (map['dashboardId']! as String).input(),
      end: map['end'] == null ? null : (map['end']! as String).input(),
      powerSqlMode: map['powerSqlMode'] == null ? null : (map['powerSqlMode']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      query: map['query'] == null ? null : (map['query']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn']! as String).input(),
      start: map['start'] == null ? null : (map['start']! as String).input(),
      store: map['store'] == null ? null : (map['store']! as String).input(),
      storeType: map['storeType'] == null ? null : (map['storeType']! as String).input(),
      timeSpanType: map['timeSpanType'] == null ? null : (map['timeSpanType']! as String).input(),
      ui: map['ui'] == null ? null : (map['ui']! as String).input(),
    );
  }
}

