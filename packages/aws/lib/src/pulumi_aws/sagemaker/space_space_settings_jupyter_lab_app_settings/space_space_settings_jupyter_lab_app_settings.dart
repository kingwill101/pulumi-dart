// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../space_space_settings_jupyter_lab_app_settings_app_lifecycle_management/space_space_settings_jupyter_lab_app_settings_app_lifecycle_management.dart';
import '../space_space_settings_jupyter_lab_app_settings_code_repository/space_space_settings_jupyter_lab_app_settings_code_repository.dart';
import '../space_space_settings_jupyter_lab_app_settings_default_resource_spec/space_space_settings_jupyter_lab_app_settings_default_resource_spec.dart';

class SpaceSpaceSettingsJupyterLabAppSettings {
  /// Settings that are used to configure and manage the lifecycle of JupyterLab applications in a space. See <span pulumi-lang-nodejs="`appLifecycleManagement`" pulumi-lang-dotnet="`AppLifecycleManagement`" pulumi-lang-go="`appLifecycleManagement`" pulumi-lang-python="`app_lifecycle_management`" pulumi-lang-yaml="`appLifecycleManagement`" pulumi-lang-java="`appLifecycleManagement`">`app_lifecycle_management`</span> Block below.
  final SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement?
      appLifecycleManagement;

  /// A list of Git repositories that SageMaker AI automatically displays to users for cloning in the JupyterLab application. See <span pulumi-lang-nodejs="`codeRepository`" pulumi-lang-dotnet="`CodeRepository`" pulumi-lang-go="`codeRepository`" pulumi-lang-python="`code_repository`" pulumi-lang-yaml="`codeRepository`" pulumi-lang-java="`codeRepository`">`code_repository`</span> Block below.
  final List<SpaceSpaceSettingsJupyterLabAppSettingsCodeRepository>?
      codeRepositories;

  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. See <span pulumi-lang-nodejs="`defaultResourceSpec`" pulumi-lang-dotnet="`DefaultResourceSpec`" pulumi-lang-go="`defaultResourceSpec`" pulumi-lang-python="`default_resource_spec`" pulumi-lang-yaml="`defaultResourceSpec`" pulumi-lang-java="`defaultResourceSpec`">`default_resource_spec`</span> Block below.
  final SpaceSpaceSettingsJupyterLabAppSettingsDefaultResourceSpec
      defaultResourceSpec;

  SpaceSpaceSettingsJupyterLabAppSettings({
    this.appLifecycleManagement,
    this.codeRepositories,
    required this.defaultResourceSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appLifecycleManagementValue = appLifecycleManagement;
    if (appLifecycleManagementValue != null) {
      map['appLifecycleManagement'] = appLifecycleManagementValue.toMap();
    }
    final codeRepositoriesValue = codeRepositories;
    if (codeRepositoriesValue != null) {
      map['codeRepositories'] = Input.encodeList<
              SpaceSpaceSettingsJupyterLabAppSettingsCodeRepository,
              Map<String, dynamic>>(
          codeRepositoriesValue, (value) => value.toMap());
    }
    map['defaultResourceSpec'] = defaultResourceSpec.toMap();
    return map;
  }

  factory SpaceSpaceSettingsJupyterLabAppSettings.fromMap(
      Map<String, dynamic> map) {
    return SpaceSpaceSettingsJupyterLabAppSettings(
      appLifecycleManagement: map['appLifecycleManagement'] == null
          ? null
          : SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement
              .fromMap((map['appLifecycleManagement'] as Map)
                  .cast<String, dynamic>()),
      codeRepositories: map['codeRepositories'] == null
          ? null
          : Input.decodeList<
                  SpaceSpaceSettingsJupyterLabAppSettingsCodeRepository>(
              map['codeRepositories'],
              (value) =>
                  SpaceSpaceSettingsJupyterLabAppSettingsCodeRepository.fromMap(
                      (value as Map).cast<String, dynamic>())),
      defaultResourceSpec:
          SpaceSpaceSettingsJupyterLabAppSettingsDefaultResourceSpec.fromMap(
              (map['defaultResourceSpec'] as Map).cast<String, dynamic>()),
    );
  }
}
