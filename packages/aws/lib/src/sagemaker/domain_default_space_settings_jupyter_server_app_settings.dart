// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_default_space_settings_jupyter_server_app_settings_code_repository.dart';
import 'domain_default_space_settings_jupyter_server_app_settings_default_resource_spec.dart';

class DomainDefaultSpaceSettingsJupyterServerAppSettings {
  /// A list of Git repositories that SageMaker AI automatically displays to users for cloning in the JupyterServer application. see `code_repository` Block below.
  final List<DomainDefaultSpaceSettingsJupyterServerAppSettingsCodeRepository>?
      codeRepositories;

  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see `default_resource_spec` Block below.
  final DomainDefaultSpaceSettingsJupyterServerAppSettingsDefaultResourceSpec?
      defaultResourceSpec;

  /// The Amazon Resource Name (ARN) of the Lifecycle Configurations.
  final List<String>? lifecycleConfigArns;

  /// Creates a new [DomainDefaultSpaceSettingsJupyterServerAppSettings].
  /// [codeRepositories] A list of Git repositories that SageMaker AI automatically displays to users for cloning in the JupyterServer application. see `code_repository` Block below.
  /// [defaultResourceSpec] The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see `default_resource_spec` Block below.
  /// [lifecycleConfigArns] The Amazon Resource Name (ARN) of the Lifecycle Configurations.
  DomainDefaultSpaceSettingsJupyterServerAppSettings({
    this.codeRepositories,
    this.defaultResourceSpec,
    this.lifecycleConfigArns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeRepositoriesValue = codeRepositories;
    if (codeRepositoriesValue != null) {
      map['codeRepositories'] = pulumi.Input.encodeList<
              DomainDefaultSpaceSettingsJupyterServerAppSettingsCodeRepository,
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

  factory DomainDefaultSpaceSettingsJupyterServerAppSettings.fromMap(
      Map<String, dynamic> map) {
    return DomainDefaultSpaceSettingsJupyterServerAppSettings(
      codeRepositories: map['codeRepositories'] == null
          ? null
          : pulumi.Input.decodeList<
                  DomainDefaultSpaceSettingsJupyterServerAppSettingsCodeRepository>(
              map['codeRepositories'],
              (value) =>
                  DomainDefaultSpaceSettingsJupyterServerAppSettingsCodeRepository
                      .fromMap((value as Map).cast<String, dynamic>())),
      defaultResourceSpec: map['defaultResourceSpec'] == null
          ? null
          : DomainDefaultSpaceSettingsJupyterServerAppSettingsDefaultResourceSpec
              .fromMap(
                  (map['defaultResourceSpec'] as Map).cast<String, dynamic>()),
      lifecycleConfigArns: map['lifecycleConfigArns'] == null
          ? null
          : (map['lifecycleConfigArns'] as List).cast<String>(),
    );
  }
}
