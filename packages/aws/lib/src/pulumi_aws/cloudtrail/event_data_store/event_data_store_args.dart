// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../event_data_store_advanced_event_selector/event_data_store_advanced_event_selector.dart';

/// The set of arguments for EventDataStore.
class EventDataStoreArgs {
  /// The advanced event selectors to use to select the events for the data store. For more information about how to use advanced event selectors, see [Log events by using advanced event selectors](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html#creating-data-event-selectors-advanced) in the CloudTrail User Guide.
  final Input<List<EventDataStoreAdvancedEventSelector>>?
      advancedEventSelectors;

  /// The billing mode for the event data store. The valid values are `EXTENDABLE_RETENTION_PRICING` and `FIXED_RETENTION_PRICING`. Defaults to `EXTENDABLE_RETENTION_PRICING`.
  final Input<String>? billingMode;

  /// Specifies the AWS KMS key ID to use to encrypt the events delivered by CloudTrail. The value can be an alias name prefixed by alias/, a fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique identifier.
  final Input<String>? kmsKeyId;

  /// Specifies whether the event data store includes events from all regions, or only from the region in which the event data store is created. Default: `true`.
  final Input<bool>? multiRegionEnabled;

  /// The name of the event data store.
  final Input<String>? name;

  /// Specifies whether an event data store collects events logged for an organization in AWS Organizations. Default: `false`.
  final Input<bool>? organizationEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The retention period of the event data store, in days. You can set a retention period of up to 2555 days, the equivalent of seven years. Default: `2555`.
  final Input<int>? retentionPeriod;

  /// Specifies whether to stop ingesting new events into the event data store. If set to `true`, ingestion is suspended while maintaining the ability to query existing events. If set to `false`, ingestion is active.
  final Input<String>? suspend;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Specifies whether termination protection is enabled for the event data store. If termination protection is enabled, you cannot delete the event data store until termination protection is disabled. Default: `true`.
  final Input<bool>? terminationProtectionEnabled;

  EventDataStoreArgs({
    this.advancedEventSelectors,
    this.billingMode,
    this.kmsKeyId,
    this.multiRegionEnabled,
    this.name,
    this.organizationEnabled,
    this.region,
    this.retentionPeriod,
    this.suspend,
    this.tags,
    this.terminationProtectionEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advancedEventSelectorsValue = advancedEventSelectors;
    if (advancedEventSelectorsValue != null) {
      map['advancedEventSelectors'] = Input.mapOptionalInputValue<
              List<EventDataStoreAdvancedEventSelector>,
              List<Map<String, dynamic>>>(
          advancedEventSelectorsValue,
          (value) => Input.encodeList<EventDataStoreAdvancedEventSelector,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final billingModeValue = billingMode;
    if (billingModeValue != null) {
      map['billingMode'] = billingModeValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final multiRegionEnabledValue = multiRegionEnabled;
    if (multiRegionEnabledValue != null) {
      map['multiRegionEnabled'] = multiRegionEnabledValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final organizationEnabledValue = organizationEnabled;
    if (organizationEnabledValue != null) {
      map['organizationEnabled'] = organizationEnabledValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final retentionPeriodValue = retentionPeriod;
    if (retentionPeriodValue != null) {
      map['retentionPeriod'] = retentionPeriodValue;
    }
    final suspendValue = suspend;
    if (suspendValue != null) {
      map['suspend'] = suspendValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final terminationProtectionEnabledValue = terminationProtectionEnabled;
    if (terminationProtectionEnabledValue != null) {
      map['terminationProtectionEnabled'] = terminationProtectionEnabledValue;
    }
    return map;
  }

  factory EventDataStoreArgs.fromMap(Map<String, dynamic> map) {
    return EventDataStoreArgs(
      advancedEventSelectors:
          Input.asOptionalInput<List<EventDataStoreAdvancedEventSelector>>(
              map['advancedEventSelectors']),
      billingMode: Input.asOptionalInput<String>(map['billingMode']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      multiRegionEnabled:
          Input.asOptionalInput<bool>(map['multiRegionEnabled']),
      name: Input.asOptionalInput<String>(map['name']),
      organizationEnabled:
          Input.asOptionalInput<bool>(map['organizationEnabled']),
      region: Input.asOptionalInput<String>(map['region']),
      retentionPeriod: Input.asOptionalInput<int>(map['retentionPeriod']),
      suspend: Input.asOptionalInput<String>(map['suspend']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      terminationProtectionEnabled:
          Input.asOptionalInput<bool>(map['terminationProtectionEnabled']),
    );
  }
}
