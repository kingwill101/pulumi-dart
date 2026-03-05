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
  final pulumi.Input<UserSettingsCookieSynchronizationConfiguration>? cookieSynchronizationConfiguration;
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
    return <String, dynamic>{
      'additionalEncryptionContext': ?additionalEncryptionContext,
      'cookieSynchronizationConfiguration': ?pulumi.Input.mapOptionalInputValue<UserSettingsCookieSynchronizationConfiguration, Map<String, dynamic>>(cookieSynchronizationConfiguration, (value) => value.toMap()),
      'copyAllowed': copyAllowed,
      'customerManagedKey': ?customerManagedKey,
      'deepLinkAllowed': ?deepLinkAllowed,
      'disconnectTimeoutInMinutes': ?disconnectTimeoutInMinutes,
      'downloadAllowed': downloadAllowed,
      'idleDisconnectTimeoutInMinutes': ?idleDisconnectTimeoutInMinutes,
      'pasteAllowed': pasteAllowed,
      'printAllowed': printAllowed,
      'region': ?region,
      'tags': ?tags,
      'toolbarConfiguration': ?pulumi.Input.mapOptionalInputValue<UserSettingsToolbarConfiguration, Map<String, dynamic>>(toolbarConfiguration, (value) => value.toMap()),
      'uploadAllowed': uploadAllowed,
    };
  }

  factory UserSettingsArgs.fromMap(Map<String, dynamic> map) {
    return UserSettingsArgs(
      additionalEncryptionContext: (() { final guardedValue = map['additionalEncryptionContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      cookieSynchronizationConfiguration: (() { final guardedValue = map['cookieSynchronizationConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserSettingsCookieSynchronizationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      copyAllowed: pulumi.Input.fromValue(map['copyAllowed'] as String),
      customerManagedKey: (() { final guardedValue = map['customerManagedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deepLinkAllowed: (() { final guardedValue = map['deepLinkAllowed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disconnectTimeoutInMinutes: (() { final guardedValue = map['disconnectTimeoutInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      downloadAllowed: pulumi.Input.fromValue(map['downloadAllowed'] as String),
      idleDisconnectTimeoutInMinutes: (() { final guardedValue = map['idleDisconnectTimeoutInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pasteAllowed: pulumi.Input.fromValue(map['pasteAllowed'] as String),
      printAllowed: pulumi.Input.fromValue(map['printAllowed'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      toolbarConfiguration: (() { final guardedValue = map['toolbarConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserSettingsToolbarConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uploadAllowed: pulumi.Input.fromValue(map['uploadAllowed'] as String),
    );
  }
}

