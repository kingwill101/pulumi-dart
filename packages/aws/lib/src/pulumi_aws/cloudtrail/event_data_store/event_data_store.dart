import 'package:pulumi/pulumi.dart';
import '../event_data_store_advanced_event_selector/event_data_store_advanced_event_selector.dart';
import 'event_data_store_args.dart';

/// Provides a CloudTrail Event Data Store.
///
/// More information about event data stores can be found in the [Event Data Store User Guide](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-event-data-store.html).
///
/// > **Tip:** For an organization event data store you must create this resource in the management account.
///
/// ## Example Usage
///
/// ### Basic
///
/// The most simple event data store configuration requires us to only set the `name` attribute. The event data store will automatically capture all management events. To capture management events from all the regions, `multi_region_enabled` must be `true`.
///
///
///
/// ### Data Event Logging
///
/// CloudTrail can log [Data Events](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html) for certain services such as S3 bucket objects and Lambda function invocations. Additional information about data event configuration can be found in the following links:
///
/// - [CloudTrail API AdvancedFieldSelector documentation](https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_AdvancedFieldSelector.html)
///
/// ### Log all DynamoDB PutEvent actions for a specific DynamoDB table
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the CloudTrail event data store.
///
///
/// Using `pulumi import`, import event data stores using their `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudtrail/eventDataStore:EventDataStore example arn:aws:cloudtrail:us-east-1:123456789123:eventdatastore/22333815-4414-412c-b155-dd254033gfhf
/// ```
class EventDataStore extends CustomResource {
  /// The advanced event selectors to use to select the events for the data store. For more information about how to use advanced event selectors, see [Log events by using advanced event selectors](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html#creating-data-event-selectors-advanced) in the CloudTrail User Guide.
  late final Output<List<EventDataStoreAdvancedEventSelector>>
      advancedEventSelectors;

  /// ARN of the event data store.
  late final Output<String> arn;

  /// The billing mode for the event data store. The valid values are `EXTENDABLE_RETENTION_PRICING` and `FIXED_RETENTION_PRICING`. Defaults to `EXTENDABLE_RETENTION_PRICING`.
  late final Output<String?> billingMode;

  /// Specifies the AWS KMS key ID to use to encrypt the events delivered by CloudTrail. The value can be an alias name prefixed by alias/, a fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique identifier.
  late final Output<String?> kmsKeyId;

  /// Specifies whether the event data store includes events from all regions, or only from the region in which the event data store is created. Default: `true`.
  late final Output<bool?> multiRegionEnabled;

  /// The name of the event data store.
  late final Output<String> name;

  /// Specifies whether an event data store collects events logged for an organization in AWS Organizations. Default: `false`.
  late final Output<bool?> organizationEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The retention period of the event data store, in days. You can set a retention period of up to 2555 days, the equivalent of seven years. Default: `2555`.
  late final Output<int?> retentionPeriod;

  /// Specifies whether to stop ingesting new events into the event data store. If set to `true`, ingestion is suspended while maintaining the ability to query existing events. If set to `false`, ingestion is active.
  late final Output<String?> suspend;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Specifies whether termination protection is enabled for the event data store. If termination protection is enabled, you cannot delete the event data store until termination protection is disabled. Default: `true`.
  late final Output<bool?> terminationProtectionEnabled;

  EventDataStore(
    String name, {
    EventDataStoreArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudtrail/eventDataStore:EventDataStore',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.advancedEventSelectors =
        registerOutput<List<EventDataStoreAdvancedEventSelector>>(
            'advancedEventSelectors');
    this.arn = registerOutput<String>('arn');
    this.billingMode = registerOutput<String?>('billingMode');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.multiRegionEnabled = registerOutput<bool?>('multiRegionEnabled');
    this.name = registerOutput<String>('name');
    this.organizationEnabled = registerOutput<bool?>('organizationEnabled');
    this.region = registerOutput<String>('region');
    this.retentionPeriod = registerOutput<int?>('retentionPeriod');
    this.suspend = registerOutput<String?>('suspend');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.terminationProtectionEnabled =
        registerOutput<bool?>('terminationProtectionEnabled');
  }
}
