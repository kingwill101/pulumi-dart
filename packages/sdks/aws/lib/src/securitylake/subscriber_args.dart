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

  /// Creates a new [SubscriberArgs].
  /// [accessType] The Amazon S3 or Lake Formation access type.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sources] The supported AWS services from which logs and events are collected. Security Lake supports log and event collection for natively supported AWS services. See `source` Blocks below.
  /// [subscriberDescription] The description for your subscriber account in Security Lake.
  /// [subscriberIdentity] The AWS identity used to access your data. See `subscriber_identity` Block below.
  /// [subscriberName] The name of your Security Lake subscriber account.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  SubscriberArgs({
    pulumi.Output<String>? accessType,
    pulumi.Output<String>? region,
    required pulumi.Output<List<SubscriberSource>> sources,
    pulumi.Output<String>? subscriberDescription,
    required pulumi.Output<SubscriberSubscriberIdentity> subscriberIdentity,
    pulumi.Output<String>? subscriberName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<SubscriberTimeouts>? timeouts,
  }) :
      accessType = pulumi.Input.asOptionalInput<String>(accessType),
      region = pulumi.Input.asOptionalInput<String>(region),
      sources = pulumi.Input.asInput<List<SubscriberSource>>(sources),
      subscriberDescription = pulumi.Input.asOptionalInput<String>(subscriberDescription),
      subscriberIdentity = pulumi.Input.asInput<SubscriberSubscriberIdentity>(subscriberIdentity),
      subscriberName = pulumi.Input.asOptionalInput<String>(subscriberName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<SubscriberTimeouts>(timeouts);

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
      accessType: map['accessType'] == null ? null : pulumi.Output.create<String>(map['accessType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sources: pulumi.Output.create<List<SubscriberSource>>(pulumi.Input.decodeList<SubscriberSource>(map['sources'], (value) => SubscriberSource.fromMap((value as Map).cast<String, dynamic>()))),
      subscriberDescription: map['subscriberDescription'] == null ? null : pulumi.Output.create<String>(map['subscriberDescription'] as String),
      subscriberIdentity: pulumi.Output.create<SubscriberSubscriberIdentity>(SubscriberSubscriberIdentity.fromMap((map['subscriberIdentity'] as Map).cast<String, dynamic>())),
      subscriberName: map['subscriberName'] == null ? null : pulumi.Output.create<String>(map['subscriberName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<SubscriberTimeouts>(SubscriberTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

