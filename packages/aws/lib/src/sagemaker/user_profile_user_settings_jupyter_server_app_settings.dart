// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_profile_user_settings_jupyter_server_app_settings_code_repository.dart';
import 'user_profile_user_settings_jupyter_server_app_settings_default_resource_spec.dart';

class UserProfileUserSettingsJupyterServerAppSettings {
  /// A list of Git repositories that SageMaker AI automatically displays to users for cloning in the JupyterServer application. see Code Repository below.
  final List<UserProfileUserSettingsJupyterServerAppSettingsCodeRepository>?
      codeRepositories;

  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see Default Resource Spec below.
  final UserProfileUserSettingsJupyterServerAppSettingsDefaultResourceSpec?
      defaultResourceSpec;

  /// The Amazon Resource Name (ARN) of the Lifecycle Configurations.
  final List<String>? lifecycleConfigArns;

  /// Creates a new [UserProfileUserSettingsJupyterServerAppSettings].
  /// [codeRepositories] A list of Git repositories that SageMaker AI automatically displays to users for cloning in the JupyterServer application. see Code Repository below.
  /// [defaultResourceSpec] The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see Default Resource Spec below.
  /// [lifecycleConfigArns] The Amazon Resource Name (ARN) of the Lifecycle Configurations.
  UserProfileUserSettingsJupyterServerAppSettings({
    this.codeRepositories,
    this.defaultResourceSpec,
    this.lifecycleConfigArns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeRepositoriesValue = codeRepositories;
    if (codeRepositoriesValue != null) {
      map['codeRepositories'] = pulumi.Input.encodeList<
              UserProfileUserSettingsJupyterServerAppSettingsCodeRepository,
              Map<String, dynamic>>(
          codeRepositoriesValue, (value) => value.toMap());
    }
    final defaultResourceSpecValue = defaultResourceSpec;
    if (defaultResourceSpecValue != null) {
      map['defaultResourceSpec'] = defaultResourceSpecValue.toMap();
    }
    final lifecycleConfigArnsValue = lifecycleConfigArns;
    if (lifecycleConfigArnsValue != null) {
      map['lifecycleConfigArns'] = lifecycleConfigArnsValue;
    }
    return map;
  }

  factory UserProfileUserSettingsJupyterServerAppSettings.fromMap(
      Map<String, dynamic> map) {
    return UserProfileUserSettingsJupyterServerAppSettings(
      codeRepositories: map['codeRepositories'] == null
          ? null
          : pulumi.Input.decodeList<
                  UserProfileUserSettingsJupyterServerAppSettingsCodeRepository>(
              map['codeRepositories'],
              (value) =>
                  UserProfileUserSettingsJupyterServerAppSettingsCodeRepository
                      .fromMap((value as Map).cast<String, dynamic>())),
      defaultResourceSpec: map['defaultResourceSpec'] == null
          ? null
          : UserProfileUserSettingsJupyterServerAppSettingsDefaultResourceSpec
              .fromMap(
                  (map['defaultResourceSpec'] as Map).cast<String, dynamic>()),
      lifecycleConfigArns: map['lifecycleConfigArns'] == null
          ? null
          : (map['lifecycleConfigArns'] as List).cast<String>(),
    );
  }
}
