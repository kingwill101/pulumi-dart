// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../portal_timeouts/portal_timeouts.dart';

/// The set of arguments for Portal.
class PortalArgs {
  /// Additional encryption context for the customer managed key. Forces replacement if changed.
  final Input<Map<String, String>>? additionalEncryptionContext;

  /// Authentication type for the portal. Valid values: `Standard`, `IAM_Identity_Center`.
  final Input<String>? authenticationType;

  /// ARN of the browser settings to use for the portal.
  final Input<String>? browserSettingsArn;

  /// ARN of the customer managed key. Forces replacement if changed.
  final Input<String>? customerManagedKey;

  /// Display name of the portal.
  final Input<String>? displayName;

  /// Instance type for the portal. Valid values: `standard.regular`, `standard.large`.
  final Input<String>? instanceType;

  /// Maximum number of concurrent sessions for the portal.
  final Input<int>? maxConcurrentSessions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<PortalTimeouts>? timeouts;

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
    final map = <String, dynamic>{};
    final additionalEncryptionContextValue = additionalEncryptionContext;
    if (additionalEncryptionContextValue != null) {
      map['additionalEncryptionContext'] = additionalEncryptionContextValue;
    }
    final authenticationTypeValue = authenticationType;
    if (authenticationTypeValue != null) {
      map['authenticationType'] = authenticationTypeValue;
    }
    final browserSettingsArnValue = browserSettingsArn;
    if (browserSettingsArnValue != null) {
      map['browserSettingsArn'] = browserSettingsArnValue;
    }
    final customerManagedKeyValue = customerManagedKey;
    if (customerManagedKeyValue != null) {
      map['customerManagedKey'] = customerManagedKeyValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final instanceTypeValue = instanceType;
    if (instanceTypeValue != null) {
      map['instanceType'] = instanceTypeValue;
    }
    final maxConcurrentSessionsValue = maxConcurrentSessions;
    if (maxConcurrentSessionsValue != null) {
      map['maxConcurrentSessions'] = maxConcurrentSessionsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] =
          Input.mapOptionalInputValue<PortalTimeouts, Map<String, dynamic>>(
              timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory PortalArgs.fromMap(Map<String, dynamic> map) {
    return PortalArgs(
      additionalEncryptionContext: Input.asOptionalInput<Map<String, String>>(
          map['additionalEncryptionContext']),
      authenticationType:
          Input.asOptionalInput<String>(map['authenticationType']),
      browserSettingsArn:
          Input.asOptionalInput<String>(map['browserSettingsArn']),
      customerManagedKey:
          Input.asOptionalInput<String>(map['customerManagedKey']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      instanceType: Input.asOptionalInput<String>(map['instanceType']),
      maxConcurrentSessions:
          Input.asOptionalInput<int>(map['maxConcurrentSessions']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<PortalTimeouts>(map['timeouts']),
    );
  }
}
