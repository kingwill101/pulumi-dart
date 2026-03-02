// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_default_user_settings_canvas_app_settings_direct_deploy_settings.dart';
import 'domain_default_user_settings_canvas_app_settings_emr_serverless_settings.dart';
import 'domain_default_user_settings_canvas_app_settings_generative_ai_settings.dart';
import 'domain_default_user_settings_canvas_app_settings_identity_provider_oauth_setting.dart';
import 'domain_default_user_settings_canvas_app_settings_kendra_settings.dart';
import 'domain_default_user_settings_canvas_app_settings_model_register_settings.dart';
import 'domain_default_user_settings_canvas_app_settings_time_series_forecasting_settings.dart';
import 'domain_default_user_settings_canvas_app_settings_workspace_settings.dart';

class DomainDefaultUserSettingsCanvasAppSettings {
  /// The model deployment settings for the SageMaker AI Canvas application. See `direct_deploy_settings` Block below.
  final pulumi.Input<DomainDefaultUserSettingsCanvasAppSettingsDirectDeploySettings>? directDeploySettings;
  /// The settings for running Amazon EMR Serverless jobs in SageMaker AI Canvas. See `emr_serverless_settings` Block below.
  final pulumi.Input<DomainDefaultUserSettingsCanvasAppSettingsEmrServerlessSettings>? emrServerlessSettings;
  final pulumi.Input<DomainDefaultUserSettingsCanvasAppSettingsGenerativeAiSettings>? generativeAiSettings;
  /// The settings for connecting to an external data source with OAuth. See `identity_provider_oauth_settings` Block below.
  final pulumi.Input<List<DomainDefaultUserSettingsCanvasAppSettingsIdentityProviderOauthSetting>>? identityProviderOauthSettings;
  /// The settings for document querying. See `kendra_settings` Block below.
  final pulumi.Input<DomainDefaultUserSettingsCanvasAppSettingsKendraSettings>? kendraSettings;
  /// The model registry settings for the SageMaker AI Canvas application. See `model_register_settings` Block below.
  final pulumi.Input<DomainDefaultUserSettingsCanvasAppSettingsModelRegisterSettings>? modelRegisterSettings;
  /// Time series forecast settings for the Canvas app. See `time_series_forecasting_settings` Block below.
  final pulumi.Input<DomainDefaultUserSettingsCanvasAppSettingsTimeSeriesForecastingSettings>? timeSeriesForecastingSettings;
  /// The workspace settings for the SageMaker AI Canvas application. See `workspace_settings` Block below.
  final pulumi.Input<DomainDefaultUserSettingsCanvasAppSettingsWorkspaceSettings>? workspaceSettings;

