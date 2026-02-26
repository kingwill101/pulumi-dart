// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../user_settings_cookie_synchronization_configuration/user_settings_cookie_synchronization_configuration.dart';
import '../user_settings_toolbar_configuration/user_settings_toolbar_configuration.dart';

/// The set of arguments for UserSettings.
class UserSettingsArgs {
  /// Additional encryption context for the user settings.
  final Input<Map<String, String>>? additionalEncryptionContext;

  /// Configuration that specifies which cookies should be synchronized from the end user's local browser to the remote browser. Detailed below.
  final Input<UserSettingsCookieSynchronizationConfiguration>?
      cookieSynchronizationConfiguration;

  /// Specifies whether the user can copy text from the streaming session to the local device. Valid values are `Enabled` or `Disabled`.
  final Input<String> copyAllowed;

  /// ARN of the customer managed KMS key.
  final Input<String>? customerManagedKey;

  /// Specifies whether the user can use deep links that open automatically when connecting to a session. Valid values are `Enabled` or `Disabled`.
  final Input<String>? deepLinkAllowed;

  /// Amount of time that a streaming session remains active after users disconnect. Value must be between 1 and 600 minutes.
  final Input<int>? disconnectTimeoutInMinutes;

  /// Specifies whether the user can download files from the streaming session to the local device. Valid values are `Enabled` or `Disabled`.
  final Input<String> downloadAllowed;

  /// Amount of time that users can be idle before they are disconnected from their streaming session. Value must be between 0 and 60 minutes.
  final Input<int>? idleDisconnectTimeoutInMinutes;

  /// Specifies whether the user can paste text from the local device to the streaming session. Valid values are `Enabled` or `Disabled`.
  final Input<String> pasteAllowed;

  /// Specifies whether the user can print to the local device. Valid values are `Enabled` or `Disabled`.
  final Input<String> printAllowed;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags assigned to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Configuration of the toolbar. Detailed below.
  final Input<UserSettingsToolbarConfiguration>? toolbarConfiguration;

  /// Specifies whether the user can upload files from the local device to the streaming session. Valid values are `Enabled` or `Disabled`.
  ///
  /// The following arguments are optional:
  final Input<String> uploadAllowed;

  UserSettingsArgs({
    this.additionalEncryptionContext,
    this.cookieSynchronizationConfiguration,
    required this.copyAllowed,
    this.customerManagedKey,
    this.deepLinkAllowed,
    this.disconnectTimeoutInMinutes,
    required this.downloadAllowed,
    this.idleDisconnectTimeoutInMinutes,
    required this.pasteAllowed,
    required this.printAllowed,
    this.region,
    this.tags,
    this.toolbarConfiguration,
    required this.uploadAllowed,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalEncryptionContextValue = additionalEncryptionContext;
    if (additionalEncryptionContextValue != null) {
      map['additionalEncryptionContext'] = additionalEncryptionContextValue;
    }
    final cookieSynchronizationConfigurationValue =
        cookieSynchronizationConfiguration;
    if (cookieSynchronizationConfigurationValue != null) {
      map['cookieSynchronizationConfiguration'] = Input.mapOptionalInputValue<
              UserSettingsCookieSynchronizationConfiguration,
              Map<String, dynamic>>(
          cookieSynchronizationConfigurationValue, (value) => value.toMap());
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
      map['toolbarConfiguration'] = Input.mapOptionalInputValue<
              UserSettingsToolbarConfiguration, Map<String, dynamic>>(
          toolbarConfigurationValue, (value) => value.toMap());
    }
    map['uploadAllowed'] = uploadAllowed;
    return map;
  }

  factory UserSettingsArgs.fromMap(Map<String, dynamic> map) {
    return UserSettingsArgs(
      additionalEncryptionContext: Input.asOptionalInput<Map<String, String>>(
          map['additionalEncryptionContext']),
      cookieSynchronizationConfiguration:
          Input.asOptionalInput<UserSettingsCookieSynchronizationConfiguration>(
              map['cookieSynchronizationConfiguration']),
      copyAllowed: Input.asInput<String>(map['copyAllowed']),
      customerManagedKey:
          Input.asOptionalInput<String>(map['customerManagedKey']),
      deepLinkAllowed: Input.asOptionalInput<String>(map['deepLinkAllowed']),
      disconnectTimeoutInMinutes:
          Input.asOptionalInput<int>(map['disconnectTimeoutInMinutes']),
      downloadAllowed: Input.asInput<String>(map['downloadAllowed']),
      idleDisconnectTimeoutInMinutes:
          Input.asOptionalInput<int>(map['idleDisconnectTimeoutInMinutes']),
      pasteAllowed: Input.asInput<String>(map['pasteAllowed']),
      printAllowed: Input.asInput<String>(map['printAllowed']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      toolbarConfiguration:
          Input.asOptionalInput<UserSettingsToolbarConfiguration>(
              map['toolbarConfiguration']),
      uploadAllowed: Input.asInput<String>(map['uploadAllowed']),
    );
  }
}
