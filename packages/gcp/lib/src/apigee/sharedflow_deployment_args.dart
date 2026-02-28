// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_sharedflow_deployment_sharedflow_deployment_args_doc}
/// The set of arguments for SharedflowDeployment.
/// {@endtemplate}
/// {@macro pulumi_apigee_sharedflow_deployment_sharedflow_deployment_args_doc}
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

  /// Creates a new [SharedflowDeploymentArgs].
  /// [environment] The resource ID of the environment.
  /// [orgId] The Apigee Organization associated with the Sharedflow
  /// [revision] Revision of the Sharedflow to be deployed.
  /// [serviceAccount] The service account represents the identity of the deployed proxy, and determines what permissions it has. The format must be {ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com.
  /// [sharedflowId] Id of the Sharedflow to be deployed.
  SharedflowDeploymentArgs({
    required String environment,
    required String orgId,
    required String revision,
    String? serviceAccount,
    required String sharedflowId,
  }) :
      environment = pulumi.Input.asInput<String>(environment),
      orgId = pulumi.Input.asInput<String>(orgId),
      revision = pulumi.Input.asInput<String>(revision),
      serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
      sharedflowId = pulumi.Input.asInput<String>(sharedflowId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environment': environment,
      'orgId': orgId,
      'revision': revision,
      'serviceAccount': ?serviceAccount,
      'sharedflowId': sharedflowId,
    };
  }

  factory SharedflowDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return SharedflowDeploymentArgs(
      environment: map['environment'] as String,
      orgId: map['orgId'] as String,
      revision: map['revision'] as String,
      serviceAccount: map['serviceAccount'] == null ? null : map['serviceAccount'] as String,
      sharedflowId: map['sharedflowId'] as String,
    );
  }
}

