// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_custom_deployment_set_custom_deployment_set_args_doc}
/// The set of arguments for CustomDeploymentSet.
/// {@endtemplate}
/// {@macro pulumi_rds_custom_deployment_set_custom_deployment_set_args_doc}
class CustomDeploymentSetArgs {
  /// The name of the resource
  final pulumi.Input<String>? customDeploymentSetName;
  /// Deployment set description information. It must be 2 to 256 characters in length and cannot start with http:// or https.
  final pulumi.Input<String>? description;
  /// Set the number of groups for the deployment set group high availability policy. Value range: 1~7.
  ///
  /// Default value: 3
  ///
  /// &gt; **NOTE:**  This parameter takes effect only when 'Strategy = AvailabilityGroup.
  final pulumi.Input<int>? groupCount;
  /// After the instance in the deployment set is down and migrated, there is no emergency solution for the scattered instance inventory. Value range:
  /// - `CancelMembershipAndStart`: removes the instance from the deployment set and starts the instance immediately after the instance is down and migrated.
  /// - `KeepStopped`: The deployment set of the instance is maintained. The instance remains in the stopped state.
  ///
  /// Default value: CancelMembershipAndStart.
  final pulumi.Input<String>? onUnableToRedeployFailedInstance;
  /// Deployment strategy. Value range:
  /// - `Availability`: High Availability policy.
  /// - `AvailabilityGroup`: the high availability policy of the deployment set group.
  /// - `LowLatency`: Network low latency policy.
  ///
  /// Default value: Availability.
  final pulumi.Input<String>? strategy;

  /// Creates a new [CustomDeploymentSetArgs].
  /// [customDeploymentSetName] The name of the resource
  /// [description] Deployment set description information. It must be 2 to 256 characters in length and cannot start with http:// or https.
  /// [groupCount] Set the number of groups for the deployment set group high availability policy. Value range: 1~7.
  /// [onUnableToRedeployFailedInstance] After the instance in the deployment set is down and migrated, there is no emergency solution for the scattered instance inventory. Value range:
  /// [strategy] Deployment strategy. Value range:
  const CustomDeploymentSetArgs({
    this.customDeploymentSetName,
    this.description,
    this.groupCount,
    this.onUnableToRedeployFailedInstance,
    this.strategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDeploymentSetName': ?customDeploymentSetName,
      'description': ?description,
      'groupCount': ?groupCount,
      'onUnableToRedeployFailedInstance': ?onUnableToRedeployFailedInstance,
      'strategy': ?strategy,
    };
  }

  factory CustomDeploymentSetArgs.fromMap(Map<String, dynamic> map) {
    return CustomDeploymentSetArgs(
      customDeploymentSetName: (() { final guardedValue = map['customDeploymentSetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupCount: (() { final guardedValue = map['groupCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      onUnableToRedeployFailedInstance: (() { final guardedValue = map['onUnableToRedeployFailedInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      strategy: (() { final guardedValue = map['strategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

