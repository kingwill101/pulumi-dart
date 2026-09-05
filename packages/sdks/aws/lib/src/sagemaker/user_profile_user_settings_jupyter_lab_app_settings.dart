// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_profile_user_settings_jupyter_lab_app_settings_app_lifecycle_management.dart';
import 'user_profile_user_settings_jupyter_lab_app_settings_code_repository.dart';
import 'user_profile_user_settings_jupyter_lab_app_settings_custom_image.dart';
import 'user_profile_user_settings_jupyter_lab_app_settings_default_resource_spec.dart';
import 'user_profile_user_settings_jupyter_lab_app_settings_emr_settings.dart';

class UserProfileUserSettingsJupyterLabAppSettings {
  /// Indicates whether idle shutdown is activated for JupyterLab applications. see `appLifecycleManagement` Block below.
  final pulumi.Input<UserProfileUserSettingsJupyterLabAppSettingsAppLifecycleManagement?>? appLifecycleManagement;
  /// The lifecycle configuration that runs before the default lifecycle configuration. It can override changes made in the default lifecycle configuration.
  final pulumi.Input<String?>? builtInLifecycleConfigArn;
  /// A list of Git repositories that SageMaker AI automatically displays to users for cloning in the JupyterServer application. see Code Repository below.
  final pulumi.Input<List<UserProfileUserSettingsJupyterLabAppSettingsCodeRepository>?>? codeRepositories;
  final pulumi.Input<List<UserProfileUserSettingsJupyterLabAppSettingsCustomImage>?>? customImages;
  /// Default instance type and the ARN of the SageMaker AI image created on the instance. see Default Resource Spec below.
  final pulumi.Input<UserProfileUserSettingsJupyterLabAppSettingsDefaultResourceSpec?>? defaultResourceSpec;
  /// The configuration parameters that specify the IAM roles assumed by the execution role of SageMaker AI (assumable roles) and the cluster instances or job execution environments (execution roles or runtime roles) to manage and access resources required for running Amazon EMR clusters or Amazon EMR Serverless applications. see `emrSettings` Block below.
  final pulumi.Input<UserProfileUserSettingsJupyterLabAppSettingsEmrSettings?>? emrSettings;
  /// ARN of the Lifecycle Configurations.
  final pulumi.Input<List<String>?>? lifecycleConfigArns;

  /// Creates a new [UserProfileUserSettingsJupyterLabAppSettings].
  /// [appLifecycleManagement] Indicates whether idle shutdown is activated for JupyterLab applications. see `appLifecycleManagement` Block below.
  /// [builtInLifecycleConfigArn] The lifecycle configuration that runs before the default lifecycle configuration. It can override changes made in the default lifecycle configuration.
  /// [codeRepositories] A list of Git repositories that SageMaker AI automatically displays to users for cloning in the JupyterServer application. see Code Repository below.
  /// [customImages] Optional.
  /// [defaultResourceSpec] Default instance type and the ARN of the SageMaker AI image created on the instance. see Default Resource Spec below.
  /// [emrSettings] The configuration parameters that specify the IAM roles assumed by the execution role of SageMaker AI (assumable roles) and the cluster instances or job execution environments (execution roles or runtime roles) to manage and access resources required for running Amazon EMR clusters or Amazon EMR Serverless applications. see `emrSettings` Block below.
  /// [lifecycleConfigArns] ARN of the Lifecycle Configurations.
  const UserProfileUserSettingsJupyterLabAppSettings({
    this.appLifecycleManagement,
    this.builtInLifecycleConfigArn,
    this.codeRepositories,
    this.customImages,
    this.defaultResourceSpec,
    this.emrSettings,
    this.lifecycleConfigArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appLifecycleManagement': ?pulumi.Input.mapOptionalInputValue<UserProfileUserSettingsJupyterLabAppSettingsAppLifecycleManagement, Map<String, dynamic>>(appLifecycleManagement, (value) => value.toMap()),
      'builtInLifecycleConfigArn': ?builtInLifecycleConfigArn,
      'codeRepositories': ?pulumi.Input.mapOptionalInputValue<List<UserProfileUserSettingsJupyterLabAppSettingsCodeRepository>, List<Map<String, dynamic>>>(codeRepositories, (value) => pulumi.Input.encodeList<UserProfileUserSettingsJupyterLabAppSettingsCodeRepository, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customImages': ?pulumi.Input.mapOptionalInputValue<List<UserProfileUserSettingsJupyterLabAppSettingsCustomImage>, List<Map<String, dynamic>>>(customImages, (value) => pulumi.Input.encodeList<UserProfileUserSettingsJupyterLabAppSettingsCustomImage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultResourceSpec': ?pulumi.Input.mapOptionalInputValue<UserProfileUserSettingsJupyterLabAppSettingsDefaultResourceSpec, Map<String, dynamic>>(defaultResourceSpec, (value) => value.toMap()),
      'emrSettings': ?pulumi.Input.mapOptionalInputValue<UserProfileUserSettingsJupyterLabAppSettingsEmrSettings, Map<String, dynamic>>(emrSettings, (value) => value.toMap()),
      'lifecycleConfigArns': ?lifecycleConfigArns,
    };
  }

  factory UserProfileUserSettingsJupyterLabAppSettings.fromMap(Map<String, dynamic> map) {
    return UserProfileUserSettingsJupyterLabAppSettings(
      appLifecycleManagement: (() { final guardedValue = map['appLifecycleManagement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserProfileUserSettingsJupyterLabAppSettingsAppLifecycleManagement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      builtInLifecycleConfigArn: (() { final guardedValue = map['builtInLifecycleConfigArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      codeRepositories: (() { final guardedValue = map['codeRepositories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserProfileUserSettingsJupyterLabAppSettingsCodeRepository>(guardedValue, (value) => UserProfileUserSettingsJupyterLabAppSettingsCodeRepository.fromMap((value as Map).cast<String, dynamic>()))); })(),
      customImages: (() { final guardedValue = map['customImages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserProfileUserSettingsJupyterLabAppSettingsCustomImage>(guardedValue, (value) => UserProfileUserSettingsJupyterLabAppSettingsCustomImage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultResourceSpec: (() { final guardedValue = map['defaultResourceSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserProfileUserSettingsJupyterLabAppSettingsDefaultResourceSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      emrSettings: (() { final guardedValue = map['emrSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserProfileUserSettingsJupyterLabAppSettingsEmrSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lifecycleConfigArns: (() { final guardedValue = map['lifecycleConfigArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
