// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_profile_user_settings_canvas_app_settings_direct_deploy_settings.dart';
import 'user_profile_user_settings_canvas_app_settings_emr_serverless_settings.dart';
import 'user_profile_user_settings_canvas_app_settings_generative_ai_settings.dart';
import 'user_profile_user_settings_canvas_app_settings_identity_provider_oauth_setting.dart';
import 'user_profile_user_settings_canvas_app_settings_kendra_settings.dart';
import 'user_profile_user_settings_canvas_app_settings_model_register_settings.dart';
import 'user_profile_user_settings_canvas_app_settings_time_series_forecasting_settings.dart';
import 'user_profile_user_settings_canvas_app_settings_workspace_settings.dart';

class UserProfileUserSettingsCanvasAppSettings {
  /// The model deployment settings for the SageMaker AI Canvas application. See Direct Deploy Settings below.
  final pulumi.Input<UserProfileUserSettingsCanvasAppSettingsDirectDeploySettings>? directDeploySettings;
  /// The settings for running Amazon EMR Serverless jobs in SageMaker AI Canvas. See `emr_serverless_settings` Block below.
  final pulumi.Input<UserProfileUserSettingsCanvasAppSettingsEmrServerlessSettings>? emrServerlessSettings;
  final pulumi.Input<UserProfileUserSettingsCanvasAppSettingsGenerativeAiSettings>? generativeAiSettings;
  /// The settings for connecting to an external data source with OAuth. See Identity Provider OAuth Settings below.
  final pulumi.Input<List<UserProfileUserSettingsCanvasAppSettingsIdentityProviderOauthSetting>>? identityProviderOauthSettings;
  /// The settings for document querying. See Kendra Settings below.
  final pulumi.Input<UserProfileUserSettingsCanvasAppSettingsKendraSettings>? kendraSettings;
  /// The model registry settings for the SageMaker AI Canvas application. See Model Register Settings below.
  final pulumi.Input<UserProfileUserSettingsCanvasAppSettingsModelRegisterSettings>? modelRegisterSettings;
  /// Time series forecast settings for the Canvas app. See Time Series Forecasting Settings below.
  final pulumi.Input<UserProfileUserSettingsCanvasAppSettingsTimeSeriesForecastingSettings>? timeSeriesForecastingSettings;
  /// The workspace settings for the SageMaker AI Canvas application. See Workspace Settings below.
  final pulumi.Input<UserProfileUserSettingsCanvasAppSettingsWorkspaceSettings>? workspaceSettings;

  /// Creates a new [UserProfileUserSettingsCanvasAppSettings].
  /// [directDeploySettings] The model deployment settings for the SageMaker AI Canvas application. See Direct Deploy Settings below.
  /// [emrServerlessSettings] The settings for running Amazon EMR Serverless jobs in SageMaker AI Canvas. See `emr_serverless_settings` Block below.
  /// [generativeAiSettings] Optional.
  /// [identityProviderOauthSettings] The settings for connecting to an external data source with OAuth. See Identity Provider OAuth Settings below.
  /// [kendraSettings] The settings for document querying. See Kendra Settings below.
  /// [modelRegisterSettings] The model registry settings for the SageMaker AI Canvas application. See Model Register Settings below.
  /// [timeSeriesForecastingSettings] Time series forecast settings for the Canvas app. See Time Series Forecasting Settings below.
  /// [workspaceSettings] The workspace settings for the SageMaker AI Canvas application. See Workspace Settings below.
  const UserProfileUserSettingsCanvasAppSettings({
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
      'directDeploySettings': ?pulumi.Input.mapOptionalInputValue<UserProfileUserSettingsCanvasAppSettingsDirectDeploySettings, Map<String, dynamic>>(directDeploySettings, (value) => value.toMap()),
      'emrServerlessSettings': ?pulumi.Input.mapOptionalInputValue<UserProfileUserSettingsCanvasAppSettingsEmrServerlessSettings, Map<String, dynamic>>(emrServerlessSettings, (value) => value.toMap()),
      'generativeAiSettings': ?pulumi.Input.mapOptionalInputValue<UserProfileUserSettingsCanvasAppSettingsGenerativeAiSettings, Map<String, dynamic>>(generativeAiSettings, (value) => value.toMap()),
      'identityProviderOauthSettings': ?pulumi.Input.mapOptionalInputValue<List<UserProfileUserSettingsCanvasAppSettingsIdentityProviderOauthSetting>, List<Map<String, dynamic>>>(identityProviderOauthSettings, (value) => pulumi.Input.encodeList<UserProfileUserSettingsCanvasAppSettingsIdentityProviderOauthSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kendraSettings': ?pulumi.Input.mapOptionalInputValue<UserProfileUserSettingsCanvasAppSettingsKendraSettings, Map<String, dynamic>>(kendraSettings, (value) => value.toMap()),
      'modelRegisterSettings': ?pulumi.Input.mapOptionalInputValue<UserProfileUserSettingsCanvasAppSettingsModelRegisterSettings, Map<String, dynamic>>(modelRegisterSettings, (value) => value.toMap()),
      'timeSeriesForecastingSettings': ?pulumi.Input.mapOptionalInputValue<UserProfileUserSettingsCanvasAppSettingsTimeSeriesForecastingSettings, Map<String, dynamic>>(timeSeriesForecastingSettings, (value) => value.toMap()),
      'workspaceSettings': ?pulumi.Input.mapOptionalInputValue<UserProfileUserSettingsCanvasAppSettingsWorkspaceSettings, Map<String, dynamic>>(workspaceSettings, (value) => value.toMap()),
    };
  }

  factory UserProfileUserSettingsCanvasAppSettings.fromMap(Map<String, dynamic> map) {
    return UserProfileUserSettingsCanvasAppSettings(
      directDeploySettings: (() { final guardedValue = map['directDeploySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserProfileUserSettingsCanvasAppSettingsDirectDeploySettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      emrServerlessSettings: (() { final guardedValue = map['emrServerlessSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserProfileUserSettingsCanvasAppSettingsEmrServerlessSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      generativeAiSettings: (() { final guardedValue = map['generativeAiSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserProfileUserSettingsCanvasAppSettingsGenerativeAiSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identityProviderOauthSettings: (() { final guardedValue = map['identityProviderOauthSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserProfileUserSettingsCanvasAppSettingsIdentityProviderOauthSetting>(guardedValue, (value) => UserProfileUserSettingsCanvasAppSettingsIdentityProviderOauthSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      kendraSettings: (() { final guardedValue = map['kendraSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserProfileUserSettingsCanvasAppSettingsKendraSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modelRegisterSettings: (() { final guardedValue = map['modelRegisterSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserProfileUserSettingsCanvasAppSettingsModelRegisterSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeSeriesForecastingSettings: (() { final guardedValue = map['timeSeriesForecastingSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserProfileUserSettingsCanvasAppSettingsTimeSeriesForecastingSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workspaceSettings: (() { final guardedValue = map['workspaceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserProfileUserSettingsCanvasAppSettingsWorkspaceSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

