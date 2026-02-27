// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ApiDeployment.
class ApiDeploymentArgs {
  /// The Apigee Environment associated with the Apigee API deployment.
  final pulumi.Input<String> environment;

  /// The Apigee Organization associated with the Apigee API deployment.
  final pulumi.Input<String> orgId;

  /// The Apigee API associated with the Apigee API deployment.
  final pulumi.Input<String> proxyId;

  /// The revision of the API proxy to be deployed.
  final pulumi.Input<String> revision;

  ApiDeploymentArgs({
    required this.environment,
    required this.orgId,
    required this.proxyId,
    required this.revision,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['environment'] = environment;
    map['orgId'] = orgId;
    map['proxyId'] = proxyId;
    map['revision'] = revision;
    return map;
  }

  factory ApiDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return ApiDeploymentArgs(
      environment: pulumi.Input.asInput<String>(map['environment']),
      orgId: pulumi.Input.asInput<String>(map['orgId']),
      proxyId: pulumi.Input.asInput<String>(map['proxyId']),
      revision: pulumi.Input.asInput<String>(map['revision']),
    );
  }
}
