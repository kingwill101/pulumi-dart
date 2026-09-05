// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_profile_user_settings_code_editor_app_settings_app_lifecycle_management.dart';
import 'user_profile_user_settings_code_editor_app_settings_custom_image.dart';
import 'user_profile_user_settings_code_editor_app_settings_default_resource_spec.dart';

class UserProfileUserSettingsCodeEditorAppSettings {
  /// Indicates whether idle shutdown is activated for JupyterLab applications. see `appLifecycleManagement` Block below.
  final pulumi.Input<UserProfileUserSettingsCodeEditorAppSettingsAppLifecycleManagement?>? appLifecycleManagement;
  /// The lifecycle configuration that runs before the default lifecycle configuration. It can override changes made in the default lifecycle configuration.
  final pulumi.Input<String?>? builtInLifecycleConfigArn;
  /// A list of custom SageMaker AI images that are configured to run as a CodeEditor app. see Custom Image below.
  final pulumi.Input<List<UserProfileUserSettingsCodeEditorAppSettingsCustomImage>?>? customImages;
  /// Default instance type and the ARN of the SageMaker AI image created on the instance. see Default Resource Spec below.
  final pulumi.Input<UserProfileUserSettingsCodeEditorAppSettingsDefaultResourceSpec?>? defaultResourceSpec;
  /// ARN of the Lifecycle Configurations.
  final pulumi.Input<List<String>?>? lifecycleConfigArns;

  /// Creates a new [UserProfileUserSettingsCodeEditorAppSettings].
  /// [appLifecycleManagement] Indicates whether idle shutdown is activated for JupyterLab applications. see `appLifecycleManagement` Block below.
  /// [builtInLifecycleConfigArn] The lifecycle configuration that runs before the default lifecycle configuration. It can override changes made in the default lifecycle configuration.
  /// [customImages] A list of custom SageMaker AI images that are configured to run as a CodeEditor app. see Custom Image below.
  /// [defaultResourceSpec] Default instance type and the ARN of the SageMaker AI image created on the instance. see Default Resource Spec below.
  /// [lifecycleConfigArns] ARN of the Lifecycle Configurations.
  const UserProfileUserSettingsCodeEditorAppSettings({
    this.appLifecycleManagement,
    this.builtInLifecycleConfigArn,
    this.customImages,
    this.defaultResourceSpec,
    this.lifecycleConfigArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appLifecycleManagement': ?pulumi.Input.mapOptionalInputValue<UserProfileUserSettingsCodeEditorAppSettingsAppLifecycleManagement, Map<String, dynamic>>(appLifecycleManagement, (value) => value.toMap()),
      'builtInLifecycleConfigArn': ?builtInLifecycleConfigArn,
      'customImages': ?pulumi.Input.mapOptionalInputValue<List<UserProfileUserSettingsCodeEditorAppSettingsCustomImage>, List<Map<String, dynamic>>>(customImages, (value) => pulumi.Input.encodeList<UserProfileUserSettingsCodeEditorAppSettingsCustomImage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultResourceSpec': ?pulumi.Input.mapOptionalInputValue<UserProfileUserSettingsCodeEditorAppSettingsDefaultResourceSpec, Map<String, dynamic>>(defaultResourceSpec, (value) => value.toMap()),
      'lifecycleConfigArns': ?lifecycleConfigArns,
    };
  }

  factory UserProfileUserSettingsCodeEditorAppSettings.fromMap(Map<String, dynamic> map) {
    return UserProfileUserSettingsCodeEditorAppSettings(
      appLifecycleManagement: (() { final guardedValue = map['appLifecycleManagement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserProfileUserSettingsCodeEditorAppSettingsAppLifecycleManagement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      builtInLifecycleConfigArn: (() { final guardedValue = map['builtInLifecycleConfigArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customImages: (() { final guardedValue = map['customImages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserProfileUserSettingsCodeEditorAppSettingsCustomImage>(guardedValue, (value) => UserProfileUserSettingsCodeEditorAppSettingsCustomImage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultResourceSpec: (() { final guardedValue = map['defaultResourceSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserProfileUserSettingsCodeEditorAppSettingsDefaultResourceSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lifecycleConfigArns: (() { final guardedValue = map['lifecycleConfigArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
