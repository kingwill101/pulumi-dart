// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../domain_default_space_settings_jupyter_lab_app_settings_app_lifecycle_management/domain_default_space_settings_jupyter_lab_app_settings_app_lifecycle_management.dart';
import '../domain_default_space_settings_jupyter_lab_app_settings_code_repository/domain_default_space_settings_jupyter_lab_app_settings_code_repository.dart';
import '../domain_default_space_settings_jupyter_lab_app_settings_custom_image/domain_default_space_settings_jupyter_lab_app_settings_custom_image.dart';
import '../domain_default_space_settings_jupyter_lab_app_settings_default_resource_spec/domain_default_space_settings_jupyter_lab_app_settings_default_resource_spec.dart';
import '../domain_default_space_settings_jupyter_lab_app_settings_emr_settings/domain_default_space_settings_jupyter_lab_app_settings_emr_settings.dart';

class DomainDefaultSpaceSettingsJupyterLabAppSettings {
  /// Indicates whether idle shutdown is activated for JupyterLab applications. see `app_lifecycle_management` Block below.
  final DomainDefaultSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement?
      appLifecycleManagement;

  /// The lifecycle configuration that runs before the default lifecycle configuration. It can override changes made in the default lifecycle configuration.
  final String? builtInLifecycleConfigArn;

  /// A list of Git repositories that SageMaker AI automatically displays to users for cloning in the JupyterServer application. see `code_repository` Block below.
  final List<DomainDefaultSpaceSettingsJupyterLabAppSettingsCodeRepository>?
      codeRepositories;

  /// A list of custom SageMaker AI images that are configured to run as a JupyterLab app. see `custom_image` Block below.
  final List<DomainDefaultSpaceSettingsJupyterLabAppSettingsCustomImage>?
      customImages;

  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see `default_resource_spec` Block below.
  final DomainDefaultSpaceSettingsJupyterLabAppSettingsDefaultResourceSpec?
      defaultResourceSpec;

  /// The configuration parameters that specify the IAM roles assumed by the execution role of SageMaker AI (assumable roles) and the cluster instances or job execution environments (execution roles or runtime roles) to manage and access resources required for running Amazon EMR clusters or Amazon EMR Serverless applications. see `emr_settings` Block below.
  final DomainDefaultSpaceSettingsJupyterLabAppSettingsEmrSettings? emrSettings;

  /// The Amazon Resource Name (ARN) of the Lifecycle Configurations.
  final List<String>? lifecycleConfigArns;

  DomainDefaultSpaceSettingsJupyterLabAppSettings({
    this.appLifecycleManagement,
    this.builtInLifecycleConfigArn,
    this.codeRepositories,
    this.customImages,
    this.defaultResourceSpec,
    this.emrSettings,
    this.lifecycleConfigArns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appLifecycleManagementValue = appLifecycleManagement;
    if (appLifecycleManagementValue != null) {
      map['appLifecycleManagement'] = appLifecycleManagementValue.toMap();
    }
    final builtInLifecycleConfigArnValue = builtInLifecycleConfigArn;
    if (builtInLifecycleConfigArnValue != null) {
      map['builtInLifecycleConfigArn'] = builtInLifecycleConfigArnValue;
    }
    final codeRepositoriesValue = codeRepositories;
    if (codeRepositoriesValue != null) {
      map['codeRepositories'] = Input.encodeList<
              DomainDefaultSpaceSettingsJupyterLabAppSettingsCodeRepository,
              Map<String, dynamic>>(
          codeRepositoriesValue, (value) => value.toMap());
    }
    final customImagesValue = customImages;
    if (customImagesValue != null) {
      map['customImages'] = Input.encodeList<
          DomainDefaultSpaceSettingsJupyterLabAppSettingsCustomImage,
          Map<String, dynamic>>(customImagesValue, (value) => value.toMap());
    }
    final defaultResourceSpecValue = defaultResourceSpec;
    if (defaultResourceSpecValue != null) {
      map['defaultResourceSpec'] = defaultResourceSpecValue.toMap();
    }
    final emrSettingsValue = emrSettings;
    if (emrSettingsValue != null) {
      map['emrSettings'] = emrSettingsValue.toMap();
    }
    final lifecycleConfigArnsValue = lifecycleConfigArns;
    if (lifecycleConfigArnsValue != null) {
      map['lifecycleConfigArns'] = lifecycleConfigArnsValue;
    }
    return map;
  }

  factory DomainDefaultSpaceSettingsJupyterLabAppSettings.fromMap(
      Map<String, dynamic> map) {
    return DomainDefaultSpaceSettingsJupyterLabAppSettings(
      appLifecycleManagement: map['appLifecycleManagement'] == null
          ? null
          : DomainDefaultSpaceSettingsJupyterLabAppSettingsAppLifecycleManagement
              .fromMap((map['appLifecycleManagement'] as Map)
                  .cast<String, dynamic>()),
      builtInLifecycleConfigArn: map['builtInLifecycleConfigArn'] == null
          ? null
          : map['builtInLifecycleConfigArn'] as String,
      codeRepositories: map['codeRepositories'] == null
          ? null
          : Input.decodeList<
                  DomainDefaultSpaceSettingsJupyterLabAppSettingsCodeRepository>(
              map['codeRepositories'],
              (value) =>
                  DomainDefaultSpaceSettingsJupyterLabAppSettingsCodeRepository
                      .fromMap((value as Map).cast<String, dynamic>())),
      customImages: map['customImages'] == null
          ? null
          : Input.decodeList<
                  DomainDefaultSpaceSettingsJupyterLabAppSettingsCustomImage>(
              map['customImages'],
              (value) =>
                  DomainDefaultSpaceSettingsJupyterLabAppSettingsCustomImage
                      .fromMap((value as Map).cast<String, dynamic>())),
      defaultResourceSpec: map['defaultResourceSpec'] == null
          ? null
          : DomainDefaultSpaceSettingsJupyterLabAppSettingsDefaultResourceSpec
              .fromMap(
                  (map['defaultResourceSpec'] as Map).cast<String, dynamic>()),
      emrSettings: map['emrSettings'] == null
          ? null
          : DomainDefaultSpaceSettingsJupyterLabAppSettingsEmrSettings.fromMap(
              (map['emrSettings'] as Map).cast<String, dynamic>()),
      lifecycleConfigArns: map['lifecycleConfigArns'] == null
          ? null
          : (map['lifecycleConfigArns'] as List).cast<String>(),
    );
  }
}
