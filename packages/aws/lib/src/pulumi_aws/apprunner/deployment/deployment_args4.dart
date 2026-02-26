// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../deployment_timeouts/deployment_timeouts.dart';

/// The set of arguments for Deployment.
class DeploymentArgs4 {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Amazon Resource Name (ARN) of the App Runner service to start the deployment for.
  final Input<String> serviceArn;
  final Input<DeploymentTimeouts>? timeouts;

  DeploymentArgs4({
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
      map['timeouts'] =
          Input.mapOptionalInputValue<DeploymentTimeouts, Map<String, dynamic>>(
              timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DeploymentArgs4.fromMap(Map<String, dynamic> map) {
    return DeploymentArgs4(
      region: Input.asOptionalInput<String>(map['region']),
      serviceArn: Input.asInput<String>(map['serviceArn']),
      timeouts: Input.asOptionalInput<DeploymentTimeouts>(map['timeouts']),
    );
  }
}
