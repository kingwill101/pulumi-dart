// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAlertsAlertConfigurationQueryList {
  /// Chart Name.
  final pulumi.Input<String> chartTitle;
  /// Dashboard ID.
  final pulumi.Input<String> dashboardId;
  /// End time. When storeType is set to log or metric, end must be set.
  final pulumi.Input<String> end;
  /// Whether to use exclusive SQL. The value is as follows: auto: automatic switching. enable: Starts. disable: disable.
  final pulumi.Input<String> powerSqlMode;
  /// Project Name.
  final pulumi.Input<String> project;
  /// Query and analysis statements. When storeType is set to log or metric, query is set to the query analysis statement. When storeType is set to meta, set query to an empty string.
  final pulumi.Input<String> query;
  /// Region of the target Project.
  final pulumi.Input<String> region;
  /// Roles used to write alarm data to the event Library.
  final pulumi.Input<String> roleArn;
  /// Start time. When storeType is set to log or metric, start must be set.
  final pulumi.Input<String> start;
  /// Query the Logstore, Metricstore, or resource data associated with the statistics. When storeType is set to log, store is set to the target Logstore. When storeType is set to metric, store is set to the target Metricstore. When storeType is set to meta, store is set to the target resource data name.
  final pulumi.Input<String> store;
  /// Query the data source type. The value is as follows: log: Logstore. metric: Time series Library. meta: resource data.
  final pulumi.Input<String> storeType;
  /// Time Type.
  final pulumi.Input<String> timeSpanType;
  /// Use of specific scene alarm front end.
  final pulumi.Input<String> ui;

  /// Creates a new [GetAlertsAlertConfigurationQueryList].
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
  GetAlertsAlertConfigurationQueryList({
    required this.chartTitle,
    required this.dashboardId,
    required this.end,
    required this.powerSqlMode,
    required this.project,
    required this.query,
    required this.region,
    required this.roleArn,
    required this.start,
    required this.store,
    required this.storeType,
    required this.timeSpanType,
    required this.ui,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chartTitle': chartTitle,
      'dashboardId': dashboardId,
      'end': end,
      'powerSqlMode': powerSqlMode,
      'project': project,
      'query': query,
      'region': region,
      'roleArn': roleArn,
      'start': start,
      'store': store,
      'storeType': storeType,
      'timeSpanType': timeSpanType,
      'ui': ui,
    };
  }

  factory GetAlertsAlertConfigurationQueryList.fromMap(Map<String, dynamic> map) {
    return GetAlertsAlertConfigurationQueryList(
      chartTitle: (map['chartTitle'] as String).input(),
      dashboardId: (map['dashboardId'] as String).input(),
      end: (map['end'] as String).input(),
      powerSqlMode: (map['powerSqlMode'] as String).input(),
      project: (map['project'] as String).input(),
      query: (map['query'] as String).input(),
      region: (map['region'] as String).input(),
      roleArn: (map['roleArn'] as String).input(),
      start: (map['start'] as String).input(),
      store: (map['store'] as String).input(),
      storeType: (map['storeType'] as String).input(),
      timeSpanType: (map['timeSpanType'] as String).input(),
      ui: (map['ui'] as String).input(),
    );
  }
}

