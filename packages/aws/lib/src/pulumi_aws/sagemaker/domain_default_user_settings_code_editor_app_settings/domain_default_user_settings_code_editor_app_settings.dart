// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../domain_default_user_settings_code_editor_app_settings_app_lifecycle_management/domain_default_user_settings_code_editor_app_settings_app_lifecycle_management.dart';
import '../domain_default_user_settings_code_editor_app_settings_custom_image/domain_default_user_settings_code_editor_app_settings_custom_image.dart';
import '../domain_default_user_settings_code_editor_app_settings_default_resource_spec/domain_default_user_settings_code_editor_app_settings_default_resource_spec.dart';

class DomainDefaultUserSettingsCodeEditorAppSettings {
  /// Indicates whether idle shutdown is activated for JupyterLab applications. see `app_lifecycle_management` Block below.
  final DomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagement?
      appLifecycleManagement;

  /// The lifecycle configuration that runs before the default lifecycle configuration. It can override changes made in the default lifecycle configuration.
  final String? builtInLifecycleConfigArn;

  /// A list of custom SageMaker AI images that are configured to run as a CodeEditor app. see `custom_image` Block below.
  final List<DomainDefaultUserSettingsCodeEditorAppSettingsCustomImage>?
      customImages;

  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see `default_resource_spec` Block below.
  final DomainDefaultUserSettingsCodeEditorAppSettingsDefaultResourceSpec?
      defaultResourceSpec;

  /// The Amazon Resource Name (ARN) of the Lifecycle Configurations.
  final List<String>? lifecycleConfigArns;

  DomainDefaultUserSettingsCodeEditorAppSettings({
    this.appLifecycleManagement,
    this.builtInLifecycleConfigArn,
    this.customImages,
    this.defaultResourceSpec,
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
    final customImagesValue = customImages;
    if (customImagesValue != null) {
      map['customImages'] = pulumi.Input.encodeList<
          DomainDefaultUserSettingsCodeEditorAppSettingsCustomImage,
          Map<String, dynamic>>(customImagesValue, (value) => value.toMap());
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

  factory DomainDefaultUserSettingsCodeEditorAppSettings.fromMap(
      Map<String, dynamic> map) {
    return DomainDefaultUserSettingsCodeEditorAppSettings(
      appLifecycleManagement: map['appLifecycleManagement'] == null
          ? null
          : DomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagement
              .fromMap((map['appLifecycleManagement'] as Map)
                  .cast<String, dynamic>()),
      builtInLifecycleConfigArn: map['builtInLifecycleConfigArn'] == null
          ? null
          : map['builtInLifecycleConfigArn'] as String,
      customImages: map['customImages'] == null
          ? null
          : pulumi.Input.decodeList<
                  DomainDefaultUserSettingsCodeEditorAppSettingsCustomImage>(
              map['customImages'],
              (value) =>
                  DomainDefaultUserSettingsCodeEditorAppSettingsCustomImage
                      .fromMap((value as Map).cast<String, dynamic>())),
      defaultResourceSpec: map['defaultResourceSpec'] == null
          ? null
          : DomainDefaultUserSettingsCodeEditorAppSettingsDefaultResourceSpec
              .fromMap(
                  (map['defaultResourceSpec'] as Map).cast<String, dynamic>()),
      lifecycleConfigArns: map['lifecycleConfigArns'] == null
          ? null
          : (map['lifecycleConfigArns'] as List).cast<String>(),
    );
  }
}
