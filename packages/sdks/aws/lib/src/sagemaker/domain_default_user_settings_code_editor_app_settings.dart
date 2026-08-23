// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_default_user_settings_code_editor_app_settings_app_lifecycle_management.dart';
import 'domain_default_user_settings_code_editor_app_settings_custom_image.dart';
import 'domain_default_user_settings_code_editor_app_settings_default_resource_spec.dart';

class DomainDefaultUserSettingsCodeEditorAppSettings {
  /// Indicates whether idle shutdown is activated for JupyterLab applications. see `appLifecycleManagement` Block below.
  final pulumi.Input<DomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagement>? appLifecycleManagement;
  /// The lifecycle configuration that runs before the default lifecycle configuration. It can override changes made in the default lifecycle configuration.
  final pulumi.Input<String>? builtInLifecycleConfigArn;
  /// A list of custom SageMaker AI images that are configured to run as a CodeEditor app. see `customImage` Block below.
  final pulumi.Input<List<DomainDefaultUserSettingsCodeEditorAppSettingsCustomImage>>? customImages;
  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see `defaultResourceSpec` Block below.
  final pulumi.Input<DomainDefaultUserSettingsCodeEditorAppSettingsDefaultResourceSpec>? defaultResourceSpec;
  /// The Amazon Resource Name (ARN) of the Lifecycle Configurations.
  final pulumi.Input<List<String>>? lifecycleConfigArns;

  /// Creates a new [DomainDefaultUserSettingsCodeEditorAppSettings].
  /// [appLifecycleManagement] Indicates whether idle shutdown is activated for JupyterLab applications. see `appLifecycleManagement` Block below.
  /// [builtInLifecycleConfigArn] The lifecycle configuration that runs before the default lifecycle configuration. It can override changes made in the default lifecycle configuration.
  /// [customImages] A list of custom SageMaker AI images that are configured to run as a CodeEditor app. see `customImage` Block below.
  /// [defaultResourceSpec] The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see `defaultResourceSpec` Block below.
  /// [lifecycleConfigArns] The Amazon Resource Name (ARN) of the Lifecycle Configurations.
  const DomainDefaultUserSettingsCodeEditorAppSettings({
    this.appLifecycleManagement,
    this.builtInLifecycleConfigArn,
    this.customImages,
    this.defaultResourceSpec,
    this.lifecycleConfigArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appLifecycleManagement': ?pulumi.Input.mapOptionalInputValue<DomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagement, Map<String, dynamic>>(appLifecycleManagement, (value) => value.toMap()),
      'builtInLifecycleConfigArn': ?builtInLifecycleConfigArn,
      'customImages': ?pulumi.Input.mapOptionalInputValue<List<DomainDefaultUserSettingsCodeEditorAppSettingsCustomImage>, List<Map<String, dynamic>>>(customImages, (value) => pulumi.Input.encodeList<DomainDefaultUserSettingsCodeEditorAppSettingsCustomImage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultResourceSpec': ?pulumi.Input.mapOptionalInputValue<DomainDefaultUserSettingsCodeEditorAppSettingsDefaultResourceSpec, Map<String, dynamic>>(defaultResourceSpec, (value) => value.toMap()),
      'lifecycleConfigArns': ?lifecycleConfigArns,
    };
  }

  factory DomainDefaultUserSettingsCodeEditorAppSettings.fromMap(Map<String, dynamic> map) {
    return DomainDefaultUserSettingsCodeEditorAppSettings(
      appLifecycleManagement: (() { final guardedValue = map['appLifecycleManagement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDefaultUserSettingsCodeEditorAppSettingsAppLifecycleManagement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      builtInLifecycleConfigArn: (() { final guardedValue = map['builtInLifecycleConfigArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customImages: (() { final guardedValue = map['customImages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDefaultUserSettingsCodeEditorAppSettingsCustomImage>(guardedValue, (value) => DomainDefaultUserSettingsCodeEditorAppSettingsCustomImage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultResourceSpec: (() { final guardedValue = map['defaultResourceSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDefaultUserSettingsCodeEditorAppSettingsDefaultResourceSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lifecycleConfigArns: (() { final guardedValue = map['lifecycleConfigArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
