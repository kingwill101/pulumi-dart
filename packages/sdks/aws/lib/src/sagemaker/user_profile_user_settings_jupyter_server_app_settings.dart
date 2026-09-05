// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_profile_user_settings_jupyter_server_app_settings_code_repository.dart';
import 'user_profile_user_settings_jupyter_server_app_settings_default_resource_spec.dart';

class UserProfileUserSettingsJupyterServerAppSettings {
  /// A list of Git repositories that SageMaker AI automatically displays to users for cloning in the JupyterServer application. see Code Repository below.
  final pulumi.Input<List<UserProfileUserSettingsJupyterServerAppSettingsCodeRepository>?>? codeRepositories;
  /// Default instance type and the ARN of the SageMaker AI image created on the instance. see Default Resource Spec below.
  final pulumi.Input<UserProfileUserSettingsJupyterServerAppSettingsDefaultResourceSpec?>? defaultResourceSpec;
  /// ARN of the Lifecycle Configurations.
  final pulumi.Input<List<String>?>? lifecycleConfigArns;

  /// Creates a new [UserProfileUserSettingsJupyterServerAppSettings].
  /// [codeRepositories] A list of Git repositories that SageMaker AI automatically displays to users for cloning in the JupyterServer application. see Code Repository below.
  /// [defaultResourceSpec] Default instance type and the ARN of the SageMaker AI image created on the instance. see Default Resource Spec below.
  /// [lifecycleConfigArns] ARN of the Lifecycle Configurations.
  const UserProfileUserSettingsJupyterServerAppSettings({
    this.codeRepositories,
    this.defaultResourceSpec,
    this.lifecycleConfigArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeRepositories': ?pulumi.Input.mapOptionalInputValue<List<UserProfileUserSettingsJupyterServerAppSettingsCodeRepository>, List<Map<String, dynamic>>>(codeRepositories, (value) => pulumi.Input.encodeList<UserProfileUserSettingsJupyterServerAppSettingsCodeRepository, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultResourceSpec': ?pulumi.Input.mapOptionalInputValue<UserProfileUserSettingsJupyterServerAppSettingsDefaultResourceSpec, Map<String, dynamic>>(defaultResourceSpec, (value) => value.toMap()),
      'lifecycleConfigArns': ?lifecycleConfigArns,
    };
  }

  factory UserProfileUserSettingsJupyterServerAppSettings.fromMap(Map<String, dynamic> map) {
    return UserProfileUserSettingsJupyterServerAppSettings(
      codeRepositories: (() { final guardedValue = map['codeRepositories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserProfileUserSettingsJupyterServerAppSettingsCodeRepository>(guardedValue, (value) => UserProfileUserSettingsJupyterServerAppSettingsCodeRepository.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultResourceSpec: (() { final guardedValue = map['defaultResourceSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserProfileUserSettingsJupyterServerAppSettingsDefaultResourceSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lifecycleConfigArns: (() { final guardedValue = map['lifecycleConfigArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
