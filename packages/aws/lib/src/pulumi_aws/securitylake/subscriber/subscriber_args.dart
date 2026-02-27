// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../subscriber_source/subscriber_source.dart';
import '../subscriber_subscriber_identity/subscriber_subscriber_identity.dart';
import '../subscriber_timeouts/subscriber_timeouts.dart';

/// The set of arguments for Subscriber.
class SubscriberArgs {
  /// The Amazon S3 or Lake Formation access type.
  final pulumi.Input<String>? accessType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The supported AWS services from which logs and events are collected. Security Lake supports log and event collection for natively supported AWS services. See `source` Blocks below.
  final pulumi.Input<List<SubscriberSource>> sources;

  /// The description for your subscriber account in Security Lake.
  final pulumi.Input<String>? subscriberDescription;

  /// The AWS identity used to access your data. See `subscriber_identity` Block below.
  final pulumi.Input<SubscriberSubscriberIdentity> subscriberIdentity;

  /// The name of your Security Lake subscriber account.
  final pulumi.Input<String>? subscriberName;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<SubscriberTimeouts>? timeouts;

  SubscriberArgs({
    this.accessType,
    this.region,
    required this.sources,
    this.subscriberDescription,
    required this.subscriberIdentity,
    this.subscriberName,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessTypeValue = accessType;
    if (accessTypeValue != null) {
      map['accessType'] = accessTypeValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['sources'] = pulumi.Input.mapInputValue<List<SubscriberSource>,
            List<Map<String, dynamic>>>(
        sources,
        (value) =>
            pulumi.Input.encodeList<SubscriberSource, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final subscriberDescriptionValue = subscriberDescription;
    if (subscriberDescriptionValue != null) {
      map['subscriberDescription'] = subscriberDescriptionValue;
    }
    map['subscriberIdentity'] = pulumi.Input.mapInputValue<
        SubscriberSubscriberIdentity,
        Map<String, dynamic>>(subscriberIdentity, (value) => value.toMap());
    final subscriberNameValue = subscriberName;
    if (subscriberNameValue != null) {
      map['subscriberName'] = subscriberNameValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<SubscriberTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory SubscriberArgs.fromMap(Map<String, dynamic> map) {
    return SubscriberArgs(
      accessType: pulumi.Input.asOptionalInput<String>(map['accessType']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      sources: pulumi.Input.asInput<List<SubscriberSource>>(map['sources']),
      subscriberDescription:
          pulumi.Input.asOptionalInput<String>(map['subscriberDescription']),
      subscriberIdentity: pulumi.Input.asInput<SubscriberSubscriberIdentity>(
          map['subscriberIdentity']),
      subscriberName:
          pulumi.Input.asOptionalInput<String>(map['subscriberName']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          pulumi.Input.asOptionalInput<SubscriberTimeouts>(map['timeouts']),
    );
  }
}
