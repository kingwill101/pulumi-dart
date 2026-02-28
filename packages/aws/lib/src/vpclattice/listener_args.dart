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
    required ListenerDefaultAction defaultAction,
    String? name,
    int? port,
    required String protocol,
    String? region,
    String? serviceArn,
    String? serviceIdentifier,
    Map<String, String>? tags,
  })  : defaultAction =
            pulumi.Input.asInput<ListenerDefaultAction>(defaultAction),
        name = pulumi.Input.asOptionalInput<String>(name),
        port = pulumi.Input.asOptionalInput<int>(port),
        protocol = pulumi.Input.asInput<String>(protocol),
        region = pulumi.Input.asOptionalInput<String>(region),
        serviceArn = pulumi.Input.asOptionalInput<String>(serviceArn),
        serviceIdentifier =
            pulumi.Input.asOptionalInput<String>(serviceIdentifier),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultAction'] =
        pulumi.Input.mapInputValue<ListenerDefaultAction, Map<String, dynamic>>(
            defaultAction, (value) => value.toMap());
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

  factory ListenerArgs.fromMap(Map<String, dynamic> map) {
    return ListenerArgs(
      defaultAction: ListenerDefaultAction.fromMap(
          (map['defaultAction'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      protocol: map['protocol'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      serviceArn:
          map['serviceArn'] == null ? null : map['serviceArn'] as String,
      serviceIdentifier: map['serviceIdentifier'] == null
          ? null
          : map['serviceIdentifier'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
