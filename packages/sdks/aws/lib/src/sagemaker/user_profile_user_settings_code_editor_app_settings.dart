// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_profile_user_settings_code_editor_app_settings_app_lifecycle_management.dart';
import 'user_profile_user_settings_code_editor_app_settings_custom_image.dart';
import 'user_profile_user_settings_code_editor_app_settings_default_resource_spec.dart';

class UserProfileUserSettingsCodeEditorAppSettings {
  /// Indicates whether idle shutdown is activated for JupyterLab applications. see `app_lifecycle_management` Block below.
  final UserProfileUserSettingsCodeEditorAppSettingsAppLifecycleManagement? appLifecycleManagement;
  /// The lifecycle configuration that runs before the default lifecycle configuration. It can override changes made in the default lifecycle configuration.
  final String? builtInLifecycleConfigArn;
  /// A list of custom SageMaker AI images that are configured to run as a CodeEditor app. see Custom Image below.
  final List<UserProfileUserSettingsCodeEditorAppSettingsCustomImage>? customImages;
  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see Default Resource Spec below.
  final UserProfileUserSettingsCodeEditorAppSettingsDefaultResourceSpec? defaultResourceSpec;
  /// The Amazon Resource Name (ARN) of the Lifecycle Configurations.
  final List<String>? lifecycleConfigArns;

  /// Creates a new [UserProfileUserSettingsCodeEditorAppSettings].
  /// [appLifecycleManagement] Indicates whether idle shutdown is activated for JupyterLab applications. see `app_lifecycle_management` Block below.
  /// [builtInLifecycleConfigArn] The lifecycle configuration that runs before the default lifecycle configuration. It can override changes made in the default lifecycle configuration.
  /// [customImages] A list of custom SageMaker AI images that are configured to run as a CodeEditor app. see Custom Image below.
  /// [defaultResourceSpec] The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see Default Resource Spec below.
  /// [lifecycleConfigArns] The Amazon Resource Name (ARN) of the Lifecycle Configurations.
  UserProfileUserSettingsCodeEditorAppSettings({
    this.appLifecycleManagement,
    this.builtInLifecycleConfigArn,
    this.customImages,
    this.defaultResourceSpec,
    this.lifecycleConfigArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appLifecycleManagement': ?appLifecycleManagement == null ? null : appLifecycleManagement!.toMap(),
      'builtInLifecycleConfigArn': ?builtInLifecycleConfigArn,
      'customImages': ?customImages == null ? null : pulumi.Input.encodeList<UserProfileUserSettingsCodeEditorAppSettingsCustomImage, Map<String, dynamic>>(customImages!, (value) => value.toMap()),
      'defaultResourceSpec': ?defaultResourceSpec == null ? null : defaultResourceSpec!.toMap(),
      'lifecycleConfigArns': ?lifecycleConfigArns,
    };
  }

  factory UserProfileUserSettingsCodeEditorAppSettings.fromMap(Map<String, dynamic> map) {
    return UserProfileUserSettingsCodeEditorAppSettings(
      appLifecycleManagement: map['appLifecycleManagement'] == null ? null : UserProfileUserSettingsCodeEditorAppSettingsAppLifecycleManagement.fromMap((map['appLifecycleManagement'] as Map).cast<String, dynamic>()),
      builtInLifecycleConfigArn: map['builtInLifecycleConfigArn'] == null ? null : map['builtInLifecycleConfigArn'] as String,
      customImages: map['customImages'] == null ? null : pulumi.Input.decodeList<UserProfileUserSettingsCodeEditorAppSettingsCustomImage>(map['customImages'], (value) => UserProfileUserSettingsCodeEditorAppSettingsCustomImage.fromMap((value as Map).cast<String, dynamic>())),
      defaultResourceSpec: map['defaultResourceSpec'] == null ? null : UserProfileUserSettingsCodeEditorAppSettingsDefaultResourceSpec.fromMap((map['defaultResourceSpec'] as Map).cast<String, dynamic>()),
      lifecycleConfigArns: map['lifecycleConfigArns'] == null ? null : (map['lifecycleConfigArns'] as List).cast<String>(),
    );
  }
}

