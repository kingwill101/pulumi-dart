// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AddonRelease resources.
class AddonReleaseState {
  /// Addon Name.
  final pulumi.Input<String>? addonName;
  /// The name of the resource.
  final pulumi.Input<String>? addonReleaseName;
  /// Version number of Addon. Addon information can be obtained through ListAddons.
  final pulumi.Input<String>? addonVersion;
  /// The installed locale.
  final pulumi.Input<String>? aliyunLang;
  /// Creation time.
  final pulumi.Input<String>? createTime;
  /// Environment id.
  final pulumi.Input<String>? environmentId;
  /// Configuration information for installing Addon. Obtain the configuration template from ListAddonSchema, for example, {"host":"mysql-service.default","port":3306,"username":"root","password":"roots"}.
  final pulumi.Input<String>? values;

  /// Creates a new [AddonReleaseState].
  /// [addonName] Addon Name.
  /// [addonReleaseName] The name of the resource.
  /// [addonVersion] Version number of Addon. Addon information can be obtained through ListAddons.
  /// [aliyunLang] The installed locale.
  /// [createTime] Creation time.
  /// [environmentId] Environment id.
  /// [values] Configuration information for installing Addon. Obtain the configuration template from ListAddonSchema, for example, {"host":"mysql-service.default","port":3306,"username":"root","password":"roots"}.
  AddonReleaseState({
    this.addonName,
    this.addonReleaseName,
    this.addonVersion,
    this.aliyunLang,
    this.createTime,
    this.environmentId,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonName': ?addonName,
      'addonReleaseName': ?addonReleaseName,
      'addonVersion': ?addonVersion,
      'aliyunLang': ?aliyunLang,
      'createTime': ?createTime,
      'environmentId': ?environmentId,
      'values': ?values,
    };
  }

  factory AddonReleaseState.fromMap(Map<String, dynamic> map) {
    return AddonReleaseState(
      addonName: map['addonName'] == null ? null : (map['addonName'] as String).input(),
      addonReleaseName: map['addonReleaseName'] == null ? null : (map['addonReleaseName'] as String).input(),
      addonVersion: map['addonVersion'] == null ? null : (map['addonVersion'] as String).input(),
      aliyunLang: map['aliyunLang'] == null ? null : (map['aliyunLang'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      environmentId: map['environmentId'] == null ? null : (map['environmentId'] as String).input(),
      values: map['values'] == null ? null : (map['values'] as String).input(),
    );
  }
}

