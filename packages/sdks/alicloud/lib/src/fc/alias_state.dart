// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alias_routing_config.dart';

/// Input properties used for looking up and filtering Alias resources.
class AliasState {
  /// Name for the alias you are creating.
  final pulumi.Input<String>? aliasName;
  /// Description of the alias.
  final pulumi.Input<String>? description;
  /// The Function Compute alias' route configuration settings. See `routing_config` below.
  final pulumi.Input<AliasRoutingConfig>? routingConfig;
  /// The Function Compute service name.
  final pulumi.Input<String>? serviceName;
  /// The Function Compute service version for which you are creating the alias. Pattern: (LATEST|[0-9]+).
  final pulumi.Input<String>? serviceVersion;

  /// Creates a new [AliasState].
  /// [aliasName] Name for the alias you are creating.
  /// [description] Description of the alias.
  /// [routingConfig] The Function Compute alias' route configuration settings. See `routing_config` below.
  /// [serviceName] The Function Compute service name.
  /// [serviceVersion] The Function Compute service version for which you are creating the alias. Pattern: (LATEST|[0-9]+).
  AliasState({
    pulumi.Output<String>? aliasName,
    pulumi.Output<String>? description,
    pulumi.Output<AliasRoutingConfig>? routingConfig,
    pulumi.Output<String>? serviceName,
    pulumi.Output<String>? serviceVersion,
  }) :
      aliasName = pulumi.Input.asOptionalInput<String>(aliasName),
      description = pulumi.Input.asOptionalInput<String>(description),
      routingConfig = pulumi.Input.asOptionalInput<AliasRoutingConfig>(routingConfig),
      serviceName = pulumi.Input.asOptionalInput<String>(serviceName),
      serviceVersion = pulumi.Input.asOptionalInput<String>(serviceVersion);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasName': ?aliasName,
      'description': ?description,
      'routingConfig': ?pulumi.Input.mapOptionalInputValue<AliasRoutingConfig, Map<String, dynamic>>(routingConfig, (value) => value.toMap()),
      'serviceName': ?serviceName,
      'serviceVersion': ?serviceVersion,
    };
  }

  factory AliasState.fromMap(Map<String, dynamic> map) {
    return AliasState(
      aliasName: map['aliasName'] == null ? null : pulumi.Output.create<String>(map['aliasName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      routingConfig: map['routingConfig'] == null ? null : pulumi.Output.create<AliasRoutingConfig>(AliasRoutingConfig.fromMap((map['routingConfig'] as Map).cast<String, dynamic>())),
      serviceName: map['serviceName'] == null ? null : pulumi.Output.create<String>(map['serviceName'] as String),
      serviceVersion: map['serviceVersion'] == null ? null : pulumi.Output.create<String>(map['serviceVersion'] as String),
    );
  }
}

