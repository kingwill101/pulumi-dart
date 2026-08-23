// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'portal_timeouts.dart';

/// Input properties used for looking up and filtering Portal resources.
class PortalState {
  /// Additional encryption context for the customer managed key. Forces replacement if changed.
  final pulumi.Input<Map<String, String>>? additionalEncryptionContext;
  /// Authentication type for the portal. Valid values: `Standard`, `IAM_Identity_Center`.
  final pulumi.Input<String>? authenticationType;
  /// ARN of the browser settings to use for the portal.
  final pulumi.Input<String>? browserSettingsArn;
  /// Browser type of the portal.
  final pulumi.Input<String>? browserType;
  /// Creation date of the portal.
  final pulumi.Input<String>? creationDate;
  /// ARN of the customer managed key. Forces replacement if changed.
  final pulumi.Input<String>? customerManagedKey;
  /// ARN of the data protection settings associated with the portal.
  final pulumi.Input<String>? dataProtectionSettingsArn;
  /// Display name of the portal.
  final pulumi.Input<String>? displayName;
  /// Instance type for the portal. Valid values: `standard.regular`, `standard.large`.
  final pulumi.Input<String>? instanceType;
  /// ARN of the IP access settings associated with the portal.
  final pulumi.Input<String>? ipAccessSettingsArn;
  /// Maximum number of concurrent sessions for the portal.
  final pulumi.Input<int>? maxConcurrentSessions;
  /// ARN of the network settings associated with the portal.
  final pulumi.Input<String>? networkSettingsArn;
  /// ARN of the portal.
  final pulumi.Input<String>? portalArn;
  /// Endpoint URL of the portal.
  final pulumi.Input<String>? portalEndpoint;
  /// Status of the portal.
  final pulumi.Input<String>? portalStatus;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Renderer type of the portal.
  final pulumi.Input<String>? rendererType;
  /// ARN of the session logger associated with the portal.
  final pulumi.Input<String>? sessionLoggerArn;
  /// Reason for the current status of the portal.
  final pulumi.Input<String>? statusReason;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<PortalTimeouts>? timeouts;
  /// ARN of the trust store associated with the portal.
  final pulumi.Input<String>? trustStoreArn;
  /// ARN of the user access logging settings associated with the portal.
  final pulumi.Input<String>? userAccessLoggingSettingsArn;
  /// ARN of the user settings associated with the portal.
  final pulumi.Input<String>? userSettingsArn;

  /// Creates a new [PortalState].
  /// [additionalEncryptionContext] Additional encryption context for the customer managed key. Forces replacement if changed.
  /// [authenticationType] Authentication type for the portal. Valid values: `Standard`, `IAM_Identity_Center`.
  /// [browserSettingsArn] ARN of the browser settings to use for the portal.
  /// [browserType] Browser type of the portal.
  /// [creationDate] Creation date of the portal.
  /// [customerManagedKey] ARN of the customer managed key. Forces replacement if changed.
  /// [dataProtectionSettingsArn] ARN of the data protection settings associated with the portal.
  /// [displayName] Display name of the portal.
  /// [instanceType] Instance type for the portal. Valid values: `standard.regular`, `standard.large`.
  /// [ipAccessSettingsArn] ARN of the IP access settings associated with the portal.
  /// [maxConcurrentSessions] Maximum number of concurrent sessions for the portal.
  /// [networkSettingsArn] ARN of the network settings associated with the portal.
  /// [portalArn] ARN of the portal.
  /// [portalEndpoint] Endpoint URL of the portal.
  /// [portalStatus] Status of the portal.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rendererType] Renderer type of the portal.
  /// [sessionLoggerArn] ARN of the session logger associated with the portal.
  /// [statusReason] Reason for the current status of the portal.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  /// [trustStoreArn] ARN of the trust store associated with the portal.
  /// [userAccessLoggingSettingsArn] ARN of the user access logging settings associated with the portal.
  /// [userSettingsArn] ARN of the user settings associated with the portal.
  const PortalState({
    this.additionalEncryptionContext,
    this.authenticationType,
    this.browserSettingsArn,
    this.browserType,
    this.creationDate,
    this.customerManagedKey,
    this.dataProtectionSettingsArn,
    this.displayName,
    this.instanceType,
    this.ipAccessSettingsArn,
    this.maxConcurrentSessions,
    this.networkSettingsArn,
    this.portalArn,
    this.portalEndpoint,
    this.portalStatus,
    this.region,
    this.rendererType,
    this.sessionLoggerArn,
    this.statusReason,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.trustStoreArn,
    this.userAccessLoggingSettingsArn,
    this.userSettingsArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalEncryptionContext': ?additionalEncryptionContext,
      'authenticationType': ?authenticationType,
      'browserSettingsArn': ?browserSettingsArn,
      'browserType': ?browserType,
      'creationDate': ?creationDate,
      'customerManagedKey': ?customerManagedKey,
      'dataProtectionSettingsArn': ?dataProtectionSettingsArn,
      'displayName': ?displayName,
      'instanceType': ?instanceType,
      'ipAccessSettingsArn': ?ipAccessSettingsArn,
      'maxConcurrentSessions': ?maxConcurrentSessions,
      'networkSettingsArn': ?networkSettingsArn,
      'portalArn': ?portalArn,
      'portalEndpoint': ?portalEndpoint,
      'portalStatus': ?portalStatus,
      'region': ?region,
      'rendererType': ?rendererType,
      'sessionLoggerArn': ?sessionLoggerArn,
      'statusReason': ?statusReason,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<PortalTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'trustStoreArn': ?trustStoreArn,
      'userAccessLoggingSettingsArn': ?userAccessLoggingSettingsArn,
      'userSettingsArn': ?userSettingsArn,
    };
  }

  factory PortalState.fromMap(Map<String, dynamic> map) {
    return PortalState(
      additionalEncryptionContext: (() { final guardedValue = map['additionalEncryptionContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      authenticationType: (() { final guardedValue = map['authenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      browserSettingsArn: (() { final guardedValue = map['browserSettingsArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      browserType: (() { final guardedValue = map['browserType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creationDate: (() { final guardedValue = map['creationDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerManagedKey: (() { final guardedValue = map['customerManagedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataProtectionSettingsArn: (() { final guardedValue = map['dataProtectionSettingsArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAccessSettingsArn: (() { final guardedValue = map['ipAccessSettingsArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxConcurrentSessions: (() { final guardedValue = map['maxConcurrentSessions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      networkSettingsArn: (() { final guardedValue = map['networkSettingsArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      portalArn: (() { final guardedValue = map['portalArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      portalEndpoint: (() { final guardedValue = map['portalEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      portalStatus: (() { final guardedValue = map['portalStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rendererType: (() { final guardedValue = map['rendererType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionLoggerArn: (() { final guardedValue = map['sessionLoggerArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusReason: (() { final guardedValue = map['statusReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PortalTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trustStoreArn: (() { final guardedValue = map['trustStoreArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAccessLoggingSettingsArn: (() { final guardedValue = map['userAccessLoggingSettingsArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userSettingsArn: (() { final guardedValue = map['userSettingsArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
