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
    this.additionalEncryptionContext,
    this.authenticationType,
    this.browserSettingsArn,
    this.customerManagedKey,
    this.displayName,
    this.instanceType,
    this.maxConcurrentSessions,
    this.region,
    this.tags,
    this.timeouts,
  });

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
      additionalEncryptionContext: map['additionalEncryptionContext'] == null ? null : (((map['additionalEncryptionContext'] as Map).cast<String, String>()).input()).input(),
      authenticationType: map['authenticationType'] == null ? null : ((map['authenticationType'] as String).input()).input(),
      browserSettingsArn: map['browserSettingsArn'] == null ? null : ((map['browserSettingsArn'] as String).input()).input(),
      customerManagedKey: map['customerManagedKey'] == null ? null : ((map['customerManagedKey'] as String).input()).input(),
      displayName: map['displayName'] == null ? null : ((map['displayName'] as String).input()).input(),
      instanceType: map['instanceType'] == null ? null : ((map['instanceType'] as String).input()).input(),
      maxConcurrentSessions: map['maxConcurrentSessions'] == null ? null : ((map['maxConcurrentSessions'] as int).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((PortalTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

