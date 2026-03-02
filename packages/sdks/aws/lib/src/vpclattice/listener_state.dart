// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_default_action.dart';

/// Input properties used for looking up and filtering Listener resources.
class ListenerState {
  /// ARN of the listener.
  final pulumi.Input<String>? arn;
  /// Date and time that the listener was created, specified in ISO-8601 format.
  final pulumi.Input<String>? createdAt;
  /// Default action block for the default listener rule. Default action blocks are defined below.
  final pulumi.Input<ListenerDefaultAction>? defaultAction;
  final pulumi.Input<String>? lastUpdatedAt;
  /// Standalone ID of the listener, e.g. `listener-0a1b2c3d4e5f6g`.
  final pulumi.Input<String>? listenerId;
  /// Name of the listener. A listener name must be unique within a service. Valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.
  final pulumi.Input<String>? name;
  /// Listener port. You can specify a value from 1 to 65535. If `port` is not specified and `protocol` is HTTP, the value will default to 80. If `port` is not specified and `protocol` is HTTPS, the value will default to 443.
  final pulumi.Input<int>? port;
  /// Protocol for the listener. Supported values are `HTTP`, `HTTPS` or `TLS_PASSTHROUGH`
  final pulumi.Input<String>? protocol;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Amazon Resource Name (ARN) of the VPC Lattice service. You must include either the `service_arn` or `service_identifier` arguments.
  final pulumi.Input<String>? serviceArn;
  /// ID of the VPC Lattice service. You must include either the `service_arn` or `service_identifier` arguments.
  /// > **NOTE:** You must specify one of the following arguments: `service_arn` or `service_identifier`.
  final pulumi.Input<String>? serviceIdentifier;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ListenerState].
  /// [arn] ARN of the listener.
  /// [createdAt] Date and time that the listener was created, specified in ISO-8601 format.
  /// [defaultAction] Default action block for the default listener rule. Default action blocks are defined below.
  /// [lastUpdatedAt] Optional.
  /// [listenerId] Standalone ID of the listener, e.g. `listener-0a1b2c3d4e5f6g`.
  /// [name] Name of the listener. A listener name must be unique within a service. Valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.
  /// [port] Listener port. You can specify a value from 1 to 65535. If `port` is not specified and `protocol` is HTTP, the value will default to 80. If `port` is not specified and `protocol` is HTTPS, the value will default to 443.
  /// [protocol] Protocol for the listener. Supported values are `HTTP`, `HTTPS` or `TLS_PASSTHROUGH`
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceArn] Amazon Resource Name (ARN) of the VPC Lattice service. You must include either the `service_arn` or `service_identifier` arguments.
  /// [serviceIdentifier] ID of the VPC Lattice service. You must include either the `service_arn` or `service_identifier` arguments.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  ListenerState({
    this.arn,
    this.createdAt,
    this.defaultAction,
    this.lastUpdatedAt,
    this.listenerId,
    this.name,
    this.port,
    this.protocol,
    this.region,
    this.serviceArn,
    this.serviceIdentifier,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdAt': ?createdAt,
      'defaultAction': ?pulumi.Input.mapOptionalInputValue<ListenerDefaultAction, Map<String, dynamic>>(defaultAction, (value) => value.toMap()),
      'lastUpdatedAt': ?lastUpdatedAt,
      'listenerId': ?listenerId,
      'name': ?name,
      'port': ?port,
      'protocol': ?protocol,
      'region': ?region,
      'serviceArn': ?serviceArn,
      'serviceIdentifier': ?serviceIdentifier,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ListenerState.fromMap(Map<String, dynamic> map) {
    return ListenerState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      createdAt: map['createdAt'] == null ? null : ((map['createdAt'] as String).input()).input(),
      defaultAction: map['defaultAction'] == null ? null : ((ListenerDefaultAction.fromMap((map['defaultAction']! as Map).cast<String, dynamic>())).input()).input(),
      lastUpdatedAt: map['lastUpdatedAt'] == null ? null : ((map['lastUpdatedAt'] as String).input()).input(),
      listenerId: map['listenerId'] == null ? null : ((map['listenerId'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      port: map['port'] == null ? null : ((map['port'] as int).input()).input(),
      protocol: map['protocol'] == null ? null : ((map['protocol'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      serviceArn: map['serviceArn'] == null ? null : ((map['serviceArn'] as String).input()).input(),
      serviceIdentifier: map['serviceIdentifier'] == null ? null : ((map['serviceIdentifier'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

