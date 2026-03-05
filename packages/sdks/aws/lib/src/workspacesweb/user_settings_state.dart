// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_settings_cookie_synchronization_configuration.dart';
import 'user_settings_toolbar_configuration.dart';

/// Input properties used for looking up and filtering UserSettings resources.
class UserSettingsState {
  /// Additional encryption context for the user settings.
  final pulumi.Input<Map<String, String>>? additionalEncryptionContext;
  /// List of web portal ARNs to associate with the user settings.
  final pulumi.Input<List<String>>? associatedPortalArns;
  /// Configuration that specifies which cookies should be synchronized from the end user's local browser to the remote browser. Detailed below.
  final pulumi.Input<UserSettingsCookieSynchronizationConfiguration>? cookieSynchronizationConfiguration;
  /// Specifies whether the user can copy text from the streaming session to the local device. Valid values are `Enabled` or `Disabled`.
  final pulumi.Input<String>? copyAllowed;
  /// ARN of the customer managed KMS key.
  final pulumi.Input<String>? customerManagedKey;
  /// Specifies whether the user can use deep links that open automatically when connecting to a session. Valid values are `Enabled` or `Disabled`.
  final pulumi.Input<String>? deepLinkAllowed;
  /// Amount of time that a streaming session remains active after users disconnect. Value must be between 1 and 600 minutes.
  final pulumi.Input<int>? disconnectTimeoutInMinutes;
  /// Specifies whether the user can download files from the streaming session to the local device. Valid values are `Enabled` or `Disabled`.
  final pulumi.Input<String>? downloadAllowed;
  /// Amount of time that users can be idle before they are disconnected from their streaming session. Value must be between 0 and 60 minutes.
  final pulumi.Input<int>? idleDisconnectTimeoutInMinutes;
  /// Specifies whether the user can paste text from the local device to the streaming session. Valid values are `Enabled` or `Disabled`.
  final pulumi.Input<String>? pasteAllowed;
  /// Specifies whether the user can print to the local device. Valid values are `Enabled` or `Disabled`.
  final pulumi.Input<String>? printAllowed;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Configuration of the toolbar. Detailed below.
  final pulumi.Input<UserSettingsToolbarConfiguration>? toolbarConfiguration;
  /// Specifies whether the user can upload files from the local device to the streaming session. Valid values are `Enabled` or `Disabled`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? uploadAllowed;
  /// ARN of the user settings resource.
  final pulumi.Input<String>? userSettingsArn;

  /// Creates a new [UserSettingsState].
  /// [additionalEncryptionContext] Additional encryption context for the user settings.
  /// [associatedPortalArns] List of web portal ARNs to associate with the user settings.
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
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [toolbarConfiguration] Configuration of the toolbar. Detailed below.
  /// [uploadAllowed] Specifies whether the user can upload files from the local device to the streaming session. Valid values are `Enabled` or `Disabled`.
  /// [userSettingsArn] ARN of the user settings resource.
  UserSettingsState({
    this.additionalEncryptionContext,
    this.associatedPortalArns,
    this.cookieSynchronizationConfiguration,
    this.copyAllowed,
    this.customerManagedKey,
    this.deepLinkAllowed,
    this.disconnectTimeoutInMinutes,
    this.downloadAllowed,
    this.idleDisconnectTimeoutInMinutes,
    this.pasteAllowed,
    this.printAllowed,
    this.region,
    this.tags,
    this.tagsAll,
    this.toolbarConfiguration,
    this.uploadAllowed,
    this.userSettingsArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalEncryptionContext': ?additionalEncryptionContext,
      'associatedPortalArns': ?associatedPortalArns,
      'cookieSynchronizationConfiguration': ?pulumi.Input.mapOptionalInputValue<UserSettingsCookieSynchronizationConfiguration, Map<String, dynamic>>(cookieSynchronizationConfiguration, (value) => value.toMap()),
      'copyAllowed': ?copyAllowed,
      'customerManagedKey': ?customerManagedKey,
      'deepLinkAllowed': ?deepLinkAllowed,
      'disconnectTimeoutInMinutes': ?disconnectTimeoutInMinutes,
      'downloadAllowed': ?downloadAllowed,
      'idleDisconnectTimeoutInMinutes': ?idleDisconnectTimeoutInMinutes,
      'pasteAllowed': ?pasteAllowed,
      'printAllowed': ?printAllowed,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'toolbarConfiguration': ?pulumi.Input.mapOptionalInputValue<UserSettingsToolbarConfiguration, Map<String, dynamic>>(toolbarConfiguration, (value) => value.toMap()),
      'uploadAllowed': ?uploadAllowed,
      'userSettingsArn': ?userSettingsArn,
    };
  }

  factory UserSettingsState.fromMap(Map<String, dynamic> map) {
    return UserSettingsState(
      additionalEncryptionContext: (() { final guardedValue = map['additionalEncryptionContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      associatedPortalArns: (() { final guardedValue = map['associatedPortalArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      cookieSynchronizationConfiguration: (() { final guardedValue = map['cookieSynchronizationConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserSettingsCookieSynchronizationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      copyAllowed: (() { final guardedValue = map['copyAllowed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerManagedKey: (() { final guardedValue = map['customerManagedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deepLinkAllowed: (() { final guardedValue = map['deepLinkAllowed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disconnectTimeoutInMinutes: (() { final guardedValue = map['disconnectTimeoutInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      downloadAllowed: (() { final guardedValue = map['downloadAllowed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idleDisconnectTimeoutInMinutes: (() { final guardedValue = map['idleDisconnectTimeoutInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pasteAllowed: (() { final guardedValue = map['pasteAllowed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      printAllowed: (() { final guardedValue = map['printAllowed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      toolbarConfiguration: (() { final guardedValue = map['toolbarConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserSettingsToolbarConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uploadAllowed: (() { final guardedValue = map['uploadAllowed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userSettingsArn: (() { final guardedValue = map['userSettingsArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

