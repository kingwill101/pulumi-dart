// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAddonReleasesRelease {
  /// The name of the add-on.
  final pulumi.Input<String> addonName;
  /// The name of the Addon Release.
  final pulumi.Input<String> addonReleaseName;
  /// The version of the add-on.
  final pulumi.Input<String> addonVersion;
  /// The number of alert rules.
  final pulumi.Input<int> alertRuleCount;
  /// The language.
  final pulumi.Input<String> aliyunLang;
  /// The time when the add-on was created.
  final pulumi.Input<String> createTime;
  /// The number of dashboards.
  final pulumi.Input<int> dashboardCount;
  /// The environment ID.
  final pulumi.Input<String> environmentId;
  /// The number of exporters.
  final pulumi.Input<int> exporterCount;
  /// The ID of the Addon Release. It formats as `&lt;environment_id&gt;:&lt;addon_release_name&gt;`.
  final pulumi.Input<String> id;
  /// The region ID.
  final pulumi.Input<String> regionId;

  /// Creates a new [GetAddonReleasesRelease].
  /// [addonName] The name of the add-on.
  /// [addonReleaseName] The name of the Addon Release.
  /// [addonVersion] The version of the add-on.
  /// [alertRuleCount] The number of alert rules.
  /// [aliyunLang] The language.
  /// [createTime] The time when the add-on was created.
  /// [dashboardCount] The number of dashboards.
  /// [environmentId] The environment ID.
  /// [exporterCount] The number of exporters.
  /// [id] The ID of the Addon Release. It formats as `&lt;environment_id&gt;:&lt;addon_release_name&gt;`.
  /// [regionId] The region ID.
  const GetAddonReleasesRelease({
    required this.addonName,
    required this.addonReleaseName,
    required this.addonVersion,
    required this.alertRuleCount,
    required this.aliyunLang,
    required this.createTime,
    required this.dashboardCount,
    required this.environmentId,
    required this.exporterCount,
    required this.id,
    required this.regionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonName': addonName,
      'addonReleaseName': addonReleaseName,
      'addonVersion': addonVersion,
      'alertRuleCount': alertRuleCount,
      'aliyunLang': aliyunLang,
      'createTime': createTime,
      'dashboardCount': dashboardCount,
      'environmentId': environmentId,
      'exporterCount': exporterCount,
      'id': id,
      'regionId': regionId,
    };
  }

  factory GetAddonReleasesRelease.fromMap(Map<String, dynamic> map) {
    return GetAddonReleasesRelease(
      addonName: pulumi.Input.fromValue(map['addonName'] as String),
      addonReleaseName: pulumi.Input.fromValue(map['addonReleaseName'] as String),
      addonVersion: pulumi.Input.fromValue(map['addonVersion'] as String),
      alertRuleCount: pulumi.Input.fromValue(map['alertRuleCount'] as int),
      aliyunLang: pulumi.Input.fromValue(map['aliyunLang'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      dashboardCount: pulumi.Input.fromValue(map['dashboardCount'] as int),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      exporterCount: pulumi.Input.fromValue(map['exporterCount'] as int),
      id: pulumi.Input.fromValue(map['id'] as String),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
    );
  }
}

