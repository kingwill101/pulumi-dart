// ignore_for_file: unused_element, unnecessary_cast


class GetAddonReleasesRelease {
  /// The name of the add-on.
  final String addonName;
  /// The name of the Addon Release.
  final String addonReleaseName;
  /// The version of the add-on.
  final String addonVersion;
  /// The number of alert rules.
  final int alertRuleCount;
  /// The language.
  final String aliyunLang;
  /// The time when the add-on was created.
  final String createTime;
  /// The number of dashboards.
  final int dashboardCount;
  /// The environment ID.
  final String environmentId;
  /// The number of exporters.
  final int exporterCount;
  /// The ID of the Addon Release. It formats as `<environment_id>:<addon_release_name>`.
  final String id;
  /// The region ID.
  final String regionId;

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
      addonName: map['addonName'] as String,
      addonReleaseName: map['addonReleaseName'] as String,
      addonVersion: map['addonVersion'] as String,
      alertRuleCount: map['alertRuleCount'] as int,
      aliyunLang: map['aliyunLang'] as String,
      createTime: map['createTime'] as String,
      dashboardCount: map['dashboardCount'] as int,
      environmentId: map['environmentId'] as String,
      exporterCount: map['exporterCount'] as int,
      id: map['id'] as String,
      regionId: map['regionId'] as String,
    );
  }
}

