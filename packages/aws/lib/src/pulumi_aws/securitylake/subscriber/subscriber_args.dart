// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../subscriber_source/subscriber_source.dart';
import '../subscriber_subscriber_identity/subscriber_subscriber_identity.dart';
import '../subscriber_timeouts/subscriber_timeouts.dart';

/// The set of arguments for Subscriber.
class SubscriberArgs {
  /// The Amazon S3 or Lake Formation access type.
  final Input<String>? accessType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The supported AWS services from which logs and events are collected. Security Lake supports log and event collection for natively supported AWS services. See <span pulumi-lang-nodejs="`source`" pulumi-lang-dotnet="`Source`" pulumi-lang-go="`source`" pulumi-lang-python="`source`" pulumi-lang-yaml="`source`" pulumi-lang-java="`source`">`source`</span> Blocks below.
  final Input<List<SubscriberSource>> sources;

  /// The description for your subscriber account in Security Lake.
  final Input<String>? subscriberDescription;

  /// The AWS identity used to access your data. See <span pulumi-lang-nodejs="`subscriberIdentity`" pulumi-lang-dotnet="`SubscriberIdentity`" pulumi-lang-go="`subscriberIdentity`" pulumi-lang-python="`subscriber_identity`" pulumi-lang-yaml="`subscriberIdentity`" pulumi-lang-java="`subscriberIdentity`">`subscriber_identity`</span> Block below.
  final Input<SubscriberSubscriberIdentity> subscriberIdentity;

  /// The name of your Security Lake subscriber account.
  final Input<String>? subscriberName;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<SubscriberTimeouts>? timeouts;

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
    map['sources'] =
        Input.mapInputValue<List<SubscriberSource>, List<Map<String, dynamic>>>(
            sources,
            (value) => Input.encodeList<SubscriberSource, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final subscriberDescriptionValue = subscriberDescription;
    if (subscriberDescriptionValue != null) {
      map['subscriberDescription'] = subscriberDescriptionValue;
    }
    map['subscriberIdentity'] =
        Input.mapInputValue<SubscriberSubscriberIdentity, Map<String, dynamic>>(
            subscriberIdentity, (value) => value.toMap());
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
      map['timeouts'] =
          Input.mapOptionalInputValue<SubscriberTimeouts, Map<String, dynamic>>(
              timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory SubscriberArgs.fromMap(Map<String, dynamic> map) {
    return SubscriberArgs(
      accessType: Input.asOptionalInput<String>(map['accessType']),
      region: Input.asOptionalInput<String>(map['region']),
      sources: Input.asInput<List<SubscriberSource>>(map['sources']),
      subscriberDescription:
          Input.asOptionalInput<String>(map['subscriberDescription']),
      subscriberIdentity: Input.asInput<SubscriberSubscriberIdentity>(
          map['subscriberIdentity']),
      subscriberName: Input.asOptionalInput<String>(map['subscriberName']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<SubscriberTimeouts>(map['timeouts']),
    );
  }
}
