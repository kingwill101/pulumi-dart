// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'portal_timeouts.dart';

/// {@template pulumi_workspacesweb_portal_portal_args_doc}
/// The set of arguments for Portal.
/// {@endtemplate}
/// {@macro pulumi_workspacesweb_portal_portal_args_doc}
class PortalArgs {
  /// Additional encryption context for the customer managed key. Forces replacement if changed.
  final pulumi.Input<Map<String, String>>? additionalEncryptionContext;
  /// Authentication type for the portal. Valid values: `Standard`, `IAM_Identity_Center`.
  final pulumi.Input<String>? authenticationType;
  /// ARN of the browser settings to use for the portal.
  final pulumi.Input<String>? browserSettingsArn;
  /// ARN of the customer managed key. Forces replacement if changed.
  final pulumi.Input<String>? customerManagedKey;
  /// Display name of the portal.
  final pulumi.Input<String>? displayName;
  /// Instance type for the portal. Valid values: `standard.regular`, `standard.large`.
  final pulumi.Input<String>? instanceType;
  /// Maximum number of concurrent sessions for the portal.
  final pulumi.Input<int>? maxConcurrentSessions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<PortalTimeouts>? timeouts;

  /// Creates a new [PortalArgs].
  /// [additionalEncryptionContext] Additional encryption context for the customer managed key. Forces replacement if changed.
  /// [authenticationType] Authentication type for the portal. Valid values: `Standard`, `IAM_Identity_Center`.
  /// [browserSettingsArn] ARN of the browser settings to use for the portal.
  /// [customerManagedKey] ARN of the customer managed key. Forces replacement if changed.
  /// [displayName] Display name of the portal.
  /// [instanceType] Instance type for the portal. Valid values: `standard.regular`, `standard.large`.
  /// [maxConcurrentSessions] Maximum number of concurrent sessions for the portal.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  PortalArgs({
    pulumi.Output<Map<String, String>>? additionalEncryptionContext,
    pulumi.Output<String>? authenticationType,
    pulumi.Output<String>? browserSettingsArn,
    pulumi.Output<String>? customerManagedKey,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? instanceType,
    pulumi.Output<int>? maxConcurrentSessions,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<PortalTimeouts>? timeouts,
  }) :
      additionalEncryptionContext = pulumi.Input.asOptionalInput<Map<String, String>>(additionalEncryptionContext),
      authenticationType = pulumi.Input.asOptionalInput<String>(authenticationType),
      browserSettingsArn = pulumi.Input.asOptionalInput<String>(browserSettingsArn),
      customerManagedKey = pulumi.Input.asOptionalInput<String>(customerManagedKey),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      maxConcurrentSessions = pulumi.Input.asOptionalInput<int>(maxConcurrentSessions),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<PortalTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalEncryptionContext': ?additionalEncryptionContext,
      'authenticationType': ?authenticationType,
      'browserSettingsArn': ?browserSettingsArn,
      'customerManagedKey': ?customerManagedKey,
      'displayName': ?displayName,
      'instanceType': ?instanceType,
      'maxConcurrentSessions': ?maxConcurrentSessions,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<PortalTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory PortalArgs.fromMap(Map<String, dynamic> map) {
    return PortalArgs(
      additionalEncryptionContext: map['additionalEncryptionContext'] == null ? null : pulumi.Output.create<Map<String, String>>((map['additionalEncryptionContext'] as Map).cast<String, String>()),
      authenticationType: map['authenticationType'] == null ? null : pulumi.Output.create<String>(map['authenticationType'] as String),
      browserSettingsArn: map['browserSettingsArn'] == null ? null : pulumi.Output.create<String>(map['browserSettingsArn'] as String),
      customerManagedKey: map['customerManagedKey'] == null ? null : pulumi.Output.create<String>(map['customerManagedKey'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      maxConcurrentSessions: map['maxConcurrentSessions'] == null ? null : pulumi.Output.create<int>(map['maxConcurrentSessions'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<PortalTimeouts>(PortalTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

