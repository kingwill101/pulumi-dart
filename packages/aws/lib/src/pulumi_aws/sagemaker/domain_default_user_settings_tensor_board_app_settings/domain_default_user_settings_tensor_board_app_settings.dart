// ignore_for_file: unused_element, unnecessary_cast

import '../domain_default_user_settings_tensor_board_app_settings_default_resource_spec/domain_default_user_settings_tensor_board_app_settings_default_resource_spec.dart';

class DomainDefaultUserSettingsTensorBoardAppSettings {
  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see <span pulumi-lang-nodejs="`defaultResourceSpec`" pulumi-lang-dotnet="`DefaultResourceSpec`" pulumi-lang-go="`defaultResourceSpec`" pulumi-lang-python="`default_resource_spec`" pulumi-lang-yaml="`defaultResourceSpec`" pulumi-lang-java="`defaultResourceSpec`">`default_resource_spec`</span> Block below.
  final DomainDefaultUserSettingsTensorBoardAppSettingsDefaultResourceSpec?
      defaultResourceSpec;

  DomainDefaultUserSettingsTensorBoardAppSettings({
    this.defaultResourceSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultResourceSpecValue = defaultResourceSpec;
    if (defaultResourceSpecValue != null) {
      map['defaultResourceSpec'] = defaultResourceSpecValue.toMap();
    }
    return map;
  }

  factory DomainDefaultUserSettingsTensorBoardAppSettings.fromMap(
      Map<String, dynamic> map) {
    return DomainDefaultUserSettingsTensorBoardAppSettings(
      defaultResourceSpec: map['defaultResourceSpec'] == null
          ? null
          : DomainDefaultUserSettingsTensorBoardAppSettingsDefaultResourceSpec
              .fromMap(
                  (map['defaultResourceSpec'] as Map).cast<String, dynamic>()),
    );
  }
}
