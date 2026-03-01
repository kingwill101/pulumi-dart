// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_data_store_advanced_event_selector.dart';

/// {@template pulumi_cloudtrail_event_data_store_event_data_store_args_doc}
/// The set of arguments for EventDataStore.
/// {@endtemplate}
/// {@macro pulumi_cloudtrail_event_data_store_event_data_store_args_doc}
class EventDataStoreArgs {
  /// The advanced event selectors to use to select the events for the data store. For more information about how to use advanced event selectors, see [Log events by using advanced event selectors](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html#creating-data-event-selectors-advanced) in the CloudTrail User Guide.
  final pulumi.Input<List<EventDataStoreAdvancedEventSelector>>? advancedEventSelectors;
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
  /// Specifies whether termination protection is enabled for the event data store. If termination protection is enabled, you cannot delete the event data store until termination protection is disabled. Default: `true`.
  final pulumi.Input<bool>? terminationProtectionEnabled;

  /// Creates a new [EventDataStoreArgs].
  /// [advancedEventSelectors] The advanced event selectors to use to select the events for the data store. For more information about how to use advanced event selectors, see [Log events by using advanced event selectors](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html#creating-data-event-selectors-advanced) in the CloudTrail User Guide.
  /// [billingMode] The billing mode for the event data store. The valid values are `EXTENDABLE_RETENTION_PRICING` and `FIXED_RETENTION_PRICING`. Defaults to `EXTENDABLE_RETENTION_PRICING`.
  /// [kmsKeyId] Specifies the AWS KMS key ID to use to encrypt the events delivered by CloudTrail. The value can be an alias name prefixed by alias/, a fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique identifier.
  /// [multiRegionEnabled] Specifies whether the event data store includes events from all regions, or only from the region in which the event data store is created. Default: `true`.
  /// [name] The name of the event data store.
  /// [organizationEnabled] Specifies whether an event data store collects events logged for an organization in AWS Organizations. Default: `false`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retentionPeriod] The retention period of the event data store, in days. You can set a retention period of up to 2555 days, the equivalent of seven years. Default: `2555`.
  /// [suspend] Specifies whether to stop ingesting new events into the event data store. If set to `true`, ingestion is suspended while maintaining the ability to query existing events. If set to `false`, ingestion is active.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [terminationProtectionEnabled] Specifies whether termination protection is enabled for the event data store. If termination protection is enabled, you cannot delete the event data store until termination protection is disabled. Default: `true`.
  EventDataStoreArgs({
    pulumi.Output<List<EventDataStoreAdvancedEventSelector>>? advancedEventSelectors,
    pulumi.Output<String>? billingMode,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<bool>? multiRegionEnabled,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? organizationEnabled,
    pulumi.Output<String>? region,
    pulumi.Output<int>? retentionPeriod,
    pulumi.Output<String>? suspend,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<bool>? terminationProtectionEnabled,
  }) :
      advancedEventSelectors = pulumi.Input.asOptionalInput<List<EventDataStoreAdvancedEventSelector>>(advancedEventSelectors),
      billingMode = pulumi.Input.asOptionalInput<String>(billingMode),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      multiRegionEnabled = pulumi.Input.asOptionalInput<bool>(multiRegionEnabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      organizationEnabled = pulumi.Input.asOptionalInput<bool>(organizationEnabled),
      region = pulumi.Input.asOptionalInput<String>(region),
      retentionPeriod = pulumi.Input.asOptionalInput<int>(retentionPeriod),
      suspend = pulumi.Input.asOptionalInput<String>(suspend),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      terminationProtectionEnabled = pulumi.Input.asOptionalInput<bool>(terminationProtectionEnabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedEventSelectors': ?pulumi.Input.mapOptionalInputValue<List<EventDataStoreAdvancedEventSelector>, List<Map<String, dynamic>>>(advancedEventSelectors, (value) => pulumi.Input.encodeList<EventDataStoreAdvancedEventSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'billingMode': ?billingMode,
      'kmsKeyId': ?kmsKeyId,
      'multiRegionEnabled': ?multiRegionEnabled,
      'name': ?name,
      'organizationEnabled': ?organizationEnabled,
      'region': ?region,
      'retentionPeriod': ?retentionPeriod,
      'suspend': ?suspend,
      'tags': ?tags,
      'terminationProtectionEnabled': ?terminationProtectionEnabled,
    };
  }

  factory EventDataStoreArgs.fromMap(Map<String, dynamic> map) {
    return EventDataStoreArgs(
      advancedEventSelectors: map['advancedEventSelectors'] == null ? null : pulumi.Output.create<List<EventDataStoreAdvancedEventSelector>>(pulumi.Input.decodeList<EventDataStoreAdvancedEventSelector>(map['advancedEventSelectors'], (value) => EventDataStoreAdvancedEventSelector.fromMap((value as Map).cast<String, dynamic>()))),
      billingMode: map['billingMode'] == null ? null : pulumi.Output.create<String>(map['billingMode'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      multiRegionEnabled: map['multiRegionEnabled'] == null ? null : pulumi.Output.create<bool>(map['multiRegionEnabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      organizationEnabled: map['organizationEnabled'] == null ? null : pulumi.Output.create<bool>(map['organizationEnabled'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      retentionPeriod: map['retentionPeriod'] == null ? null : pulumi.Output.create<int>(map['retentionPeriod'] as int),
      suspend: map['suspend'] == null ? null : pulumi.Output.create<String>(map['suspend'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      terminationProtectionEnabled: map['terminationProtectionEnabled'] == null ? null : pulumi.Output.create<bool>(map['terminationProtectionEnabled'] as bool),
    );
  }
}

