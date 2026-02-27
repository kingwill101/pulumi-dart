// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../domain_default_user_settings_jupyter_server_app_settings_code_repository/domain_default_user_settings_jupyter_server_app_settings_code_repository.dart';
import '../domain_default_user_settings_jupyter_server_app_settings_default_resource_spec/domain_default_user_settings_jupyter_server_app_settings_default_resource_spec.dart';

class DomainDefaultUserSettingsJupyterServerAppSettings {
  /// A list of Git repositories that SageMaker AI automatically displays to users for cloning in the JupyterServer application. see `code_repository` Block below.
  final List<DomainDefaultUserSettingsJupyterServerAppSettingsCodeRepository>?
      codeRepositories;

  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see `default_resource_spec` Block below.
  final DomainDefaultUserSettingsJupyterServerAppSettingsDefaultResourceSpec?
      defaultResourceSpec;

  /// The Amazon Resource Name (ARN) of the Lifecycle Configurations.
  final List<String>? lifecycleConfigArns;

  DomainDefaultUserSettingsJupyterServerAppSettings({
    this.codeRepositories,
    this.defaultResourceSpec,
    this.lifecycleConfigArns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeRepositoriesValue = codeRepositories;
    if (codeRepositoriesValue != null) {
      map['codeRepositories'] = pulumi.Input.encodeList<
              DomainDefaultUserSettingsJupyterServerAppSettingsCodeRepository,
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

  factory DomainDefaultUserSettingsJupyterServerAppSettings.fromMap(
      Map<String, dynamic> map) {
    return DomainDefaultUserSettingsJupyterServerAppSettings(
      codeRepositories: map['codeRepositories'] == null
          ? null
          : pulumi.Input.decodeList<
                  DomainDefaultUserSettingsJupyterServerAppSettingsCodeRepository>(
              map['codeRepositories'],
              (value) =>
                  DomainDefaultUserSettingsJupyterServerAppSettingsCodeRepository
                      .fromMap((value as Map).cast<String, dynamic>())),
      defaultResourceSpec: map['defaultResourceSpec'] == null
          ? null
          : DomainDefaultUserSettingsJupyterServerAppSettingsDefaultResourceSpec
              .fromMap(
                  (map['defaultResourceSpec'] as Map).cast<String, dynamic>()),
      lifecycleConfigArns: map['lifecycleConfigArns'] == null
          ? null
          : (map['lifecycleConfigArns'] as List).cast<String>(),
    );
  }
}
