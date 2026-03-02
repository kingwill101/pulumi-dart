// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_default_user_settings_jupyter_lab_app_settings_app_lifecycle_management.dart';
import 'domain_default_user_settings_jupyter_lab_app_settings_code_repository.dart';
import 'domain_default_user_settings_jupyter_lab_app_settings_custom_image.dart';
import 'domain_default_user_settings_jupyter_lab_app_settings_default_resource_spec.dart';
import 'domain_default_user_settings_jupyter_lab_app_settings_emr_settings.dart';

class DomainDefaultUserSettingsJupyterLabAppSettings {
  /// Indicates whether idle shutdown is activated for JupyterLab applications. see `app_lifecycle_management` Block below.
  final pulumi.Input<DomainDefaultUserSettingsJupyterLabAppSettingsAppLifecycleManagement>? appLifecycleManagement;
  /// The lifecycle configuration that runs before the default lifecycle configuration. It can override changes made in the default lifecycle configuration.
  final pulumi.Input<String>? builtInLifecycleConfigArn;
  /// A list of Git repositories that SageMaker AI automatically displays to users for cloning in the JupyterServer application. see `code_repository` Block below.
  final pulumi.Input<List<DomainDefaultUserSettingsJupyterLabAppSettingsCodeRepository>>? codeRepositories;
  /// A list of custom SageMaker AI images that are configured to run as a JupyterLab app. see `custom_image` Block below.
  final pulumi.Input<List<DomainDefaultUserSettingsJupyterLabAppSettingsCustomImage>>? customImages;
  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see `default_resource_spec` Block below.
  final pulumi.Input<DomainDefaultUserSettingsJupyterLabAppSettingsDefaultResourceSpec>? defaultResourceSpec;
  /// The configuration parameters that specify the IAM roles assumed by the execution role of SageMaker AI (assumable roles) and the cluster instances or job execution environments (execution roles or runtime roles) to manage and access resources required for running Amazon EMR clusters or Amazon EMR Serverless applications. see `emr_settings` Block below.
  final pulumi.Input<DomainDefaultUserSettingsJupyterLabAppSettingsEmrSettings>? emrSettings;
  /// The Amazon Resource Name (ARN) of the Lifecycle Configurations.
  final pulumi.Input<List<String>>? lifecycleConfigArns;

  /// Creates a new [DomainDefaultUserSettingsJupyterLabAppSettings].
  /// [appLifecycleManagement] Indicates whether idle shutdown is activated for JupyterLab applications. see `app_lifecycle_management` Block below.
  /// [builtInLifecycleConfigArn] The lifecycle configuration that runs before the default lifecycle configuration. It can override changes made in the default lifecycle configuration.
  /// [codeRepositories] A list of Git repositories that SageMaker AI automatically displays to users for cloning in the JupyterServer application. see `code_repository` Block below.
  /// [customImages] A list of custom SageMaker AI images that are configured to run as a JupyterLab app. see `custom_image` Block below.
  /// [defaultResourceSpec] The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see `default_resource_spec` Block below.
  /// [emrSettings] The configuration parameters that specify the IAM roles assumed by the execution role of SageMaker AI (assumable roles) and the cluster instances or job execution environments (execution roles or runtime roles) to manage and access resources required for running Amazon EMR clusters or Amazon EMR Serverless applications. see `emr_settings` Block below.
  /// [lifecycleConfigArns] The Amazon Resource Name (ARN) of the Lifecycle Configurations.
  DomainDefaultUserSettingsJupyterLabAppSettings({
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
      'appLifecycleManagement': ?pulumi.Input.mapOptionalInputValue<DomainDefaultUserSettingsJupyterLabAppSettingsAppLifecycleManagement, Map<String, dynamic>>(appLifecycleManagement, (value) => value.toMap()),
      'builtInLifecycleConfigArn': ?builtInLifecycleConfigArn,
      'codeRepositories': ?pulumi.Input.mapOptionalInputValue<List<DomainDefaultUserSettingsJupyterLabAppSettingsCodeRepository>, List<Map<String, dynamic>>>(codeRepositories, (value) => pulumi.Input.encodeList<DomainDefaultUserSettingsJupyterLabAppSettingsCodeRepository, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customImages': ?pulumi.Input.mapOptionalInputValue<List<DomainDefaultUserSettingsJupyterLabAppSettingsCustomImage>, List<Map<String, dynamic>>>(customImages, (value) => pulumi.Input.encodeList<DomainDefaultUserSettingsJupyterLabAppSettingsCustomImage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultResourceSpec': ?pulumi.Input.mapOptionalInputValue<DomainDefaultUserSettingsJupyterLabAppSettingsDefaultResourceSpec, Map<String, dynamic>>(defaultResourceSpec, (value) => value.toMap()),
      'emrSettings': ?pulumi.Input.mapOptionalInputValue<DomainDefaultUserSettingsJupyterLabAppSettingsEmrSettings, Map<String, dynamic>>(emrSettings, (value) => value.toMap()),
      'lifecycleConfigArns': ?lifecycleConfigArns,
    };
  }

  factory DomainDefaultUserSettingsJupyterLabAppSettings.fromMap(Map<String, dynamic> map) {
    return DomainDefaultUserSettingsJupyterLabAppSettings(
      appLifecycleManagement: map['appLifecycleManagement'] == null ? null : (DomainDefaultUserSettingsJupyterLabAppSettingsAppLifecycleManagement.fromMap((map['appLifecycleManagement'] as Map).cast<String, dynamic>())).input(),
      builtInLifecycleConfigArn: map['builtInLifecycleConfigArn'] == null ? null : (map['builtInLifecycleConfigArn'] as String).input(),
      codeRepositories: map['codeRepositories'] == null ? null : (pulumi.Input.decodeList<DomainDefaultUserSettingsJupyterLabAppSettingsCodeRepository>(map['codeRepositories'], (value) => DomainDefaultUserSettingsJupyterLabAppSettingsCodeRepository.fromMap((value as Map).cast<String, dynamic>()))).input(),
      customImages: map['customImages'] == null ? null : (pulumi.Input.decodeList<DomainDefaultUserSettingsJupyterLabAppSettingsCustomImage>(map['customImages'], (value) => DomainDefaultUserSettingsJupyterLabAppSettingsCustomImage.fromMap((value as Map).cast<String, dynamic>()))).input(),
      defaultResourceSpec: map['defaultResourceSpec'] == null ? null : (DomainDefaultUserSettingsJupyterLabAppSettingsDefaultResourceSpec.fromMap((map['defaultResourceSpec'] as Map).cast<String, dynamic>())).input(),
      emrSettings: map['emrSettings'] == null ? null : (DomainDefaultUserSettingsJupyterLabAppSettingsEmrSettings.fromMap((map['emrSettings'] as Map).cast<String, dynamic>())).input(),
      lifecycleConfigArns: map['lifecycleConfigArns'] == null ? null : ((map['lifecycleConfigArns'] as List).cast<String>()).input(),
    );
  }
}

