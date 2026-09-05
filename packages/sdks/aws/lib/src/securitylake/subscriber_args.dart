// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscriber_source.dart';
import 'subscriber_subscriber_identity.dart';
import 'subscriber_timeouts.dart';

/// {@template pulumi_securitylake_subscriber_subscriber_args_doc}
/// The set of arguments for Subscriber.
/// {@endtemplate}
/// {@macro pulumi_securitylake_subscriber_subscriber_args_doc}
class SubscriberArgs {
  /// The Amazon S3 or Lake Formation access type.
  final pulumi.Input<String?>? accessType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The supported AWS services from which logs and events are collected. Security Lake supports log and event collection for natively supported AWS services. See `source` Blocks below.
  final pulumi.Input<List<SubscriberSource>> sources;
  /// The description for your subscriber account in Security Lake.
  final pulumi.Input<String?>? subscriberDescription;
  /// The AWS identity used to access your data. See `subscriberIdentity` Block below.
  final pulumi.Input<SubscriberSubscriberIdentity> subscriberIdentity;
  /// The name of your Security Lake subscriber account.
  final pulumi.Input<String?>? subscriberName;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<SubscriberTimeouts?>? timeouts;

  /// Creates a new [SubscriberArgs].
  /// [accessType] The Amazon S3 or Lake Formation access type.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sources] The supported AWS services from which logs and events are collected. Security Lake supports log and event collection for natively supported AWS services. See `source` Blocks below.
  /// [subscriberDescription] The description for your subscriber account in Security Lake.
  /// [subscriberIdentity] The AWS identity used to access your data. See `subscriberIdentity` Block below.
  /// [subscriberName] The name of your Security Lake subscriber account.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const SubscriberArgs({
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
    return <String, dynamic>{
      'accessType': ?accessType,
      'region': ?region,
      'sources': pulumi.Input.mapInputValue<List<SubscriberSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<SubscriberSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subscriberDescription': ?subscriberDescription,
      'subscriberIdentity': pulumi.Input.mapInputValue<SubscriberSubscriberIdentity, Map<String, dynamic>>(subscriberIdentity, (value) => value.toMap()),
      'subscriberName': ?subscriberName,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<SubscriberTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory SubscriberArgs.fromMap(Map<String, dynamic> map) {
    return SubscriberArgs(
      accessType: (() { final guardedValue = map['accessType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sources: pulumi.Input.fromValue(pulumi.Input.decodeList<SubscriberSource>(map['sources']!, (value) => SubscriberSource.fromMap((value as Map).cast<String, dynamic>()))),
      subscriberDescription: (() { final guardedValue = map['subscriberDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriberIdentity: pulumi.Input.fromValue(SubscriberSubscriberIdentity.fromMap((map['subscriberIdentity']! as Map).cast<String, dynamic>())),
      subscriberName: (() { final guardedValue = map['subscriberName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubscriberTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
