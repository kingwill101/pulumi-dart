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
  /// The ID of the Addon Release. It formats as `<environment_id>:<addon_release_name>`.
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
  /// [id] The ID of the Addon Release. It formats as `<environment_id>:<addon_release_name>`.
  /// [regionId] The region ID.
  GetAddonReleasesRelease({
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
      addonName: (map['addonName'] as String).input(),
      addonReleaseName: (map['addonReleaseName'] as String).input(),
      addonVersion: (map['addonVersion'] as String).input(),
      alertRuleCount: (map['alertRuleCount'] as int).input(),
      aliyunLang: (map['aliyunLang'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      dashboardCount: (map['dashboardCount'] as int).input(),
      environmentId: (map['environmentId'] as String).input(),
      exporterCount: (map['exporterCount'] as int).input(),
      id: (map['id'] as String).input(),
      regionId: (map['regionId'] as String).input(),
    );
  }
}

