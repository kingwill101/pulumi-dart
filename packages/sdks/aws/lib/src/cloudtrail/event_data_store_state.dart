// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_data_store_advanced_event_selector.dart';

/// Input properties used for looking up and filtering EventDataStore resources.
class EventDataStoreState {
  /// The advanced event selectors to use to select the events for the data store. For more information about how to use advanced event selectors, see [Log events by using advanced event selectors](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html#creating-data-event-selectors-advanced) in the CloudTrail User Guide.
  final pulumi.Input<List<EventDataStoreAdvancedEventSelector>>?
  advancedEventSelectors;

  /// ARN of the event data store.
  final pulumi.Input<String>? arn;

  /// The billing mode for the event data store. The valid values are `EXTENDABLE_RETENTION_PRICING` and `FIXED_RETENTION_PRICING`. Defaults to `EXTENDABLE_RETENTION_PRICING`.
  final pulumi.Input<String>? billingMode;

  /// Specifies the AWS KMS key ID to use to encrypt the events delivered by CloudTrail. The value can be an alias name prefixed by alias/, a fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique identifier.
  final pulumi.Input<String>? kmsKeyId;

  /// Specifies whether the event data store includes events from all regions, or only from the region in which the event data store is created. Default: `true`.
  final pulumi.Input<bool>? multiRegionEnabled;

  /// The name of the event data store.
  final pulumi.Input<String>? name;

  /// Specifies whether an event data store collects events logged for an organization in AWS Organizations. Default: `false`.
  final pulumi.Input<bool>? organizationEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The retention period of the event data store, in days. You can set a retention period of up to 2555 days, the equivalent of seven years. Default: `2555`.
  final pulumi.Input<int>? retentionPeriod;

  /// Specifies whether to stop ingesting new events into the event data store. If set to `true`, ingestion is suspended while maintaining the ability to query existing events. If set to `false`, ingestion is active.
  final pulumi.Input<String>? suspend;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Specifies whether termination protection is enabled for the event data store. If termination protection is enabled, you cannot delete the event data store until termination protection is disabled. Default: `true`.
  final pulumi.Input<bool>? terminationProtectionEnabled;

  /// Creates a new [EventDataStoreState].
  /// [advancedEventSelectors] The advanced event selectors to use to select the events for the data store. For more information about how to use advanced event selectors, see [Log events by using advanced event selectors](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html#creating-data-event-selectors-advanced) in the CloudTrail User Guide.
  /// [arn] ARN of the event data store.
  /// [billingMode] The billing mode for the event data store. The valid values are `EXTENDABLE_RETENTION_PRICING` and `FIXED_RETENTION_PRICING`. Defaults to `EXTENDABLE_RETENTION_PRICING`.
  /// [kmsKeyId] Specifies the AWS KMS key ID to use to encrypt the events delivered by CloudTrail. The value can be an alias name prefixed by alias/, a fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique identifier.
  /// [multiRegionEnabled] Specifies whether the event data store includes events from all regions, or only from the region in which the event data store is created. Default: `true`.
  /// [name] The name of the event data store.
  /// [organizationEnabled] Specifies whether an event data store collects events logged for an organization in AWS Organizations. Default: `false`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retentionPeriod] The retention period of the event data store, in days. You can set a retention period of up to 2555 days, the equivalent of seven years. Default: `2555`.
  /// [suspend] Specifies whether to stop ingesting new events into the event data store. If set to `true`, ingestion is suspended while maintaining the ability to query existing events. If set to `false`, ingestion is active.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [terminationProtectionEnabled] Specifies whether termination protection is enabled for the event data store. If termination protection is enabled, you cannot delete the event data store until termination protection is disabled. Default: `true`.
  EventDataStoreState({
    this.advancedEventSelectors,
    this.arn,
    this.billingMode,
    this.kmsKeyId,
    this.multiRegionEnabled,
    this.name,
    this.organizationEnabled,
    this.region,
    this.retentionPeriod,
    this.suspend,
    this.tags,
    this.tagsAll,
    this.terminationProtectionEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedEventSelectors':
          ?pulumi.Input.mapOptionalInputValue<
            List<EventDataStoreAdvancedEventSelector>,
            List<Map<String, dynamic>>
          >(
            advancedEventSelectors,
            (value) =>
                pulumi.Input.encodeList<
                  EventDataStoreAdvancedEventSelector,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'arn': ?arn,
      'billingMode': ?billingMode,
      'kmsKeyId': ?kmsKeyId,
      'multiRegionEnabled': ?multiRegionEnabled,
      'name': ?name,
      'organizationEnabled': ?organizationEnabled,
      'region': ?region,
      'retentionPeriod': ?retentionPeriod,
      'suspend': ?suspend,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'terminationProtectionEnabled': ?terminationProtectionEnabled,
    };
  }

  factory EventDataStoreState.fromMap(Map<String, dynamic> map) {
    return EventDataStoreState(
      advancedEventSelectors: (() {
        final guardedValue = map['advancedEventSelectors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EventDataStoreAdvancedEventSelector>(
            guardedValue,
            (value) => EventDataStoreAdvancedEventSelector.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      billingMode: (() {
        final guardedValue = map['billingMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsKeyId: (() {
        final guardedValue = map['kmsKeyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      multiRegionEnabled: (() {
        final guardedValue = map['multiRegionEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      organizationEnabled: (() {
        final guardedValue = map['organizationEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      retentionPeriod: (() {
        final guardedValue = map['retentionPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      suspend: (() {
        final guardedValue = map['suspend'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      terminationProtectionEnabled: (() {
        final guardedValue = map['terminationProtectionEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
