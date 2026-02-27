// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../domain_default_user_settings_canvas_app_settings_direct_deploy_settings/domain_default_user_settings_canvas_app_settings_direct_deploy_settings.dart';
import '../domain_default_user_settings_canvas_app_settings_emr_serverless_settings/domain_default_user_settings_canvas_app_settings_emr_serverless_settings.dart';
import '../domain_default_user_settings_canvas_app_settings_generative_ai_settings/domain_default_user_settings_canvas_app_settings_generative_ai_settings.dart';
import '../domain_default_user_settings_canvas_app_settings_identity_provider_oauth_setting/domain_default_user_settings_canvas_app_settings_identity_provider_oauth_setting.dart';
import '../domain_default_user_settings_canvas_app_settings_kendra_settings/domain_default_user_settings_canvas_app_settings_kendra_settings.dart';
import '../domain_default_user_settings_canvas_app_settings_model_register_settings/domain_default_user_settings_canvas_app_settings_model_register_settings.dart';
import '../domain_default_user_settings_canvas_app_settings_time_series_forecasting_settings/domain_default_user_settings_canvas_app_settings_time_series_forecasting_settings.dart';
import '../domain_default_user_settings_canvas_app_settings_workspace_settings/domain_default_user_settings_canvas_app_settings_workspace_settings.dart';

class DomainDefaultUserSettingsCanvasAppSettings {
  /// The model deployment settings for the SageMaker AI Canvas application. See `direct_deploy_settings` Block below.
  final DomainDefaultUserSettingsCanvasAppSettingsDirectDeploySettings?
      directDeploySettings;

  /// The settings for running Amazon EMR Serverless jobs in SageMaker AI Canvas. See `emr_serverless_settings` Block below.
  final DomainDefaultUserSettingsCanvasAppSettingsEmrServerlessSettings?
      emrServerlessSettings;
  final DomainDefaultUserSettingsCanvasAppSettingsGenerativeAiSettings?
      generativeAiSettings;

  /// The settings for connecting to an external data source with OAuth. See `identity_provider_oauth_settings` Block below.
  final List<
          DomainDefaultUserSettingsCanvasAppSettingsIdentityProviderOauthSetting>?
      identityProviderOauthSettings;

  /// The settings for document querying. See `kendra_settings` Block below.
  final DomainDefaultUserSettingsCanvasAppSettingsKendraSettings?
      kendraSettings;

  /// The model registry settings for the SageMaker AI Canvas application. See `model_register_settings` Block below.
  final DomainDefaultUserSettingsCanvasAppSettingsModelRegisterSettings?
      modelRegisterSettings;

  /// Time series forecast settings for the Canvas app. See `time_series_forecasting_settings` Block below.
  final DomainDefaultUserSettingsCanvasAppSettingsTimeSeriesForecastingSettings?
      timeSeriesForecastingSettings;

  /// The workspace settings for the SageMaker AI Canvas application. See `workspace_settings` Block below.
  final DomainDefaultUserSettingsCanvasAppSettingsWorkspaceSettings?
      workspaceSettings;

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
    final map = <String, dynamic>{};
    final directDeploySettingsValue = directDeploySettings;
    if (directDeploySettingsValue != null) {
      map['directDeploySettings'] = directDeploySettingsValue.toMap();
    }
    final emrServerlessSettingsValue = emrServerlessSettings;
    if (emrServerlessSettingsValue != null) {
      map['emrServerlessSettings'] = emrServerlessSettingsValue.toMap();
    }
    final generativeAiSettingsValue = generativeAiSettings;
    if (generativeAiSettingsValue != null) {
      map['generativeAiSettings'] = generativeAiSettingsValue.toMap();
    }
    final identityProviderOauthSettingsValue = identityProviderOauthSettings;
    if (identityProviderOauthSettingsValue != null) {
      map['identityProviderOauthSettings'] = pulumi.Input.encodeList<
              DomainDefaultUserSettingsCanvasAppSettingsIdentityProviderOauthSetting,
              Map<String, dynamic>>(
          identityProviderOauthSettingsValue, (value) => value.toMap());
    }
    final kendraSettingsValue = kendraSettings;
    if (kendraSettingsValue != null) {
      map['kendraSettings'] = kendraSettingsValue.toMap();
    }
    final modelRegisterSettingsValue = modelRegisterSettings;
    if (modelRegisterSettingsValue != null) {
      map['modelRegisterSettings'] = modelRegisterSettingsValue.toMap();
    }
    final timeSeriesForecastingSettingsValue = timeSeriesForecastingSettings;
    if (timeSeriesForecastingSettingsValue != null) {
      map['timeSeriesForecastingSettings'] =
          timeSeriesForecastingSettingsValue.toMap();
    }
    final workspaceSettingsValue = workspaceSettings;
    if (workspaceSettingsValue != null) {
      map['workspaceSettings'] = workspaceSettingsValue.toMap();
    }
    return map;
  }

  factory DomainDefaultUserSettingsCanvasAppSettings.fromMap(
      Map<String, dynamic> map) {
    return DomainDefaultUserSettingsCanvasAppSettings(
      directDeploySettings: map['directDeploySettings'] == null
          ? null
          : DomainDefaultUserSettingsCanvasAppSettingsDirectDeploySettings
              .fromMap(
                  (map['directDeploySettings'] as Map).cast<String, dynamic>()),
      emrServerlessSettings: map['emrServerlessSettings'] == null
          ? null
          : DomainDefaultUserSettingsCanvasAppSettingsEmrServerlessSettings
              .fromMap((map['emrServerlessSettings'] as Map)
                  .cast<String, dynamic>()),
      generativeAiSettings: map['generativeAiSettings'] == null
          ? null
          : DomainDefaultUserSettingsCanvasAppSettingsGenerativeAiSettings
              .fromMap(
                  (map['generativeAiSettings'] as Map).cast<String, dynamic>()),
      identityProviderOauthSettings: map['identityProviderOauthSettings'] ==
              null
          ? null
          : pulumi.Input.decodeList<
                  DomainDefaultUserSettingsCanvasAppSettingsIdentityProviderOauthSetting>(
              map['identityProviderOauthSettings'],
              (value) =>
                  DomainDefaultUserSettingsCanvasAppSettingsIdentityProviderOauthSetting
                      .fromMap((value as Map).cast<String, dynamic>())),
      kendraSettings: map['kendraSettings'] == null
          ? null
          : DomainDefaultUserSettingsCanvasAppSettingsKendraSettings.fromMap(
              (map['kendraSettings'] as Map).cast<String, dynamic>()),
      modelRegisterSettings: map['modelRegisterSettings'] == null
          ? null
          : DomainDefaultUserSettingsCanvasAppSettingsModelRegisterSettings
              .fromMap((map['modelRegisterSettings'] as Map)
                  .cast<String, dynamic>()),
      timeSeriesForecastingSettings: map['timeSeriesForecastingSettings'] ==
              null
          ? null
          : DomainDefaultUserSettingsCanvasAppSettingsTimeSeriesForecastingSettings
              .fromMap((map['timeSeriesForecastingSettings'] as Map)
                  .cast<String, dynamic>()),
      workspaceSettings: map['workspaceSettings'] == null
          ? null
          : DomainDefaultUserSettingsCanvasAppSettingsWorkspaceSettings.fromMap(
              (map['workspaceSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