  /// Creates a new [DomainDefaultUserSettingsCanvasAppSettings].
  /// [directDeploySettings] The model deployment settings for the SageMaker AI Canvas application. See `direct_deploy_settings` Block below.
  /// [emrServerlessSettings] The settings for running Amazon EMR Serverless jobs in SageMaker AI Canvas. See `emr_serverless_settings` Block below.
  /// [generativeAiSettings] Optional.
  /// [identityProviderOauthSettings] The settings for connecting to an external data source with OAuth. See `identity_provider_oauth_settings` Block below.
  /// [kendraSettings] The settings for document querying. See `kendra_settings` Block below.
  /// [modelRegisterSettings] The model registry settings for the SageMaker AI Canvas application. See `model_register_settings` Block below.
  /// [timeSeriesForecastingSettings] Time series forecast settings for the Canvas app. See `time_series_forecasting_settings` Block below.
  /// [workspaceSettings] The workspace settings for the SageMaker AI Canvas application. See `workspace_settings` Block below.
  DomainDefaultUserSettingsCanvasAppSettings({
    this.directDeploySettings,
    this.emrServerlessSettings,
    this.generativeAiSettings,
    this.identityProviderOauthSettings,
    this.kendraSettings,
    this.modelRegisterSettings,
    this.timeSeriesForecastingSettings,
    this.workspaceSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directDeploySettings': ?pulumi.Input.mapOptionalInputValue<DomainDefaultUserSettingsCanvasAppSettingsDirectDeploySettings, Map<String, dynamic>>(directDeploySettings, (value) => value.toMap()),
      'emrServerlessSettings': ?pulumi.Input.mapOptionalInputValue<DomainDefaultUserSettingsCanvasAppSettingsEmrServerlessSettings, Map<String, dynamic>>(emrServerlessSettings, (value) => value.toMap()),
      'generativeAiSettings': ?pulumi.Input.mapOptionalInputValue<DomainDefaultUserSettingsCanvasAppSettingsGenerativeAiSettings, Map<String, dynamic>>(generativeAiSettings, (value) => value.toMap()),
      'identityProviderOauthSettings': ?pulumi.Input.mapOptionalInputValue<List<DomainDefaultUserSettingsCanvasAppSettingsIdentityProviderOauthSetting>, List<Map<String, dynamic>>>(identityProviderOauthSettings, (value) => pulumi.Input.encodeList<DomainDefaultUserSettingsCanvasAppSettingsIdentityProviderOauthSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kendraSettings': ?pulumi.Input.mapOptionalInputValue<DomainDefaultUserSettingsCanvasAppSettingsKendraSettings, Map<String, dynamic>>(kendraSettings, (value) => value.toMap()),
      'modelRegisterSettings': ?pulumi.Input.mapOptionalInputValue<DomainDefaultUserSettingsCanvasAppSettingsModelRegisterSettings, Map<String, dynamic>>(modelRegisterSettings, (value) => value.toMap()),
      'timeSeriesForecastingSettings': ?pulumi.Input.mapOptionalInputValue<DomainDefaultUserSettingsCanvasAppSettingsTimeSeriesForecastingSettings, Map<String, dynamic>>(timeSeriesForecastingSettings, (value) => value.toMap()),
      'workspaceSettings': ?pulumi.Input.mapOptionalInputValue<DomainDefaultUserSettingsCanvasAppSettingsWorkspaceSettings, Map<String, dynamic>>(workspaceSettings, (value) => value.toMap()),
    };
  }

  factory DomainDefaultUserSettingsCanvasAppSettings.fromMap(Map<String, dynamic> map) {
    return DomainDefaultUserSettingsCanvasAppSettings(
      directDeploySettings: map['directDeploySettings'] == null ? null : ((DomainDefaultUserSettingsCanvasAppSettingsDirectDeploySettings.fromMap((map['directDeploySettings']! as Map).cast<String, dynamic>())).input()).input(),
      emrServerlessSettings: map['emrServerlessSettings'] == null ? null : ((DomainDefaultUserSettingsCanvasAppSettingsEmrServerlessSettings.fromMap((map['emrServerlessSettings']! as Map).cast<String, dynamic>())).input()).input(),
      generativeAiSettings: map['generativeAiSettings'] == null ? null : ((DomainDefaultUserSettingsCanvasAppSettingsGenerativeAiSettings.fromMap((map['generativeAiSettings']! as Map).cast<String, dynamic>())).input()).input(),
      identityProviderOauthSettings: map['identityProviderOauthSettings'] == null ? null : ((pulumi.Input.decodeList<DomainDefaultUserSettingsCanvasAppSettingsIdentityProviderOauthSetting>(map['identityProviderOauthSettings']!, (value) => DomainDefaultUserSettingsCanvasAppSettingsIdentityProviderOauthSetting.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      kendraSettings: map['kendraSettings'] == null ? null : ((DomainDefaultUserSettingsCanvasAppSettingsKendraSettings.fromMap((map['kendraSettings']! as Map).cast<String, dynamic>())).input()).input(),
      modelRegisterSettings: map['modelRegisterSettings'] == null ? null : ((DomainDefaultUserSettingsCanvasAppSettingsModelRegisterSettings.fromMap((map['modelRegisterSettings']! as Map).cast<String, dynamic>())).input()).input(),
      timeSeriesForecastingSettings: map['timeSeriesForecastingSettings'] == null ? null : ((DomainDefaultUserSettingsCanvasAppSettingsTimeSeriesForecastingSettings.fromMap((map['timeSeriesForecastingSettings']! as Map).cast<String, dynamic>())).input()).input(),
      workspaceSettings: map['workspaceSettings'] == null ? null : ((DomainDefaultUserSettingsCanvasAppSettingsWorkspaceSettings.fromMap((map['workspaceSettings']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

