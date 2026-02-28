// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'space_space_settings_jupyter_server_app_settings_code_repository.dart';
import 'space_space_settings_jupyter_server_app_settings_default_resource_spec.dart';

class SpaceSpaceSettingsJupyterServerAppSettings {
  /// A list of Git repositories that SageMaker AI automatically displays to users for cloning in the JupyterServer application. See `code_repository` Block below.
  final List<SpaceSpaceSettingsJupyterServerAppSettingsCodeRepository>?
      codeRepositories;

  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. See `default_resource_spec` Block below.
  final SpaceSpaceSettingsJupyterServerAppSettingsDefaultResourceSpec
      defaultResourceSpec;

  /// The Amazon Resource Name (ARN) of the Lifecycle Configurations.
  final List<String>? lifecycleConfigArns;

  /// Creates a new [SpaceSpaceSettingsJupyterServerAppSettings].
  /// [codeRepositories] A list of Git repositories that SageMaker AI automatically displays to users for cloning in the JupyterServer application. See `code_repository` Block below.
  /// [defaultResourceSpec] The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. See `default_resource_spec` Block below.
  /// [lifecycleConfigArns] The Amazon Resource Name (ARN) of the Lifecycle Configurations.
  SpaceSpaceSettingsJupyterServerAppSettings({
    this.codeRepositories,
    required this.defaultResourceSpec,
    this.lifecycleConfigArns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeRepositoriesValue = codeRepositories;
    if (codeRepositoriesValue != null) {
      map['codeRepositories'] = pulumi.Input.encodeList<
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
          : pulumi.Input.decodeList<
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
