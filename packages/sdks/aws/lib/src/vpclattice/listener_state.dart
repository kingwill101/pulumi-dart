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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? createdAt,
    pulumi.Output<ListenerDefaultAction>? defaultAction,
    pulumi.Output<String>? lastUpdatedAt,
    pulumi.Output<String>? listenerId,
    pulumi.Output<String>? name,
    pulumi.Output<int>? port,
    pulumi.Output<String>? protocol,
    pulumi.Output<String>? region,
    pulumi.Output<String>? serviceArn,
    pulumi.Output<String>? serviceIdentifier,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      defaultAction = pulumi.Input.asOptionalInput<ListenerDefaultAction>(defaultAction),
      lastUpdatedAt = pulumi.Input.asOptionalInput<String>(lastUpdatedAt),
      listenerId = pulumi.Input.asOptionalInput<String>(listenerId),
      name = pulumi.Input.asOptionalInput<String>(name),
      port = pulumi.Input.asOptionalInput<int>(port),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      region = pulumi.Input.asOptionalInput<String>(region),
      serviceArn = pulumi.Input.asOptionalInput<String>(serviceArn),
      serviceIdentifier = pulumi.Input.asOptionalInput<String>(serviceIdentifier),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      defaultAction: map['defaultAction'] == null ? null : pulumi.Output.create<ListenerDefaultAction>(ListenerDefaultAction.fromMap((map['defaultAction'] as Map).cast<String, dynamic>())),
      lastUpdatedAt: map['lastUpdatedAt'] == null ? null : pulumi.Output.create<String>(map['lastUpdatedAt'] as String),
      listenerId: map['listenerId'] == null ? null : pulumi.Output.create<String>(map['listenerId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serviceArn: map['serviceArn'] == null ? null : pulumi.Output.create<String>(map['serviceArn'] as String),
      serviceIdentifier: map['serviceIdentifier'] == null ? null : pulumi.Output.create<String>(map['serviceIdentifier'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

