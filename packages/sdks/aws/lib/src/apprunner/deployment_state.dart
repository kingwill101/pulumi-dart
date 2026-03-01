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
    pulumi.Output<String>? operationId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? serviceArn,
    pulumi.Output<String>? status,
    pulumi.Output<DeploymentTimeouts>? timeouts,
  }) :
      operationId = pulumi.Input.asOptionalInput<String>(operationId),
      region = pulumi.Input.asOptionalInput<String>(region),
      serviceArn = pulumi.Input.asOptionalInput<String>(serviceArn),
      status = pulumi.Input.asOptionalInput<String>(status),
      timeouts = pulumi.Input.asOptionalInput<DeploymentTimeouts>(timeouts);

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
      operationId: map['operationId'] == null ? null : pulumi.Output.create<String>(map['operationId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serviceArn: map['serviceArn'] == null ? null : pulumi.Output.create<String>(map['serviceArn'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<DeploymentTimeouts>(DeploymentTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

