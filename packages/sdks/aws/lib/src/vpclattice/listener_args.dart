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
  final pulumi.Input<String?>? name;
  /// Listener port. You can specify a value from 1 to 65535. If `port` is not specified and `protocol` is HTTP, the value will default to 80. If `port` is not specified and `protocol` is HTTPS, the value will default to 443.
  final pulumi.Input<int?>? port;
  /// Protocol for the listener. Supported values are `HTTP`, `HTTPS` or `TLS_PASSTHROUGH`
  final pulumi.Input<String> protocol;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the VPC Lattice service. You must include either the `serviceArn` or `serviceIdentifier` arguments.
  final pulumi.Input<String?>? serviceArn;
  /// ID of the VPC Lattice service. You must include either the `serviceArn` or `serviceIdentifier` arguments.
  /// &gt; **NOTE:** You must specify one of the following arguments: `serviceArn` or `serviceIdentifier`.
  final pulumi.Input<String?>? serviceIdentifier;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ListenerArgs].
  /// [defaultAction] Default action block for the default listener rule. Default action blocks are defined below.
  /// [name] Name of the listener. A listener name must be unique within a service. Valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.
  /// [port] Listener port. You can specify a value from 1 to 65535. If `port` is not specified and `protocol` is HTTP, the value will default to 80. If `port` is not specified and `protocol` is HTTPS, the value will default to 443.
  /// [protocol] Protocol for the listener. Supported values are `HTTP`, `HTTPS` or `TLS_PASSTHROUGH`
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceArn] ARN of the VPC Lattice service. You must include either the `serviceArn` or `serviceIdentifier` arguments.
  /// [serviceIdentifier] ID of the VPC Lattice service. You must include either the `serviceArn` or `serviceIdentifier` arguments.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const ListenerArgs({
    required this.defaultAction,
    this.name,
    this.port,
    required this.protocol,
    this.region,
    this.serviceArn,
    this.serviceIdentifier,
    this.tags,
  });

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
      defaultAction: pulumi.Input.fromValue(ListenerDefaultAction.fromMap((map['defaultAction']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceArn: (() { final guardedValue = map['serviceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceIdentifier: (() { final guardedValue = map['serviceIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
