// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../deployment_timeouts/deployment_timeouts.dart';

/// The set of arguments for Deployment.
class DeploymentApprunnerArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The Amazon Resource Name (ARN) of the App Runner service to start the deployment for.
  final pulumi.Input<String> serviceArn;
  final pulumi.Input<DeploymentTimeouts>? timeouts;

  DeploymentApprunnerArgs({
    this.region,
    required this.serviceArn,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['serviceArn'] = serviceArn;
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<DeploymentTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DeploymentApprunnerArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentApprunnerArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      serviceArn: pulumi.Input.asInput<String>(map['serviceArn']),
      timeouts:
          pulumi.Input.asOptionalInput<DeploymentTimeouts>(map['timeouts']),
    );
  }
}
