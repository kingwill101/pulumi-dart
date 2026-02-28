// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_settings_cookie_synchronization_configuration.dart';
import 'user_settings_toolbar_configuration.dart';

/// {@template pulumi_workspacesweb_user_settings_user_settings_args_doc}
/// The set of arguments for UserSettings.
/// {@endtemplate}
/// {@macro pulumi_workspacesweb_user_settings_user_settings_args_doc}
class UserSettingsArgs {
  /// Additional encryption context for the user settings.
  final pulumi.Input<Map<String, String>>? additionalEncryptionContext;

  /// Configuration that specifies which cookies should be synchronized from the end user's local browser to the remote browser. Detailed below.
  final pulumi.Input<UserSettingsCookieSynchronizationConfiguration>?
      cookieSynchronizationConfiguration;

  /// Specifies whether the user can copy text from the streaming session to the local device. Valid values are `Enabled` or `Disabled`.
  final pulumi.Input<String> copyAllowed;

  /// ARN of the customer managed KMS key.
  final pulumi.Input<String>? customerManagedKey;

  /// Specifies whether the user can use deep links that open automatically when connecting to a session. Valid values are `Enabled` or `Disabled`.
  final pulumi.Input<String>? deepLinkAllowed;

  /// Amount of time that a streaming session remains active after users disconnect. Value must be between 1 and 600 minutes.
  final pulumi.Input<int>? disconnectTimeoutInMinutes;

  /// Specifies whether the user can download files from the streaming session to the local device. Valid values are `Enabled` or `Disabled`.
  final pulumi.Input<String> downloadAllowed;

  /// Amount of time that users can be idle before they are disconnected from their streaming session. Value must be between 0 and 60 minutes.
  final pulumi.Input<int>? idleDisconnectTimeoutInMinutes;

  /// Specifies whether the user can paste text from the local device to the streaming session. Valid values are `Enabled` or `Disabled`.
  final pulumi.Input<String> pasteAllowed;

  /// Specifies whether the user can print to the local device. Valid values are `Enabled` or `Disabled`.
  final pulumi.Input<String> printAllowed;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Configuration of the toolbar. Detailed below.
  final pulumi.Input<UserSettingsToolbarConfiguration>? toolbarConfiguration;

  /// Specifies whether the user can upload files from the local device to the streaming session. Valid values are `Enabled` or `Disabled`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> uploadAllowed;

