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
    required String addonName,
    String? addonReleaseName,
    required String addonVersion,
    String? aliyunLang,
    required String environmentId,
    String? values,
  }) :
      addonName = pulumi.Input.asInput<String>(addonName),
      addonReleaseName = pulumi.Input.asOptionalInput<String>(addonReleaseName),
      addonVersion = pulumi.Input.asInput<String>(addonVersion),
      aliyunLang = pulumi.Input.asOptionalInput<String>(aliyunLang),
      environmentId = pulumi.Input.asInput<String>(environmentId),
      values = pulumi.Input.asOptionalInput<String>(values);

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
      addonName: map['addonName'] as String,
      addonReleaseName: map['addonReleaseName'] == null ? null : map['addonReleaseName'] as String,
      addonVersion: map['addonVersion'] as String,
      aliyunLang: map['aliyunLang'] == null ? null : map['aliyunLang'] as String,
      environmentId: map['environmentId'] as String,
      values: map['values'] == null ? null : map['values'] as String,
    );
  }
}

