// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../domain_default_user_settings_code_editor_app_settings_app_lifecycle_management/domain_default_user_settings_code_editor_app_settings_app_lifecycle_management.dart';
import '../domain_default_user_settings_code_editor_app_settings_custom_image/domain_default_user_settings_code_editor_app_settings_custom_image.dart';
import '../domain_default_user_settings_code_editor_app_settings_default_resource_spec/domain_default_user_settings_code_editor_app_settings_default_resource_spec.dart';

class DomainDefaultUserSettingsCodeEditorAppSettings {
  /// Indicates whether idle shutdown is activated for JupyterLab applications. see <span pulumi-lang-nodejs="`appLifecycleManagement`" pulumi-lang-dotnet="`AppLifecycleManagement`" pulumi-lang-go="`appLifecycleManagement`" pulumi-lang-python="`app_lifecycle_management`" pulumi-lang-yaml="`appLifecycleManagement`" pulumi-lang-java="`appLifecycleManagement`">`app_lifecycle_management`</span> Block below.
  final DomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagement?
      appLifecycleManagement;

  /// The lifecycle configuration that runs before the default lifecycle configuration. It can override changes made in the default lifecycle configuration.
  final String? builtInLifecycleConfigArn;

  /// A list of custom SageMaker AI images that are configured to run as a CodeEditor app. see <span pulumi-lang-nodejs="`customImage`" pulumi-lang-dotnet="`CustomImage`" pulumi-lang-go="`customImage`" pulumi-lang-python="`custom_image`" pulumi-lang-yaml="`customImage`" pulumi-lang-java="`customImage`">`custom_image`</span> Block below.
  final List<DomainDefaultUserSettingsCodeEditorAppSettingsCustomImage>?
      customImages;

  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see <span pulumi-lang-nodejs="`defaultResourceSpec`" pulumi-lang-dotnet="`DefaultResourceSpec`" pulumi-lang-go="`defaultResourceSpec`" pulumi-lang-python="`default_resource_spec`" pulumi-lang-yaml="`defaultResourceSpec`" pulumi-lang-java="`defaultResourceSpec`">`default_resource_spec`</span> Block below.
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
      map['customImages'] = Input.encodeList<
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
          : Input.decodeList<
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