  /// Creates a new [UserSettingsArgs].
  /// [additionalEncryptionContext] Additional encryption context for the user settings.
  /// [cookieSynchronizationConfiguration] Configuration that specifies which cookies should be synchronized from the end user's local browser to the remote browser. Detailed below.
  /// [copyAllowed] Specifies whether the user can copy text from the streaming session to the local device. Valid values are `Enabled` or `Disabled`.
  /// [customerManagedKey] ARN of the customer managed KMS key.
  /// [deepLinkAllowed] Specifies whether the user can use deep links that open automatically when connecting to a session. Valid values are `Enabled` or `Disabled`.
  /// [disconnectTimeoutInMinutes] Amount of time that a streaming session remains active after users disconnect. Value must be between 1 and 600 minutes.
  /// [downloadAllowed] Specifies whether the user can download files from the streaming session to the local device. Valid values are `Enabled` or `Disabled`.
  /// [idleDisconnectTimeoutInMinutes] Amount of time that users can be idle before they are disconnected from their streaming session. Value must be between 0 and 60 minutes.
  /// [pasteAllowed] Specifies whether the user can paste text from the local device to the streaming session. Valid values are `Enabled` or `Disabled`.
  /// [printAllowed] Specifies whether the user can print to the local device. Valid values are `Enabled` or `Disabled`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [toolbarConfiguration] Configuration of the toolbar. Detailed below.
  /// [uploadAllowed] Specifies whether the user can upload files from the local device to the streaming session. Valid values are `Enabled` or `Disabled`.
  UserSettingsArgs({
    Map<String, String>? additionalEncryptionContext,
    UserSettingsCookieSynchronizationConfiguration?
        cookieSynchronizationConfiguration,
    required String copyAllowed,
    String? customerManagedKey,
    String? deepLinkAllowed,
    int? disconnectTimeoutInMinutes,
    required String downloadAllowed,
    int? idleDisconnectTimeoutInMinutes,
    required String pasteAllowed,
    required String printAllowed,
    String? region,
    Map<String, String>? tags,
    UserSettingsToolbarConfiguration? toolbarConfiguration,
    required String uploadAllowed,
  })  : additionalEncryptionContext =
            pulumi.Input.asOptionalInput<Map<String, String>>(
                additionalEncryptionContext),
        cookieSynchronizationConfiguration = pulumi.Input.asOptionalInput<
                UserSettingsCookieSynchronizationConfiguration>(
            cookieSynchronizationConfiguration),
        copyAllowed = pulumi.Input.asInput<String>(copyAllowed),
        customerManagedKey =
            pulumi.Input.asOptionalInput<String>(customerManagedKey),
        deepLinkAllowed = pulumi.Input.asOptionalInput<String>(deepLinkAllowed),
        disconnectTimeoutInMinutes =
            pulumi.Input.asOptionalInput<int>(disconnectTimeoutInMinutes),
        downloadAllowed = pulumi.Input.asInput<String>(downloadAllowed),
        idleDisconnectTimeoutInMinutes =
            pulumi.Input.asOptionalInput<int>(idleDisconnectTimeoutInMinutes),
        pasteAllowed = pulumi.Input.asInput<String>(pasteAllowed),
        printAllowed = pulumi.Input.asInput<String>(printAllowed),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        toolbarConfiguration =
            pulumi.Input.asOptionalInput<UserSettingsToolbarConfiguration>(
                toolbarConfiguration),
        uploadAllowed = pulumi.Input.asInput<String>(uploadAllowed);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalEncryptionContextValue = additionalEncryptionContext;
    if (additionalEncryptionContextValue != null) {
      map['additionalEncryptionContext'] = additionalEncryptionContextValue;
    }
    final cookieSynchronizationConfigurationValue =
        cookieSynchronizationConfiguration;
    if (cookieSynchronizationConfigurationValue != null) {
      map['cookieSynchronizationConfiguration'] =
          pulumi.Input.mapOptionalInputValue<
                  UserSettingsCookieSynchronizationConfiguration,
                  Map<String, dynamic>>(cookieSynchronizationConfigurationValue,
              (value) => value.toMap());
    }
    map['copyAllowed'] = copyAllowed;
    final customerManagedKeyValue = customerManagedKey;
    if (customerManagedKeyValue != null) {
      map['customerManagedKey'] = customerManagedKeyValue;
    }
    final deepLinkAllowedValue = deepLinkAllowed;
    if (deepLinkAllowedValue != null) {
      map['deepLinkAllowed'] = deepLinkAllowedValue;
    }
    final disconnectTimeoutInMinutesValue = disconnectTimeoutInMinutes;
    if (disconnectTimeoutInMinutesValue != null) {
      map['disconnectTimeoutInMinutes'] = disconnectTimeoutInMinutesValue;
    }
    map['downloadAllowed'] = downloadAllowed;
    final idleDisconnectTimeoutInMinutesValue = idleDisconnectTimeoutInMinutes;
    if (idleDisconnectTimeoutInMinutesValue != null) {
      map['idleDisconnectTimeoutInMinutes'] =
          idleDisconnectTimeoutInMinutesValue;
    }
    map['pasteAllowed'] = pasteAllowed;
    map['printAllowed'] = printAllowed;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final toolbarConfigurationValue = toolbarConfiguration;
    if (toolbarConfigurationValue != null) {
      map['toolbarConfiguration'] = pulumi.Input.mapOptionalInputValue<
              UserSettingsToolbarConfiguration, Map<String, dynamic>>(
          toolbarConfigurationValue, (value) => value.toMap());
    }
    map['uploadAllowed'] = uploadAllowed;
    return map;
  }

  factory UserSettingsArgs.fromMap(Map<String, dynamic> map) {
    return UserSettingsArgs(
      additionalEncryptionContext: map['additionalEncryptionContext'] == null
          ? null
          : (map['additionalEncryptionContext'] as Map).cast<String, String>(),
      cookieSynchronizationConfiguration:
          map['cookieSynchronizationConfiguration'] == null
              ? null
              : UserSettingsCookieSynchronizationConfiguration.fromMap(
                  (map['cookieSynchronizationConfiguration'] as Map)
                      .cast<String, dynamic>()),
      copyAllowed: map['copyAllowed'] as String,
      customerManagedKey: map['customerManagedKey'] == null
          ? null
          : map['customerManagedKey'] as String,
      deepLinkAllowed: map['deepLinkAllowed'] == null
          ? null
          : map['deepLinkAllowed'] as String,
      disconnectTimeoutInMinutes: map['disconnectTimeoutInMinutes'] == null
          ? null
          : map['disconnectTimeoutInMinutes'] as int,
      downloadAllowed: map['downloadAllowed'] as String,
      idleDisconnectTimeoutInMinutes:
          map['idleDisconnectTimeoutInMinutes'] == null
              ? null
              : map['idleDisconnectTimeoutInMinutes'] as int,
      pasteAllowed: map['pasteAllowed'] as String,
      printAllowed: map['printAllowed'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      toolbarConfiguration: map['toolbarConfiguration'] == null
          ? null
          : UserSettingsToolbarConfiguration.fromMap(
              (map['toolbarConfiguration'] as Map).cast<String, dynamic>()),
      uploadAllowed: map['uploadAllowed'] as String,
    );
  }
}
