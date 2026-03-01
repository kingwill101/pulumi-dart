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
    pulumi.Output<String>? addonName,
    pulumi.Output<String>? addonReleaseName,
    pulumi.Output<String>? addonVersion,
    pulumi.Output<String>? aliyunLang,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? environmentId,
    pulumi.Output<String>? values,
  }) :
      addonName = pulumi.Input.asOptionalInput<String>(addonName),
      addonReleaseName = pulumi.Input.asOptionalInput<String>(addonReleaseName),
      addonVersion = pulumi.Input.asOptionalInput<String>(addonVersion),
      aliyunLang = pulumi.Input.asOptionalInput<String>(aliyunLang),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      environmentId = pulumi.Input.asOptionalInput<String>(environmentId),
      values = pulumi.Input.asOptionalInput<String>(values);

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
      addonName: map['addonName'] == null ? null : pulumi.Output.create<String>(map['addonName'] as String),
      addonReleaseName: map['addonReleaseName'] == null ? null : pulumi.Output.create<String>(map['addonReleaseName'] as String),
      addonVersion: map['addonVersion'] == null ? null : pulumi.Output.create<String>(map['addonVersion'] as String),
      aliyunLang: map['aliyunLang'] == null ? null : pulumi.Output.create<String>(map['aliyunLang'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      environmentId: map['environmentId'] == null ? null : pulumi.Output.create<String>(map['environmentId'] as String),
      values: map['values'] == null ? null : pulumi.Output.create<String>(map['values'] as String),
    );
  }
}

