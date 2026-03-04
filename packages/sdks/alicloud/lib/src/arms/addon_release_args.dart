// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_arms_addon_release_addon_release_args_doc}
/// The set of arguments for AddonRelease.
/// {@endtemplate}
/// {@macro pulumi_arms_addon_release_addon_release_args_doc}
class AddonReleaseArgs {
  /// Addon Name.
  final pulumi.Input<String> addonName;

  /// The name of the resource.
  final pulumi.Input<String>? addonReleaseName;

  /// Version number of Addon. Addon information can be obtained through ListAddons.
  final pulumi.Input<String> addonVersion;

  /// The installed locale.
  final pulumi.Input<String>? aliyunLang;

  /// Environment id.
  final pulumi.Input<String> environmentId;

  /// Configuration information for installing Addon. Obtain the configuration template from ListAddonSchema, for example, {"host":"mysql-service.default","port":3306,"username":"root","password":"roots"}.
  final pulumi.Input<String>? values;

  /// Creates a new [AddonReleaseArgs].
  /// [addonName] Addon Name.
  /// [addonReleaseName] The name of the resource.
  /// [addonVersion] Version number of Addon. Addon information can be obtained through ListAddons.
  /// [aliyunLang] The installed locale.
  /// [environmentId] Environment id.
  /// [values] Configuration information for installing Addon. Obtain the configuration template from ListAddonSchema, for example, {"host":"mysql-service.default","port":3306,"username":"root","password":"roots"}.
  AddonReleaseArgs({
    required this.addonName,
    this.addonReleaseName,
    required this.addonVersion,
    this.aliyunLang,
    required this.environmentId,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonName': addonName,
      'addonReleaseName': ?addonReleaseName,
      'addonVersion': addonVersion,
      'aliyunLang': ?aliyunLang,
      'environmentId': environmentId,
      'values': ?values,
    };
  }

  factory AddonReleaseArgs.fromMap(Map<String, dynamic> map) {
    return AddonReleaseArgs(
      addonName: pulumi.Input.fromValue(map['addonName'] as String),
      addonReleaseName: (() {
        final guardedValue = map['addonReleaseName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      addonVersion: pulumi.Input.fromValue(map['addonVersion'] as String),
      aliyunLang: (() {
        final guardedValue = map['aliyunLang'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      values: (() {
        final guardedValue = map['values'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
