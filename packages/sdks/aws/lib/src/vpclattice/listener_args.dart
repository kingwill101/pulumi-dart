// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_default_action.dart';

/// {@template pulumi_vpclattice_listener_listener_args_doc}
/// The set of arguments for Listener.
/// {@endtemplate}
/// {@macro pulumi_vpclattice_listener_listener_args_doc}
class ListenerArgs {
  /// Default action block for the default listener rule. Default action blocks are defined below.
  final pulumi.Input<ListenerDefaultAction> defaultAction;
  /// Name of the listener. A listener name must be unique within a service. Valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.
  final pulumi.Input<String>? name;
  /// Listener port. You can specify a value from 1 to 65535. If `port` is not specified and `protocol` is HTTP, the value will default to 80. If `port` is not specified and `protocol` is HTTPS, the value will default to 443.
  final pulumi.Input<int>? port;
  /// Protocol for the listener. Supported values are `HTTP`, `HTTPS` or `TLS_PASSTHROUGH`
  final pulumi.Input<String> protocol;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Amazon Resource Name (ARN) of the VPC Lattice service. You must include either the `service_arn` or `service_identifier` arguments.
  final pulumi.Input<String>? serviceArn;
  /// ID of the VPC Lattice service. You must include either the `service_arn` or `service_identifier` arguments.
  /// > **NOTE:** You must specify one of the following arguments: `service_arn` or `service_identifier`.
  final pulumi.Input<String>? serviceIdentifier;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ListenerArgs].
  /// [defaultAction] Default action block for the default listener rule. Default action blocks are defined below.
  /// [name] Name of the listener. A listener name must be unique within a service. Valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.
  /// [port] Listener port. You can specify a value from 1 to 65535. If `port` is not specified and `protocol` is HTTP, the value will default to 80. If `port` is not specified and `protocol` is HTTPS, the value will default to 443.
  /// [protocol] Protocol for the listener. Supported values are `HTTP`, `HTTPS` or `TLS_PASSTHROUGH`
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceArn] Amazon Resource Name (ARN) of the VPC Lattice service. You must include either the `service_arn` or `service_identifier` arguments.
  /// [serviceIdentifier] ID of the VPC Lattice service. You must include either the `service_arn` or `service_identifier` arguments.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ListenerArgs({
    required pulumi.Output<ListenerDefaultAction> defaultAction,
    pulumi.Output<String>? name,
    pulumi.Output<int>? port,
    required pulumi.Output<String> protocol,
    pulumi.Output<String>? region,
    pulumi.Output<String>? serviceArn,
    pulumi.Output<String>? serviceIdentifier,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      defaultAction = pulumi.Input.asInput<ListenerDefaultAction>(defaultAction),
      name = pulumi.Input.asOptionalInput<String>(name),
      port = pulumi.Input.asOptionalInput<int>(port),
      protocol = pulumi.Input.asInput<String>(protocol),
      region = pulumi.Input.asOptionalInput<String>(region),
      serviceArn = pulumi.Input.asOptionalInput<String>(serviceArn),
      serviceIdentifier = pulumi.Input.asOptionalInput<String>(serviceIdentifier),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultAction': pulumi.Input.mapInputValue<ListenerDefaultAction, Map<String, dynamic>>(defaultAction, (value) => value.toMap()),
      'name': ?name,
      'port': ?port,
      'protocol': protocol,
      'region': ?region,
      'serviceArn': ?serviceArn,
      'serviceIdentifier': ?serviceIdentifier,
      'tags': ?tags,
    };
  }

  factory ListenerArgs.fromMap(Map<String, dynamic> map) {
    return ListenerArgs(
      defaultAction: pulumi.Output.create<ListenerDefaultAction>(ListenerDefaultAction.fromMap((map['defaultAction'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      protocol: pulumi.Output.create<String>(map['protocol'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serviceArn: map['serviceArn'] == null ? null : pulumi.Output.create<String>(map['serviceArn'] as String),
      serviceIdentifier: map['serviceIdentifier'] == null ? null : pulumi.Output.create<String>(map['serviceIdentifier'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

