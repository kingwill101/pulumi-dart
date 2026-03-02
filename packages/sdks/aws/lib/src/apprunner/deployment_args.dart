// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_timeouts.dart';

/// {@template pulumi_apprunner_deployment_deployment_args_doc}
/// The set of arguments for Deployment.
/// {@endtemplate}
/// {@macro pulumi_apprunner_deployment_deployment_args_doc}
class DeploymentArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) of the App Runner service to start the deployment for.
  final pulumi.Input<String> serviceArn;
  final pulumi.Input<DeploymentTimeouts>? timeouts;

  /// Creates a new [DeploymentArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceArn] The Amazon Resource Name (ARN) of the App Runner service to start the deployment for.
  /// [timeouts] Optional.
  DeploymentArgs({
    this.region,
    required this.serviceArn,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'serviceArn': serviceArn,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<DeploymentTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory DeploymentArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentArgs(
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      serviceArn: (map['serviceArn'] as String).input(),
      timeouts: map['timeouts'] == null ? null : ((DeploymentTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

