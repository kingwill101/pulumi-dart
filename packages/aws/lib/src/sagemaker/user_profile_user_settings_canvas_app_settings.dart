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
  final UserProfileUserSettingsCanvasAppSettingsDirectDeploySettings? directDeploySettings;
  /// The settings for running Amazon EMR Serverless jobs in SageMaker AI Canvas. See `emr_serverless_settings` Block below.
  final UserProfileUserSettingsCanvasAppSettingsEmrServerlessSettings? emrServerlessSettings;
  final UserProfileUserSettingsCanvasAppSettingsGenerativeAiSettings? generativeAiSettings;
  /// The settings for connecting to an external data source with OAuth. See Identity Provider OAuth Settings below.
  final List<UserProfileUserSettingsCanvasAppSettingsIdentityProviderOauthSetting>? identityProviderOauthSettings;
  /// The settings for document querying. See Kendra Settings below.
  final UserProfileUserSettingsCanvasAppSettingsKendraSettings? kendraSettings;
  /// The model registry settings for the SageMaker AI Canvas application. See Model Register Settings below.
  final UserProfileUserSettingsCanvasAppSettingsModelRegisterSettings? modelRegisterSettings;
  /// Time series forecast settings for the Canvas app. See Time Series Forecasting Settings below.
  final UserProfileUserSettingsCanvasAppSettingsTimeSeriesForecastingSettings? timeSeriesForecastingSettings;
  /// The workspace settings for the SageMaker AI Canvas application. See Workspace Settings below.
  final UserProfileUserSettingsCanvasAppSettingsWorkspaceSettings? workspaceSettings;

  /// Creates a new [UserProfileUserSettingsCanvasAppSettings].
  /// [directDeploySettings] The model deployment settings for the SageMaker AI Canvas application. See Direct Deploy Settings below.
  /// [emrServerlessSettings] The settings for running Amazon EMR Serverless jobs in SageMaker AI Canvas. See `emr_serverless_settings` Block below.
  /// [generativeAiSettings] Optional.
  /// [identityProviderOauthSettings] The settings for connecting to an external data source with OAuth. See Identity Provider OAuth Settings below.
  /// [kendraSettings] The settings for document querying. See Kendra Settings below.
  /// [modelRegisterSettings] The model registry settings for the SageMaker AI Canvas application. See Model Register Settings below.
  /// [timeSeriesForecastingSettings] Time series forecast settings for the Canvas app. See Time Series Forecasting Settings below.
  /// [workspaceSettings] The workspace settings for the SageMaker AI Canvas application. See Workspace Settings below.
  UserProfileUserSettingsCanvasAppSettings({
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
      'directDeploySettings': ?directDeploySettings == null ? null : directDeploySettings!.toMap(),
      'emrServerlessSettings': ?emrServerlessSettings == null ? null : emrServerlessSettings!.toMap(),
      'generativeAiSettings': ?generativeAiSettings == null ? null : generativeAiSettings!.toMap(),
      'identityProviderOauthSettings': ?identityProviderOauthSettings == null ? null : pulumi.Input.encodeList<UserProfileUserSettingsCanvasAppSettingsIdentityProviderOauthSetting, Map<String, dynamic>>(identityProviderOauthSettings!, (value) => value.toMap()),
      'kendraSettings': ?kendraSettings == null ? null : kendraSettings!.toMap(),
      'modelRegisterSettings': ?modelRegisterSettings == null ? null : modelRegisterSettings!.toMap(),
      'timeSeriesForecastingSettings': ?timeSeriesForecastingSettings == null ? null : timeSeriesForecastingSettings!.toMap(),
      'workspaceSettings': ?workspaceSettings == null ? null : workspaceSettings!.toMap(),
    };
  }

  factory UserProfileUserSettingsCanvasAppSettings.fromMap(Map<String, dynamic> map) {
    return UserProfileUserSettingsCanvasAppSettings(
      directDeploySettings: map['directDeploySettings'] == null ? null : UserProfileUserSettingsCanvasAppSettingsDirectDeploySettings.fromMap((map['directDeploySettings'] as Map).cast<String, dynamic>()),
      emrServerlessSettings: map['emrServerlessSettings'] == null ? null : UserProfileUserSettingsCanvasAppSettingsEmrServerlessSettings.fromMap((map['emrServerlessSettings'] as Map).cast<String, dynamic>()),
      generativeAiSettings: map['generativeAiSettings'] == null ? null : UserProfileUserSettingsCanvasAppSettingsGenerativeAiSettings.fromMap((map['generativeAiSettings'] as Map).cast<String, dynamic>()),
      identityProviderOauthSettings: map['identityProviderOauthSettings'] == null ? null : pulumi.Input.decodeList<UserProfileUserSettingsCanvasAppSettingsIdentityProviderOauthSetting>(map['identityProviderOauthSettings'], (value) => UserProfileUserSettingsCanvasAppSettingsIdentityProviderOauthSetting.fromMap((value as Map).cast<String, dynamic>())),
      kendraSettings: map['kendraSettings'] == null ? null : UserProfileUserSettingsCanvasAppSettingsKendraSettings.fromMap((map['kendraSettings'] as Map).cast<String, dynamic>()),
      modelRegisterSettings: map['modelRegisterSettings'] == null ? null : UserProfileUserSettingsCanvasAppSettingsModelRegisterSettings.fromMap((map['modelRegisterSettings'] as Map).cast<String, dynamic>()),
      timeSeriesForecastingSettings: map['timeSeriesForecastingSettings'] == null ? null : UserProfileUserSettingsCanvasAppSettingsTimeSeriesForecastingSettings.fromMap((map['timeSeriesForecastingSettings'] as Map).cast<String, dynamic>()),
      workspaceSettings: map['workspaceSettings'] == null ? null : UserProfileUserSettingsCanvasAppSettingsWorkspaceSettings.fromMap((map['workspaceSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

