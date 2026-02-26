// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../space_space_settings_jupyter_server_app_settings_code_repository/space_space_settings_jupyter_server_app_settings_code_repository.dart';
import '../space_space_settings_jupyter_server_app_settings_default_resource_spec/space_space_settings_jupyter_server_app_settings_default_resource_spec.dart';

class SpaceSpaceSettingsJupyterServerAppSettings {
  /// A list of Git repositories that SageMaker AI automatically displays to users for cloning in the JupyterServer application. See <span pulumi-lang-nodejs="`codeRepository`" pulumi-lang-dotnet="`CodeRepository`" pulumi-lang-go="`codeRepository`" pulumi-lang-python="`code_repository`" pulumi-lang-yaml="`codeRepository`" pulumi-lang-java="`codeRepository`">`code_repository`</span> Block below.
  final List<SpaceSpaceSettingsJupyterServerAppSettingsCodeRepository>?
      codeRepositories;

  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. See <span pulumi-lang-nodejs="`defaultResourceSpec`" pulumi-lang-dotnet="`DefaultResourceSpec`" pulumi-lang-go="`defaultResourceSpec`" pulumi-lang-python="`default_resource_spec`" pulumi-lang-yaml="`defaultResourceSpec`" pulumi-lang-java="`defaultResourceSpec`">`default_resource_spec`</span> Block below.
  final SpaceSpaceSettingsJupyterServerAppSettingsDefaultResourceSpec
      defaultResourceSpec;

  /// The Amazon Resource Name (ARN) of the Lifecycle Configurations.
  final List<String>? lifecycleConfigArns;

  SpaceSpaceSettingsJupyterServerAppSettings({
    this.codeRepositories,
    required this.defaultResourceSpec,
    this.lifecycleConfigArns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeRepositoriesValue = codeRepositories;
    if (codeRepositoriesValue != null) {
      map['codeRepositories'] = Input.encodeList<
              SpaceSpaceSettingsJupyterServerAppSettingsCodeRepository,
              Map<String, dynamic>>(
          codeRepositoriesValue, (value) => value.toMap());
    }
    map['defaultResourceSpec'] = defaultResourceSpec.toMap();
    final lifecycleConfigArnsValue = lifecycleConfigArns;
    if (lifecycleConfigArnsValue != null) {
      map['lifecycleConfigArns'] = lifecycleConfigArnsValue;
    }
    return map;
  }

  factory SpaceSpaceSettingsJupyterServerAppSettings.fromMap(
      Map<String, dynamic> map) {
    return SpaceSpaceSettingsJupyterServerAppSettings(
      codeRepositories: map['codeRepositories'] == null
          ? null
          : Input.decodeList<
                  SpaceSpaceSettingsJupyterServerAppSettingsCodeRepository>(
              map['codeRepositories'],
              (value) =>
                  SpaceSpaceSettingsJupyterServerAppSettingsCodeRepository
                      .fromMap((value as Map).cast<String, dynamic>())),
      defaultResourceSpec:
          SpaceSpaceSettingsJupyterServerAppSettingsDefaultResourceSpec.fromMap(
              (map['defaultResourceSpec'] as Map).cast<String, dynamic>()),
      lifecycleConfigArns: map['lifecycleConfigArns'] == null
          ? null
          : (map['lifecycleConfigArns'] as List).cast<String>(),
    );
  }
}
