// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../domain_default_space_settings_jupyter_server_app_settings_code_repository/domain_default_space_settings_jupyter_server_app_settings_code_repository.dart';
import '../domain_default_space_settings_jupyter_server_app_settings_default_resource_spec/domain_default_space_settings_jupyter_server_app_settings_default_resource_spec.dart';

class DomainDefaultSpaceSettingsJupyterServerAppSettings {
  /// A list of Git repositories that SageMaker AI automatically displays to users for cloning in the JupyterServer application. see <span pulumi-lang-nodejs="`codeRepository`" pulumi-lang-dotnet="`CodeRepository`" pulumi-lang-go="`codeRepository`" pulumi-lang-python="`code_repository`" pulumi-lang-yaml="`codeRepository`" pulumi-lang-java="`codeRepository`">`code_repository`</span> Block below.
  final List<DomainDefaultSpaceSettingsJupyterServerAppSettingsCodeRepository>?
      codeRepositories;

  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see <span pulumi-lang-nodejs="`defaultResourceSpec`" pulumi-lang-dotnet="`DefaultResourceSpec`" pulumi-lang-go="`defaultResourceSpec`" pulumi-lang-python="`default_resource_spec`" pulumi-lang-yaml="`defaultResourceSpec`" pulumi-lang-java="`defaultResourceSpec`">`default_resource_spec`</span> Block below.
  final DomainDefaultSpaceSettingsJupyterServerAppSettingsDefaultResourceSpec?
      defaultResourceSpec;

  /// The Amazon Resource Name (ARN) of the Lifecycle Configurations.
  final List<String>? lifecycleConfigArns;

  DomainDefaultSpaceSettingsJupyterServerAppSettings({
    this.codeRepositories,
    this.defaultResourceSpec,
    this.lifecycleConfigArns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeRepositoriesValue = codeRepositories;
    if (codeRepositoriesValue != null) {
      map['codeRepositories'] = Input.encodeList<
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
          : Input.decodeList<
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
