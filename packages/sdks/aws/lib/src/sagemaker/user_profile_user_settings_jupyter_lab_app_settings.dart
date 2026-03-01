// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_profile_user_settings_jupyter_lab_app_settings_app_lifecycle_management.dart';
import 'user_profile_user_settings_jupyter_lab_app_settings_code_repository.dart';
import 'user_profile_user_settings_jupyter_lab_app_settings_custom_image.dart';
import 'user_profile_user_settings_jupyter_lab_app_settings_default_resource_spec.dart';
import 'user_profile_user_settings_jupyter_lab_app_settings_emr_settings.dart';

class UserProfileUserSettingsJupyterLabAppSettings {
  /// Indicates whether idle shutdown is activated for JupyterLab applications. see `app_lifecycle_management` Block below.
  final UserProfileUserSettingsJupyterLabAppSettingsAppLifecycleManagement? appLifecycleManagement;
  /// The lifecycle configuration that runs before the default lifecycle configuration. It can override changes made in the default lifecycle configuration.
  final String? builtInLifecycleConfigArn;
  /// A list of Git repositories that SageMaker AI automatically displays to users for cloning in the JupyterServer application. see Code Repository below.
  final List<UserProfileUserSettingsJupyterLabAppSettingsCodeRepository>? codeRepositories;
  final List<UserProfileUserSettingsJupyterLabAppSettingsCustomImage>? customImages;
  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see Default Resource Spec below.
  final UserProfileUserSettingsJupyterLabAppSettingsDefaultResourceSpec? defaultResourceSpec;
  /// The configuration parameters that specify the IAM roles assumed by the execution role of SageMaker AI (assumable roles) and the cluster instances or job execution environments (execution roles or runtime roles) to manage and access resources required for running Amazon EMR clusters or Amazon EMR Serverless applications. see `emr_settings` Block below.
  final UserProfileUserSettingsJupyterLabAppSettingsEmrSettings? emrSettings;
  /// The Amazon Resource Name (ARN) of the Lifecycle Configurations.
  final List<String>? lifecycleConfigArns;

  /// Creates a new [UserProfileUserSettingsJupyterLabAppSettings].
  /// [appLifecycleManagement] Indicates whether idle shutdown is activated for JupyterLab applications. see `app_lifecycle_management` Block below.
  /// [builtInLifecycleConfigArn] The lifecycle configuration that runs before the default lifecycle configuration. It can override changes made in the default lifecycle configuration.
  /// [codeRepositories] A list of Git repositories that SageMaker AI automatically displays to users for cloning in the JupyterServer application. see Code Repository below.
  /// [customImages] Optional.
  /// [defaultResourceSpec] The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see Default Resource Spec below.
  /// [emrSettings] The configuration parameters that specify the IAM roles assumed by the execution role of SageMaker AI (assumable roles) and the cluster instances or job execution environments (execution roles or runtime roles) to manage and access resources required for running Amazon EMR clusters or Amazon EMR Serverless applications. see `emr_settings` Block below.
  /// [lifecycleConfigArns] The Amazon Resource Name (ARN) of the Lifecycle Configurations.
  UserProfileUserSettingsJupyterLabAppSettings({
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
      'appLifecycleManagement': ?appLifecycleManagement == null ? null : appLifecycleManagement!.toMap(),
      'builtInLifecycleConfigArn': ?builtInLifecycleConfigArn,
      'codeRepositories': ?codeRepositories == null ? null : pulumi.Input.encodeList<UserProfileUserSettingsJupyterLabAppSettingsCodeRepository, Map<String, dynamic>>(codeRepositories!, (value) => value.toMap()),
      'customImages': ?customImages == null ? null : pulumi.Input.encodeList<UserProfileUserSettingsJupyterLabAppSettingsCustomImage, Map<String, dynamic>>(customImages!, (value) => value.toMap()),
      'defaultResourceSpec': ?defaultResourceSpec == null ? null : defaultResourceSpec!.toMap(),
      'emrSettings': ?emrSettings == null ? null : emrSettings!.toMap(),
      'lifecycleConfigArns': ?lifecycleConfigArns,
    };
  }

  factory UserProfileUserSettingsJupyterLabAppSettings.fromMap(Map<String, dynamic> map) {
    return UserProfileUserSettingsJupyterLabAppSettings(
      appLifecycleManagement: map['appLifecycleManagement'] == null ? null : UserProfileUserSettingsJupyterLabAppSettingsAppLifecycleManagement.fromMap((map['appLifecycleManagement'] as Map).cast<String, dynamic>()),
      builtInLifecycleConfigArn: map['builtInLifecycleConfigArn'] == null ? null : map['builtInLifecycleConfigArn'] as String,
      codeRepositories: map['codeRepositories'] == null ? null : pulumi.Input.decodeList<UserProfileUserSettingsJupyterLabAppSettingsCodeRepository>(map['codeRepositories'], (value) => UserProfileUserSettingsJupyterLabAppSettingsCodeRepository.fromMap((value as Map).cast<String, dynamic>())),
      customImages: map['customImages'] == null ? null : pulumi.Input.decodeList<UserProfileUserSettingsJupyterLabAppSettingsCustomImage>(map['customImages'], (value) => UserProfileUserSettingsJupyterLabAppSettingsCustomImage.fromMap((value as Map).cast<String, dynamic>())),
      defaultResourceSpec: map['defaultResourceSpec'] == null ? null : UserProfileUserSettingsJupyterLabAppSettingsDefaultResourceSpec.fromMap((map['defaultResourceSpec'] as Map).cast<String, dynamic>()),
      emrSettings: map['emrSettings'] == null ? null : UserProfileUserSettingsJupyterLabAppSettingsEmrSettings.fromMap((map['emrSettings'] as Map).cast<String, dynamic>()),
      lifecycleConfigArns: map['lifecycleConfigArns'] == null ? null : (map['lifecycleConfigArns'] as List).cast<String>(),
    );
  }
}

