// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_timeouts.dart';

/// Input properties used for looking up and filtering Deployment resources.
class DeploymentState {
  /// The unique ID of the operation associated with deployment.
  final pulumi.Input<String>? operationId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) of the App Runner service to start the deployment for.
  final pulumi.Input<String>? serviceArn;
  /// The current status of the App Runner service deployment.
  final pulumi.Input<String>? status;
  final pulumi.Input<DeploymentTimeouts>? timeouts;

  /// Creates a new [DeploymentState].
  /// [operationId] The unique ID of the operation associated with deployment.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceArn] The Amazon Resource Name (ARN) of the App Runner service to start the deployment for.
  /// [status] The current status of the App Runner service deployment.
  /// [timeouts] Optional.
  DeploymentState({
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
      operationId: map['operationId'] == null ? null : (map['operationId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      serviceArn: map['serviceArn'] == null ? null : (map['serviceArn'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      timeouts: map['timeouts'] == null ? null : (DeploymentTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

