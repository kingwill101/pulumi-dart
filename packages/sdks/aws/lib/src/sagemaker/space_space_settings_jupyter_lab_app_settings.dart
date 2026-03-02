// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'space_space_settings_jupyter_lab_app_settings_app_lifecycle_management.dart';
import 'space_space_settings_jupyter_lab_app_settings_code_repository.dart';
import 'space_space_settings_jupyter_lab_app_settings_default_resource_spec.dart';

class SpaceSpaceSettingsJupyterLabAppSettings {
  /// Settings that are used to configure and manage the lifecycle of JupyterLab applications in a space. See `app_lifecycle_management` Block below.
  final pulumi.Input<SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement>? appLifecycleManagement;
  /// A list of Git repositories that SageMaker AI automatically displays to users for cloning in the JupyterLab application. See `code_repository` Block below.
  final pulumi.Input<List<SpaceSpaceSettingsJupyterLabAppSettingsCodeRepository>>? codeRepositories;
  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. See `default_resource_spec` Block below.
  final pulumi.Input<SpaceSpaceSettingsJupyterLabAppSettingsDefaultResourceSpec> defaultResourceSpec;

  /// Creates a new [SpaceSpaceSettingsJupyterLabAppSettings].
  /// [appLifecycleManagement] Settings that are used to configure and manage the lifecycle of JupyterLab applications in a space. See `app_lifecycle_management` Block below.
  /// [codeRepositories] A list of Git repositories that SageMaker AI automatically displays to users for cloning in the JupyterLab application. See `code_repository` Block below.
  /// [defaultResourceSpec] The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. See `default_resource_spec` Block below.
  SpaceSpaceSettingsJupyterLabAppSettings({
    this.appLifecycleManagement,
    this.codeRepositories,
    required this.defaultResourceSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appLifecycleManagement': ?pulumi.Input.mapOptionalInputValue<SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement, Map<String, dynamic>>(appLifecycleManagement, (value) => value.toMap()),
      'codeRepositories': ?pulumi.Input.mapOptionalInputValue<List<SpaceSpaceSettingsJupyterLabAppSettingsCodeRepository>, List<Map<String, dynamic>>>(codeRepositories, (value) => pulumi.Input.encodeList<SpaceSpaceSettingsJupyterLabAppSettingsCodeRepository, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultResourceSpec': pulumi.Input.mapInputValue<SpaceSpaceSettingsJupyterLabAppSettingsDefaultResourceSpec, Map<String, dynamic>>(defaultResourceSpec, (value) => value.toMap()),
    };
  }

  factory SpaceSpaceSettingsJupyterLabAppSettings.fromMap(Map<String, dynamic> map) {
    return SpaceSpaceSettingsJupyterLabAppSettings(
      appLifecycleManagement: map['appLifecycleManagement'] == null ? null : (SpaceSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement.fromMap((map['appLifecycleManagement'] as Map).cast<String, dynamic>())).input(),
      codeRepositories: map['codeRepositories'] == null ? null : (pulumi.Input.decodeList<SpaceSpaceSettingsJupyterLabAppSettingsCodeRepository>(map['codeRepositories'], (value) => SpaceSpaceSettingsJupyterLabAppSettingsCodeRepository.fromMap((value as Map).cast<String, dynamic>()))).input(),
      defaultResourceSpec: (SpaceSpaceSettingsJupyterLabAppSettingsDefaultResourceSpec.fromMap((map['defaultResourceSpec'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

