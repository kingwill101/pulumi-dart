// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for SharedflowDeployment.
class SharedflowDeploymentArgs {
  /// The resource ID of the environment.
  final Input<String> environment;

  /// The Apigee Organization associated with the Sharedflow
  final Input<String> orgId;

  /// Revision of the Sharedflow to be deployed.
  ///
  ///
  /// - - -
  final Input<String> revision;

  /// The service account represents the identity of the deployed proxy, and determines what permissions it has. The format must be {ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com.
  final Input<String>? serviceAccount;

  /// Id of the Sharedflow to be deployed.
  final Input<String> sharedflowId;

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
      environment: Input.asInput<String>(map['environment']),
      orgId: Input.asInput<String>(map['orgId']),
      revision: Input.asInput<String>(map['revision']),
      serviceAccount: Input.asOptionalInput<String>(map['serviceAccount']),
      sharedflowId: Input.asInput<String>(map['sharedflowId']),
    );
  }
}
