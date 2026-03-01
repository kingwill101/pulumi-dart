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
    pulumi.Output<Map<String, String>>? additionalEncryptionContext,
    pulumi.Output<String>? authenticationType,
    pulumi.Output<String>? browserSettingsArn,
    pulumi.Output<String>? browserType,
    pulumi.Output<String>? creationDate,
    pulumi.Output<String>? customerManagedKey,
    pulumi.Output<String>? dataProtectionSettingsArn,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? instanceType,
    pulumi.Output<String>? ipAccessSettingsArn,
    pulumi.Output<int>? maxConcurrentSessions,
    pulumi.Output<String>? networkSettingsArn,
    pulumi.Output<String>? portalArn,
    pulumi.Output<String>? portalEndpoint,
    pulumi.Output<String>? portalStatus,
    pulumi.Output<String>? region,
    pulumi.Output<String>? rendererType,
    pulumi.Output<String>? sessionLoggerArn,
    pulumi.Output<String>? statusReason,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<PortalTimeouts>? timeouts,
    pulumi.Output<String>? trustStoreArn,
    pulumi.Output<String>? userAccessLoggingSettingsArn,
    pulumi.Output<String>? userSettingsArn,
  }) :
      additionalEncryptionContext = pulumi.Input.asOptionalInput<Map<String, String>>(additionalEncryptionContext),
      authenticationType = pulumi.Input.asOptionalInput<String>(authenticationType),
      browserSettingsArn = pulumi.Input.asOptionalInput<String>(browserSettingsArn),
      browserType = pulumi.Input.asOptionalInput<String>(browserType),
      creationDate = pulumi.Input.asOptionalInput<String>(creationDate),
      customerManagedKey = pulumi.Input.asOptionalInput<String>(customerManagedKey),
      dataProtectionSettingsArn = pulumi.Input.asOptionalInput<String>(dataProtectionSettingsArn),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      ipAccessSettingsArn = pulumi.Input.asOptionalInput<String>(ipAccessSettingsArn),
      maxConcurrentSessions = pulumi.Input.asOptionalInput<int>(maxConcurrentSessions),
      networkSettingsArn = pulumi.Input.asOptionalInput<String>(networkSettingsArn),
      portalArn = pulumi.Input.asOptionalInput<String>(portalArn),
      portalEndpoint = pulumi.Input.asOptionalInput<String>(portalEndpoint),
      portalStatus = pulumi.Input.asOptionalInput<String>(portalStatus),
      region = pulumi.Input.asOptionalInput<String>(region),
      rendererType = pulumi.Input.asOptionalInput<String>(rendererType),
      sessionLoggerArn = pulumi.Input.asOptionalInput<String>(sessionLoggerArn),
      statusReason = pulumi.Input.asOptionalInput<String>(statusReason),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<PortalTimeouts>(timeouts),
      trustStoreArn = pulumi.Input.asOptionalInput<String>(trustStoreArn),
      userAccessLoggingSettingsArn = pulumi.Input.asOptionalInput<String>(userAccessLoggingSettingsArn),
      userSettingsArn = pulumi.Input.asOptionalInput<String>(userSettingsArn);

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
      additionalEncryptionContext: map['additionalEncryptionContext'] == null ? null : pulumi.Output.create<Map<String, String>>((map['additionalEncryptionContext'] as Map).cast<String, String>()),
      authenticationType: map['authenticationType'] == null ? null : pulumi.Output.create<String>(map['authenticationType'] as String),
      browserSettingsArn: map['browserSettingsArn'] == null ? null : pulumi.Output.create<String>(map['browserSettingsArn'] as String),
      browserType: map['browserType'] == null ? null : pulumi.Output.create<String>(map['browserType'] as String),
      creationDate: map['creationDate'] == null ? null : pulumi.Output.create<String>(map['creationDate'] as String),
      customerManagedKey: map['customerManagedKey'] == null ? null : pulumi.Output.create<String>(map['customerManagedKey'] as String),
      dataProtectionSettingsArn: map['dataProtectionSettingsArn'] == null ? null : pulumi.Output.create<String>(map['dataProtectionSettingsArn'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      ipAccessSettingsArn: map['ipAccessSettingsArn'] == null ? null : pulumi.Output.create<String>(map['ipAccessSettingsArn'] as String),
      maxConcurrentSessions: map['maxConcurrentSessions'] == null ? null : pulumi.Output.create<int>(map['maxConcurrentSessions'] as int),
      networkSettingsArn: map['networkSettingsArn'] == null ? null : pulumi.Output.create<String>(map['networkSettingsArn'] as String),
      portalArn: map['portalArn'] == null ? null : pulumi.Output.create<String>(map['portalArn'] as String),
      portalEndpoint: map['portalEndpoint'] == null ? null : pulumi.Output.create<String>(map['portalEndpoint'] as String),
      portalStatus: map['portalStatus'] == null ? null : pulumi.Output.create<String>(map['portalStatus'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rendererType: map['rendererType'] == null ? null : pulumi.Output.create<String>(map['rendererType'] as String),
      sessionLoggerArn: map['sessionLoggerArn'] == null ? null : pulumi.Output.create<String>(map['sessionLoggerArn'] as String),
      statusReason: map['statusReason'] == null ? null : pulumi.Output.create<String>(map['statusReason'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<PortalTimeouts>(PortalTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      trustStoreArn: map['trustStoreArn'] == null ? null : pulumi.Output.create<String>(map['trustStoreArn'] as String),
      userAccessLoggingSettingsArn: map['userAccessLoggingSettingsArn'] == null ? null : pulumi.Output.create<String>(map['userAccessLoggingSettingsArn'] as String),
      userSettingsArn: map['userSettingsArn'] == null ? null : pulumi.Output.create<String>(map['userSettingsArn'] as String),
    );
  }
}

