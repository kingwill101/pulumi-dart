// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ClusterSettings
class ClusterSettingsResponse {
  /// The name of the cluster setting. The value is ``containerInsights`` .
  final pulumi.Input<String>? name;

  /// The value to set for the cluster setting. The supported values are ``enabled`` and ``disabled``.  If you set ``name`` to ``containerInsights`` and ``value`` to ``enabled``, CloudWatch Container Insights will be on for the cluster, otherwise it will be off unless the ``containerInsights`` account setting is turned on. If a cluster value is specified, it will override the ``containerInsights`` value set with [PutAccountSetting](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutAccountSetting.html) or [PutAccountSettingDefault](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutAccountSettingDefault.html).
  final pulumi.Input<String>? value;

  /// Creates a new [ClusterSettingsResponse].
  /// [name] The name of the cluster setting. The value is ``containerInsights`` .
  /// [value] The value to set for the cluster setting. The supported values are ``enabled`` and ``disabled``.  If you set ``name`` to ``containerInsights`` and ``value`` to ``enabled``, CloudWatch Container Insights will be on for the cluster, otherwise it will be off unless the ``containerInsights`` account setting is turned on. If a cluster value is specified, it will override the ``containerInsights`` value set with [PutAccountSetting](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutAccountSetting.html) or [PutAccountSettingDefault](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutAccountSettingDefault.html).
  ClusterSettingsResponse({this.name, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'value': ?value};
  }

  factory ClusterSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ClusterSettingsResponse(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
