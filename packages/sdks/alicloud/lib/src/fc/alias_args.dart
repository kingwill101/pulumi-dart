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
  const AliasArgs({
    required this.aliasName,
    this.description,
    this.routingConfig,
    required this.serviceName,
    required this.serviceVersion,
  });

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
      aliasName: pulumi.Input.fromValue(map['aliasName'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingConfig: (() { final guardedValue = map['routingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AliasRoutingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      serviceVersion: pulumi.Input.fromValue(map['serviceVersion'] as String),
    );
  }
}

