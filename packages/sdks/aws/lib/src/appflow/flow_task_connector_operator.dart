// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowTaskConnectorOperator {
  final pulumi.Input<String>? amplitude;
  final pulumi.Input<String>? customConnector;
  final pulumi.Input<String>? datadog;
  final pulumi.Input<String>? dynatrace;
  final pulumi.Input<String>? googleAnalytics;
  final pulumi.Input<String>? inforNexus;
  final pulumi.Input<String>? marketo;
  final pulumi.Input<String>? s3;
  final pulumi.Input<String>? salesforce;
  final pulumi.Input<String>? sapoData;
  final pulumi.Input<String>? serviceNow;
  final pulumi.Input<String>? singular;
  final pulumi.Input<String>? slack;
  final pulumi.Input<String>? trendmicro;
  final pulumi.Input<String>? veeva;
  final pulumi.Input<String>? zendesk;

  /// Creates a new [FlowTaskConnectorOperator].
  /// [amplitude] Optional.
  /// [customConnector] Optional.
  /// [datadog] Optional.
  /// [dynatrace] Optional.
  /// [googleAnalytics] Optional.
  /// [inforNexus] Optional.
  /// [marketo] Optional.
  /// [s3] Optional.
  /// [salesforce] Optional.
  /// [sapoData] Optional.
  /// [serviceNow] Optional.
  /// [singular] Optional.
  /// [slack] Optional.
  /// [trendmicro] Optional.
  /// [veeva] Optional.
  /// [zendesk] Optional.
  const FlowTaskConnectorOperator({
    this.amplitude,
    this.customConnector,
    this.datadog,
    this.dynatrace,
    this.googleAnalytics,
    this.inforNexus,
    this.marketo,
    this.s3,
    this.salesforce,
    this.sapoData,
    this.serviceNow,
    this.singular,
    this.slack,
    this.trendmicro,
    this.veeva,
    this.zendesk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amplitude': ?amplitude,
      'customConnector': ?customConnector,
      'datadog': ?datadog,
      'dynatrace': ?dynatrace,
      'googleAnalytics': ?googleAnalytics,
      'inforNexus': ?inforNexus,
      'marketo': ?marketo,
      's3': ?s3,
      'salesforce': ?salesforce,
      'sapoData': ?sapoData,
      'serviceNow': ?serviceNow,
      'singular': ?singular,
      'slack': ?slack,
      'trendmicro': ?trendmicro,
      'veeva': ?veeva,
      'zendesk': ?zendesk,
    };
  }

  factory FlowTaskConnectorOperator.fromMap(Map<String, dynamic> map) {
    return FlowTaskConnectorOperator(
      amplitude: (() { final guardedValue = map['amplitude']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customConnector: (() { final guardedValue = map['customConnector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      datadog: (() { final guardedValue = map['datadog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dynatrace: (() { final guardedValue = map['dynatrace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      googleAnalytics: (() { final guardedValue = map['googleAnalytics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inforNexus: (() { final guardedValue = map['inforNexus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      marketo: (() { final guardedValue = map['marketo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3: (() { final guardedValue = map['s3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      salesforce: (() { final guardedValue = map['salesforce']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sapoData: (() { final guardedValue = map['sapoData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceNow: (() { final guardedValue = map['serviceNow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      singular: (() { final guardedValue = map['singular']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slack: (() { final guardedValue = map['slack']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trendmicro: (() { final guardedValue = map['trendmicro']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      veeva: (() { final guardedValue = map['veeva']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zendesk: (() { final guardedValue = map['zendesk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
