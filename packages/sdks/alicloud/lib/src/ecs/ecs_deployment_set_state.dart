// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EcsDeploymentSet resources.
class EcsDeploymentSetState {
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

  /// Creates a new [EcsDeploymentSetState].
  /// [deploymentSetName] The name of the deployment set. The name must be `2` to `128` characters in length and can contain letters, digits, colons (:), underscores (_), and hyphens (-). It must start with a letter and cannot start with `http://` or `https://`.
  /// [description] The description of the deployment set. The description must be `2` to `256` characters in length and cannot start with `http://` or `https://`.
  /// [domain] Field `domain` has been deprecated from provider version 1.243.0.
  /// [granularity] Field `granularity` has been deprecated from provider version 1.243.0.
  /// [onUnableToRedeployFailedInstance] The emergency solution to use in the situation where instances in the deployment set cannot be evenly distributed to different zones due to resource insufficiency after the instances failover. Valid values:
  /// [strategy] The deployment strategy. Default value: `Availability`. Valid values: `Availability`, `AvailabilityGroup`, `LowLatency`.
  EcsDeploymentSetState({
    pulumi.Output<String>? deploymentSetName,
    pulumi.Output<String>? description,
    pulumi.Output<String>? domain,
    pulumi.Output<String>? granularity,
    pulumi.Output<String>? onUnableToRedeployFailedInstance,
    pulumi.Output<String>? strategy,
  }) :
      deploymentSetName = pulumi.Input.asOptionalInput<String>(deploymentSetName),
      description = pulumi.Input.asOptionalInput<String>(description),
      domain = pulumi.Input.asOptionalInput<String>(domain),
      granularity = pulumi.Input.asOptionalInput<String>(granularity),
      onUnableToRedeployFailedInstance = pulumi.Input.asOptionalInput<String>(onUnableToRedeployFailedInstance),
      strategy = pulumi.Input.asOptionalInput<String>(strategy);

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

  factory EcsDeploymentSetState.fromMap(Map<String, dynamic> map) {
    return EcsDeploymentSetState(
      deploymentSetName: map['deploymentSetName'] == null ? null : pulumi.Output.create<String>(map['deploymentSetName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      domain: map['domain'] == null ? null : pulumi.Output.create<String>(map['domain'] as String),
      granularity: map['granularity'] == null ? null : pulumi.Output.create<String>(map['granularity'] as String),
      onUnableToRedeployFailedInstance: map['onUnableToRedeployFailedInstance'] == null ? null : pulumi.Output.create<String>(map['onUnableToRedeployFailedInstance'] as String),
      strategy: map['strategy'] == null ? null : pulumi.Output.create<String>(map['strategy'] as String),
    );
  }
}

