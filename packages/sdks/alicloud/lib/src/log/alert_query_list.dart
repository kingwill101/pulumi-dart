// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertQueryList {
  /// Chart title, optional from 1.161.0+.
  final pulumi.Input<String>? chartTitle;

  /// Query dashboard id.
  final pulumi.Input<String>? dashboardId;

  /// End time. example: 20s.
  final pulumi.Input<String> end;

  /// Query logstore, use store for new alert, Deprecated from 1.161.0+.
  final pulumi.Input<String>? logstore;

  /// default disable, whether to use power sql. support auto, enable, disable.
  final pulumi.Input<String>? powerSqlMode;

  /// Query project.
  final pulumi.Input<String>? project;

  /// Query corresponding to chart. example: * AND aliyun.
  final pulumi.Input<String> query;

  /// Query project region.
  final pulumi.Input<String>? region;

  /// Query project store's ARN.
  final pulumi.Input<String>? roleArn;

  /// Begin time. example: -60s.
  final pulumi.Input<String> start;

  /// Query store for new alert.
  final pulumi.Input<String>? store;

  /// Query store type for new alert, including log,metric,meta.
  final pulumi.Input<String>? storeType;

  /// default Custom. No need to configure this parameter.
  final pulumi.Input<String>? timeSpanType;

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
      chartTitle: (() {
        final guardedValue = map['chartTitle'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dashboardId: (() {
        final guardedValue = map['dashboardId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      end: pulumi.Input.fromValue(map['end'] as String),
      logstore: (() {
        final guardedValue = map['logstore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      powerSqlMode: (() {
        final guardedValue = map['powerSqlMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      query: pulumi.Input.fromValue(map['query'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      roleArn: (() {
        final guardedValue = map['roleArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      start: pulumi.Input.fromValue(map['start'] as String),
      store: (() {
        final guardedValue = map['store'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storeType: (() {
        final guardedValue = map['storeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeSpanType: (() {
        final guardedValue = map['timeSpanType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
