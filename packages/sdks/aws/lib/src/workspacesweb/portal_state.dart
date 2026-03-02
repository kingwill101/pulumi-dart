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
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
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
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  /// [trustStoreArn] ARN of the trust store associated with the portal.
  /// [userAccessLoggingSettingsArn] ARN of the user access logging settings associated with the portal.
  /// [userSettingsArn] ARN of the user settings associated with the portal.
  PortalState({
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
      additionalEncryptionContext: map['additionalEncryptionContext'] == null ? null : ((map['additionalEncryptionContext'] as Map).cast<String, String>()).input(),
      authenticationType: map['authenticationType'] == null ? null : (map['authenticationType'] as String).input(),
      browserSettingsArn: map['browserSettingsArn'] == null ? null : (map['browserSettingsArn'] as String).input(),
      browserType: map['browserType'] == null ? null : (map['browserType'] as String).input(),
      creationDate: map['creationDate'] == null ? null : (map['creationDate'] as String).input(),
      customerManagedKey: map['customerManagedKey'] == null ? null : (map['customerManagedKey'] as String).input(),
      dataProtectionSettingsArn: map['dataProtectionSettingsArn'] == null ? null : (map['dataProtectionSettingsArn'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType'] as String).input(),
      ipAccessSettingsArn: map['ipAccessSettingsArn'] == null ? null : (map['ipAccessSettingsArn'] as String).input(),
      maxConcurrentSessions: map['maxConcurrentSessions'] == null ? null : (map['maxConcurrentSessions'] as int).input(),
      networkSettingsArn: map['networkSettingsArn'] == null ? null : (map['networkSettingsArn'] as String).input(),
      portalArn: map['portalArn'] == null ? null : (map['portalArn'] as String).input(),
      portalEndpoint: map['portalEndpoint'] == null ? null : (map['portalEndpoint'] as String).input(),
      portalStatus: map['portalStatus'] == null ? null : (map['portalStatus'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      rendererType: map['rendererType'] == null ? null : (map['rendererType'] as String).input(),
      sessionLoggerArn: map['sessionLoggerArn'] == null ? null : (map['sessionLoggerArn'] as String).input(),
      statusReason: map['statusReason'] == null ? null : (map['statusReason'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      timeouts: map['timeouts'] == null ? null : (PortalTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
      trustStoreArn: map['trustStoreArn'] == null ? null : (map['trustStoreArn'] as String).input(),
      userAccessLoggingSettingsArn: map['userAccessLoggingSettingsArn'] == null ? null : (map['userAccessLoggingSettingsArn'] as String).input(),
      userSettingsArn: map['userSettingsArn'] == null ? null : (map['userSettingsArn'] as String).input(),
    );
  }
}

