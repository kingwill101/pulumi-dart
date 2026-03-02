// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CustomDeploymentSet resources.
class CustomDeploymentSetState {
  /// The name of the resource
  final pulumi.Input<String>? customDeploymentSetName;
  /// Deployment set description information. It must be 2 to 256 characters in length and cannot start with http:// or https.
  final pulumi.Input<String>? description;
  /// Set the number of groups for the deployment set group high availability policy. Value range: 1~7.
  ///
  /// Default value: 3
  ///
  /// > **NOTE:**  This parameter takes effect only when 'Strategy = AvailabilityGroup.
  final pulumi.Input<int>? groupCount;
  /// After the instance in the deployment set is down and migrated, there is no emergency solution for the scattered instance inventory. Value range:
  /// - `CancelMembershipAndStart`: removes the instance from the deployment set and starts the instance immediately after the instance is down and migrated.
  /// - `KeepStopped`: The deployment set of the instance is maintained. The instance remains in the stopped state.
  ///
  /// Default value: CancelMembershipAndStart.
  final pulumi.Input<String>? onUnableToRedeployFailedInstance;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// Deployment strategy. Value range:
  /// - `Availability`: High Availability policy.
  /// - `AvailabilityGroup`: the high availability policy of the deployment set group.
  /// - `LowLatency`: Network low latency policy.
  ///
  /// Default value: Availability.
  final pulumi.Input<String>? strategy;

  /// Creates a new [CustomDeploymentSetState].
  /// [customDeploymentSetName] The name of the resource
  /// [description] Deployment set description information. It must be 2 to 256 characters in length and cannot start with http:// or https.
  /// [groupCount] Set the number of groups for the deployment set group high availability policy. Value range: 1~7.
  /// [onUnableToRedeployFailedInstance] After the instance in the deployment set is down and migrated, there is no emergency solution for the scattered instance inventory. Value range:
  /// [status] The status of the resource
  /// [strategy] Deployment strategy. Value range:
  CustomDeploymentSetState({
    this.customDeploymentSetName,
    this.description,
    this.groupCount,
    this.onUnableToRedeployFailedInstance,
    this.status,
    this.strategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDeploymentSetName': ?customDeploymentSetName,
      'description': ?description,
      'groupCount': ?groupCount,
      'onUnableToRedeployFailedInstance': ?onUnableToRedeployFailedInstance,
      'status': ?status,
      'strategy': ?strategy,
    };
  }

  factory CustomDeploymentSetState.fromMap(Map<String, dynamic> map) {
    return CustomDeploymentSetState(
      customDeploymentSetName: map['customDeploymentSetName'] == null ? null : (map['customDeploymentSetName'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      groupCount: map['groupCount'] == null ? null : (map['groupCount'] as int).input(),
      onUnableToRedeployFailedInstance: map['onUnableToRedeployFailedInstance'] == null ? null : (map['onUnableToRedeployFailedInstance'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      strategy: map['strategy'] == null ? null : (map['strategy'] as String).input(),
    );
  }
}

