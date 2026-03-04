// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_default_user_settings_tensor_board_app_settings_default_resource_spec.dart';

class DomainDefaultUserSettingsTensorBoardAppSettings {
  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see `default_resource_spec` Block below.
  final pulumi.Input<
    DomainDefaultUserSettingsTensorBoardAppSettingsDefaultResourceSpec
  >?
  defaultResourceSpec;

  /// Creates a new [DomainDefaultUserSettingsTensorBoardAppSettings].
  /// [defaultResourceSpec] The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see `default_resource_spec` Block below.
  DomainDefaultUserSettingsTensorBoardAppSettings({this.defaultResourceSpec});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultResourceSpec':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDefaultUserSettingsTensorBoardAppSettingsDefaultResourceSpec,
            Map<String, dynamic>
          >(defaultResourceSpec, (value) => value.toMap()),
    };
  }

  factory DomainDefaultUserSettingsTensorBoardAppSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDefaultUserSettingsTensorBoardAppSettings(
      defaultResourceSpec: (() {
        final guardedValue = map['defaultResourceSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDefaultUserSettingsTensorBoardAppSettingsDefaultResourceSpec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
