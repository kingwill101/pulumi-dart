// ignore_for_file: unused_element, unnecessary_cast


class AlertQueryList {
  /// Chart title, optional from 1.161.0+.
  final String? chartTitle;
  /// Query dashboard id.
  final String? dashboardId;
  /// End time. example: 20s.
  final String end;
  /// Query logstore, use store for new alert, Deprecated from 1.161.0+.
  final String? logstore;
  /// default disable, whether to use power sql. support auto, enable, disable.
  final String? powerSqlMode;
  /// Query project.
  final String? project;
  /// Query corresponding to chart. example: * AND aliyun.
  final String query;
  /// Query project region.
  final String? region;
  /// Query project store's ARN.
  final String? roleArn;
  /// Begin time. example: -60s.
  final String start;
  /// Query store for new alert.
  final String? store;
  /// Query store type for new alert, including log,metric,meta.
  final String? storeType;
  /// default Custom. No need to configure this parameter.
  final String? timeSpanType;

  /// Creates a new [AlertQueryList].
  /// [chartTitle] Chart title, optional from 1.161.0+.
  /// [dashboardId] Query dashboard id.
  /// [end] End time. example: 20s.
  /// [logstore] Query logstore, use store for new alert, Deprecated from 1.161.0+.
  /// [powerSqlMode] default disable, whether to use power sql. support auto, enable, disable.
  /// [project] Query project.
  /// [query] Query corresponding to chart. example: * AND aliyun.
  /// [region] Query project region.
  /// [roleArn] Query project store's ARN.
  /// [start] Begin time. example: -60s.
  /// [store] Query store for new alert.
  /// [storeType] Query store type for new alert, including log,metric,meta.
  /// [timeSpanType] default Custom. No need to configure this parameter.
  AlertQueryList({
    this.chartTitle,
    this.dashboardId,
    required this.end,
    this.logstore,
    this.powerSqlMode,
    this.project,
    required this.query,
    this.region,
    this.roleArn,
    required this.start,
    this.store,
    this.storeType,
    this.timeSpanType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chartTitle': ?chartTitle,
      'dashboardId': ?dashboardId,
      'end': end,
      'logstore': ?logstore,
      'powerSqlMode': ?powerSqlMode,
      'project': ?project,
      'query': query,
      'region': ?region,
      'roleArn': ?roleArn,
      'start': start,
      'store': ?store,
      'storeType': ?storeType,
      'timeSpanType': ?timeSpanType,
    };
  }

  factory AlertQueryList.fromMap(Map<String, dynamic> map) {
    return AlertQueryList(
      chartTitle: map['chartTitle'] == null ? null : map['chartTitle'] as String,
      dashboardId: map['dashboardId'] == null ? null : map['dashboardId'] as String,
      end: map['end'] as String,
      logstore: map['logstore'] == null ? null : map['logstore'] as String,
      powerSqlMode: map['powerSqlMode'] == null ? null : map['powerSqlMode'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      query: map['query'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
      start: map['start'] as String,
      store: map['store'] == null ? null : map['store'] as String,
      storeType: map['storeType'] == null ? null : map['storeType'] as String,
      timeSpanType: map['timeSpanType'] == null ? null : map['timeSpanType'] as String,
    );
  }
}

