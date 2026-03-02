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
    this.aliasName,
    this.description,
    this.routingConfig,
    this.serviceName,
    this.serviceVersion,
  });

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
      aliasName: map['aliasName'] == null ? null : (map['aliasName'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      routingConfig: map['routingConfig'] == null ? null : (AliasRoutingConfig.fromMap((map['routingConfig'] as Map).cast<String, dynamic>())).input(),
      serviceName: map['serviceName'] == null ? null : (map['serviceName'] as String).input(),
      serviceVersion: map['serviceVersion'] == null ? null : (map['serviceVersion'] as String).input(),
    );
  }
}

