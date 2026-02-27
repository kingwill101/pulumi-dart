// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SharedflowDeployment.
class SharedflowDeploymentArgs {
  /// The resource ID of the environment.
  final pulumi.Input<String> environment;

  /// The Apigee Organization associated with the Sharedflow
  final pulumi.Input<String> orgId;

  /// Revision of the Sharedflow to be deployed.
  ///
  ///
  /// - - -
  final pulumi.Input<String> revision;

  /// The service account represents the identity of the deployed proxy, and determines what permissions it has. The format must be {ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com.
  final pulumi.Input<String>? serviceAccount;

  /// Id of the Sharedflow to be deployed.
  final pulumi.Input<String> sharedflowId;

  SharedflowDeploymentArgs({
    required this.environment,
    required this.orgId,
    required this.revision,
    this.serviceAccount,
    required this.sharedflowId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['environment'] = environment;
    map['orgId'] = orgId;
    map['revision'] = revision;
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    map['sharedflowId'] = sharedflowId;
    return map;
  }

  factory SharedflowDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return SharedflowDeploymentArgs(
      environment: pulumi.Input.asInput<String>(map['environment']),
      orgId: pulumi.Input.asInput<String>(map['orgId']),
      revision: pulumi.Input.asInput<String>(map['revision']),
      serviceAccount:
          pulumi.Input.asOptionalInput<String>(map['serviceAccount']),
      sharedflowId: pulumi.Input.asInput<String>(map['sharedflowId']),
    );
  }
}
