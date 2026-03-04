// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_ecs_deployment_set_ecs_deployment_set_args_doc}
/// The set of arguments for EcsDeploymentSet.
/// {@endtemplate}
/// {@macro pulumi_ecs_ecs_deployment_set_ecs_deployment_set_args_doc}
class EcsDeploymentSetArgs {
  /// The name of the deployment set. The name must be `2` to `128` characters in length and can contain letters, digits, colons (:), underscores (_), and hyphens (-). It must start with a letter and cannot start with `http://` or `https://`.
  final pulumi.Input<String>? deploymentSetName;

  /// The description of the deployment set. The description must be `2` to `256` characters in length and cannot start with `http://` or `https://`.
  final pulumi.Input<String>? description;

  /// Field `domain` has been deprecated from provider version 1.243.0.
  final pulumi.Input<String>? domain;

  /// Field `granularity` has been deprecated from provider version 1.243.0.
  final pulumi.Input<String>? granularity;

  /// The emergency solution to use in the situation where instances in the deployment set cannot be evenly distributed to different zones due to resource insufficiency after the instances failover. Valid values:
  /// - `CancelMembershipAndStart` - Removes the instances from the deployment set and starts the instances immediately after they are failed over.
  /// - `KeepStopped`- Leaves the instances in the Stopped state and starts them after resources are replenished.
  final pulumi.Input<String>? onUnableToRedeployFailedInstance;

  /// The deployment strategy. Default value: `Availability`. Valid values: `Availability`, `AvailabilityGroup`, `LowLatency`.
  final pulumi.Input<String>? strategy;

  /// Creates a new [EcsDeploymentSetArgs].
  /// [deploymentSetName] The name of the deployment set. The name must be `2` to `128` characters in length and can contain letters, digits, colons (:), underscores (_), and hyphens (-). It must start with a letter and cannot start with `http://` or `https://`.
  /// [description] The description of the deployment set. The description must be `2` to `256` characters in length and cannot start with `http://` or `https://`.
  /// [domain] Field `domain` has been deprecated from provider version 1.243.0.
  /// [granularity] Field `granularity` has been deprecated from provider version 1.243.0.
  /// [onUnableToRedeployFailedInstance] The emergency solution to use in the situation where instances in the deployment set cannot be evenly distributed to different zones due to resource insufficiency after the instances failover. Valid values:
  /// [strategy] The deployment strategy. Default value: `Availability`. Valid values: `Availability`, `AvailabilityGroup`, `LowLatency`.
  EcsDeploymentSetArgs({
    this.deploymentSetName,
    this.description,
    this.domain,
    this.granularity,
    this.onUnableToRedeployFailedInstance,
    this.strategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentSetName': ?deploymentSetName,
      'description': ?description,
      'domain': ?domain,
      'granularity': ?granularity,
      'onUnableToRedeployFailedInstance': ?onUnableToRedeployFailedInstance,
      'strategy': ?strategy,
    };
  }

  factory EcsDeploymentSetArgs.fromMap(Map<String, dynamic> map) {
    return EcsDeploymentSetArgs(
      deploymentSetName: (() {
        final guardedValue = map['deploymentSetName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domain: (() {
        final guardedValue = map['domain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      granularity: (() {
        final guardedValue = map['granularity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      onUnableToRedeployFailedInstance: (() {
        final guardedValue = map['onUnableToRedeployFailedInstance'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      strategy: (() {
        final guardedValue = map['strategy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
