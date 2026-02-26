// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../domain_default_user_settings_canvas_app_settings_direct_deploy_settings/domain_default_user_settings_canvas_app_settings_direct_deploy_settings.dart';
import '../domain_default_user_settings_canvas_app_settings_emr_serverless_settings/domain_default_user_settings_canvas_app_settings_emr_serverless_settings.dart';
import '../domain_default_user_settings_canvas_app_settings_generative_ai_settings/domain_default_user_settings_canvas_app_settings_generative_ai_settings.dart';
import '../domain_default_user_settings_canvas_app_settings_identity_provider_oauth_setting/domain_default_user_settings_canvas_app_settings_identity_provider_oauth_setting.dart';
import '../domain_default_user_settings_canvas_app_settings_kendra_settings/domain_default_user_settings_canvas_app_settings_kendra_settings.dart';
import '../domain_default_user_settings_canvas_app_settings_model_register_settings/domain_default_user_settings_canvas_app_settings_model_register_settings.dart';
import '../domain_default_user_settings_canvas_app_settings_time_series_forecasting_settings/domain_default_user_settings_canvas_app_settings_time_series_forecasting_settings.dart';
import '../domain_default_user_settings_canvas_app_settings_workspace_settings/domain_default_user_settings_canvas_app_settings_workspace_settings.dart';

class DomainDefaultUserSettingsCanvasAppSettings {
  /// The model deployment settings for the SageMaker AI Canvas application. See <span pulumi-lang-nodejs="`directDeploySettings`" pulumi-lang-dotnet="`DirectDeploySettings`" pulumi-lang-go="`directDeploySettings`" pulumi-lang-python="`direct_deploy_settings`" pulumi-lang-yaml="`directDeploySettings`" pulumi-lang-java="`directDeploySettings`">`direct_deploy_settings`</span> Block below.
  final DomainDefaultUserSettingsCanvasAppSettingsDirectDeploySettings?
      directDeploySettings;

  /// The settings for running Amazon EMR Serverless jobs in SageMaker AI Canvas. See <span pulumi-lang-nodejs="`emrServerlessSettings`" pulumi-lang-dotnet="`EmrServerlessSettings`" pulumi-lang-go="`emrServerlessSettings`" pulumi-lang-python="`emr_serverless_settings`" pulumi-lang-yaml="`emrServerlessSettings`" pulumi-lang-java="`emrServerlessSettings`">`emr_serverless_settings`</span> Block below.
  final DomainDefaultUserSettingsCanvasAppSettingsEmrServerlessSettings?
      emrServerlessSettings;
  final DomainDefaultUserSettingsCanvasAppSettingsGenerativeAiSettings?
      generativeAiSettings;

  /// The settings for connecting to an external data source with OAuth. See <span pulumi-lang-nodejs="`identityProviderOauthSettings`" pulumi-lang-dotnet="`IdentityProviderOauthSettings`" pulumi-lang-go="`identityProviderOauthSettings`" pulumi-lang-python="`identity_provider_oauth_settings`" pulumi-lang-yaml="`identityProviderOauthSettings`" pulumi-lang-java="`identityProviderOauthSettings`">`identity_provider_oauth_settings`</span> Block below.
  final List<
          DomainDefaultUserSettingsCanvasAppSettingsIdentityProviderOauthSetting>?
      identityProviderOauthSettings;

  /// The settings for document querying. See <span pulumi-lang-nodejs="`kendraSettings`" pulumi-lang-dotnet="`KendraSettings`" pulumi-lang-go="`kendraSettings`" pulumi-lang-python="`kendra_settings`" pulumi-lang-yaml="`kendraSettings`" pulumi-lang-java="`kendraSettings`">`kendra_settings`</span> Block below.
  final DomainDefaultUserSettingsCanvasAppSettingsKendraSettings?
      kendraSettings;

  /// The model registry settings for the SageMaker AI Canvas application. See <span pulumi-lang-nodejs="`modelRegisterSettings`" pulumi-lang-dotnet="`ModelRegisterSettings`" pulumi-lang-go="`modelRegisterSettings`" pulumi-lang-python="`model_register_settings`" pulumi-lang-yaml="`modelRegisterSettings`" pulumi-lang-java="`modelRegisterSettings`">`model_register_settings`</span> Block below.
  final DomainDefaultUserSettingsCanvasAppSettingsModelRegisterSettings?
      modelRegisterSettings;

  /// Time series forecast settings for the Canvas app. See <span pulumi-lang-nodejs="`timeSeriesForecastingSettings`" pulumi-lang-dotnet="`TimeSeriesForecastingSettings`" pulumi-lang-go="`timeSeriesForecastingSettings`" pulumi-lang-python="`time_series_forecasting_settings`" pulumi-lang-yaml="`timeSeriesForecastingSettings`" pulumi-lang-java="`timeSeriesForecastingSettings`">`time_series_forecasting_settings`</span> Block below.
  final DomainDefaultUserSettingsCanvasAppSettingsTimeSeriesForecastingSettings?
      timeSeriesForecastingSettings;

  /// The workspace settings for the SageMaker AI Canvas application. See <span pulumi-lang-nodejs="`workspaceSettings`" pulumi-lang-dotnet="`WorkspaceSettings`" pulumi-lang-go="`workspaceSettings`" pulumi-lang-python="`workspace_settings`" pulumi-lang-yaml="`workspaceSettings`" pulumi-lang-java="`workspaceSettings`">`workspace_settings`</span> Block below.
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
      map['identityProviderOauthSettings'] = Input.encodeList<
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
          : Input.decodeList<
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
