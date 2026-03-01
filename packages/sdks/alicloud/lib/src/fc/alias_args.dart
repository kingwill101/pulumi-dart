// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alias_routing_config.dart';

/// {@template pulumi_fc_alias_alias_args_doc}
/// The set of arguments for Alias.
/// {@endtemplate}
/// {@macro pulumi_fc_alias_alias_args_doc}
class AliasArgs {
  /// Name for the alias you are creating.
  final pulumi.Input<String> aliasName;
  /// Description of the alias.
  final pulumi.Input<String>? description;
  /// The Function Compute alias' route configuration settings. See `routing_config` below.
  final pulumi.Input<AliasRoutingConfig>? routingConfig;
  /// The Function Compute service name.
  final pulumi.Input<String> serviceName;
  /// The Function Compute service version for which you are creating the alias. Pattern: (LATEST|[0-9]+).
  final pulumi.Input<String> serviceVersion;

  /// Creates a new [AliasArgs].
  /// [aliasName] Name for the alias you are creating.
  /// [description] Description of the alias.
  /// [routingConfig] The Function Compute alias' route configuration settings. See `routing_config` below.
  /// [serviceName] The Function Compute service name.
  /// [serviceVersion] The Function Compute service version for which you are creating the alias. Pattern: (LATEST|[0-9]+).
  AliasArgs({
    required pulumi.Output<String> aliasName,
    pulumi.Output<String>? description,
    pulumi.Output<AliasRoutingConfig>? routingConfig,
    required pulumi.Output<String> serviceName,
    required pulumi.Output<String> serviceVersion,
  }) :
      aliasName = pulumi.Input.asInput<String>(aliasName),
      description = pulumi.Input.asOptionalInput<String>(description),
      routingConfig = pulumi.Input.asOptionalInput<AliasRoutingConfig>(routingConfig),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      serviceVersion = pulumi.Input.asInput<String>(serviceVersion);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasName': aliasName,
      'description': ?description,
      'routingConfig': ?pulumi.Input.mapOptionalInputValue<AliasRoutingConfig, Map<String, dynamic>>(routingConfig, (value) => value.toMap()),
      'serviceName': serviceName,
      'serviceVersion': serviceVersion,
    };
  }

  factory AliasArgs.fromMap(Map<String, dynamic> map) {
    return AliasArgs(
      aliasName: pulumi.Output.create<String>(map['aliasName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      routingConfig: map['routingConfig'] == null ? null : pulumi.Output.create<AliasRoutingConfig>(AliasRoutingConfig.fromMap((map['routingConfig'] as Map).cast<String, dynamic>())),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      serviceVersion: pulumi.Output.create<String>(map['serviceVersion'] as String),
    );
  }
}

