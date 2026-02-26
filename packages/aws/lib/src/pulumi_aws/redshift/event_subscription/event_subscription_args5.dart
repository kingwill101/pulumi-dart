// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for EventSubscription.
class EventSubscriptionArgs5 {
  /// A boolean flag to enable/disable the subscription. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? enabled;

  /// A list of event categories for a SourceType that you want to subscribe to. See https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-event-notifications.html or run `aws redshift describe-event-categories`.
  final Input<List<String>>? eventCategories;

  /// The name of the Redshift event subscription.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The event severity to be published by the notification subscription. Valid options are `INFO` or `ERROR`. Default value of `INFO`.
  final Input<String>? severity;

  /// The ARN of the SNS topic to send events to.
  final Input<String> snsTopicArn;

  /// A list of identifiers of the event sources for which events will be returned. If not specified, then all sources are included in the response. If specified, a <span pulumi-lang-nodejs="`sourceType`" pulumi-lang-dotnet="`SourceType`" pulumi-lang-go="`sourceType`" pulumi-lang-python="`source_type`" pulumi-lang-yaml="`sourceType`" pulumi-lang-java="`sourceType`">`source_type`</span> must also be specified.
  final Input<List<String>>? sourceIds;

  /// The type of source that will be generating the events. Valid options are <span pulumi-lang-nodejs="`cluster`" pulumi-lang-dotnet="`Cluster`" pulumi-lang-go="`cluster`" pulumi-lang-python="`cluster`" pulumi-lang-yaml="`cluster`" pulumi-lang-java="`cluster`">`cluster`</span>, `cluster-parameter-group`, `cluster-security-group`, `cluster-snapshot`, or `scheduled-action`. If not set, all sources will be subscribed to.
  final Input<String>? sourceType;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  EventSubscriptionArgs5({
    this.enabled,
    this.eventCategories,
    this.name,
    this.region,
    this.severity,
    required this.snsTopicArn,
    this.sourceIds,
    this.sourceType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final eventCategoriesValue = eventCategories;
    if (eventCategoriesValue != null) {
      map['eventCategories'] = eventCategoriesValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final severityValue = severity;
    if (severityValue != null) {
      map['severity'] = severityValue;
    }
    map['snsTopicArn'] = snsTopicArn;
    final sourceIdsValue = sourceIds;
    if (sourceIdsValue != null) {
      map['sourceIds'] = sourceIdsValue;
    }
    final sourceTypeValue = sourceType;
    if (sourceTypeValue != null) {
      map['sourceType'] = sourceTypeValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory EventSubscriptionArgs5.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionArgs5(
      enabled: Input.asOptionalInput<bool>(map['enabled']),
      eventCategories:
          Input.asOptionalInput<List<String>>(map['eventCategories']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      severity: Input.asOptionalInput<String>(map['severity']),
      snsTopicArn: Input.asInput<String>(map['snsTopicArn']),
      sourceIds: Input.asOptionalInput<List<String>>(map['sourceIds']),
      sourceType: Input.asOptionalInput<String>(map['sourceType']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
