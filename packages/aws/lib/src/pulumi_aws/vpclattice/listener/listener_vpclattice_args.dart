// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../listener_default_action/listener_default_action_vpclattice.dart';

/// The set of arguments for Listener.
class ListenerVpclatticeArgs {
  /// Default action block for the default listener rule. Default action blocks are defined below.
  final pulumi.Input<ListenerDefaultActionVpclattice> defaultAction;

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

  ListenerVpclatticeArgs({
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
    final map = <String, dynamic>{};
    map['defaultAction'] = pulumi.Input.mapInputValue<
        ListenerDefaultActionVpclattice,
        Map<String, dynamic>>(defaultAction, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    map['protocol'] = protocol;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final serviceArnValue = serviceArn;
    if (serviceArnValue != null) {
      map['serviceArn'] = serviceArnValue;
    }
    final serviceIdentifierValue = serviceIdentifier;
    if (serviceIdentifierValue != null) {
      map['serviceIdentifier'] = serviceIdentifierValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ListenerVpclatticeArgs.fromMap(Map<String, dynamic> map) {
    return ListenerVpclatticeArgs(
      defaultAction: pulumi.Input.asInput<ListenerDefaultActionVpclattice>(
          map['defaultAction']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      port: pulumi.Input.asOptionalInput<int>(map['port']),
      protocol: pulumi.Input.asInput<String>(map['protocol']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      serviceArn: pulumi.Input.asOptionalInput<String>(map['serviceArn']),
      serviceIdentifier:
          pulumi.Input.asOptionalInput<String>(map['serviceIdentifier']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
