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
      addonName: (() { final guardedValue = map['addonName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      addonReleaseName: (() { final guardedValue = map['addonReleaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      addonVersion: (() { final guardedValue = map['addonVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aliyunLang: (() { final guardedValue = map['aliyunLang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentId: (() { final guardedValue = map['environmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

