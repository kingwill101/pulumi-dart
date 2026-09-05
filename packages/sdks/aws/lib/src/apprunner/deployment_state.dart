// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_timeouts.dart';

/// Input properties used for looking up and filtering Deployment resources.
class DeploymentState {
  /// Unique ID of the operation associated with deployment.
  final pulumi.Input<String?>? operationId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the App Runner service to start the deployment for.
  final pulumi.Input<String?>? serviceArn;
  /// Current status of the App Runner service deployment.
  final pulumi.Input<String?>? status;
  final pulumi.Input<DeploymentTimeouts?>? timeouts;

  /// Creates a new [DeploymentState].
  /// [operationId] Unique ID of the operation associated with deployment.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceArn] ARN of the App Runner service to start the deployment for.
  /// [status] Current status of the App Runner service deployment.
  /// [timeouts] Optional.
  const DeploymentState({
    this.operationId,
    this.region,
    this.serviceArn,
    this.status,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationId': ?operationId,
      'region': ?region,
      'serviceArn': ?serviceArn,
      'status': ?status,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<DeploymentTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory DeploymentState.fromMap(Map<String, dynamic> map) {
    return DeploymentState(
      operationId: (() { final guardedValue = map['operationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceArn: (() { final guardedValue = map['serviceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
