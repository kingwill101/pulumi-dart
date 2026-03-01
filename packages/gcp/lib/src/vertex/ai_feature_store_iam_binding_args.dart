// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_feature_store_iam_binding_condition.dart';

/// {@template pulumi_vertex_ai_feature_store_iam_binding_ai_feature_store_iam_binding_args_doc}
/// The set of arguments for AiFeatureStoreIamBinding.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_feature_store_iam_binding_ai_feature_store_iam_binding_args_doc}
class AiFeatureStoreIamBindingArgs {
  final pulumi.Input<AiFeatureStoreIamBindingCondition>? condition;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> featurestore;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  /// * **projectOwner:projectid**: Owners of the given project. For example, "projectOwner:my-example-project"
  /// * **projectEditor:projectid**: Editors of the given project. For example, "projectEditor:my-example-project"
  /// * **projectViewer:projectid**: Viewers of the given project. For example, "projectViewer:my-example-project"
  /// * **Federated identities**: One or more federated identities in a workload or workforce identity pool, workload running on GKE, etc. Refer to the [Principal identifiers documentation](https://cloud.google.com/iam/docs/principal-identifiers#allow) for examples of targets and valid configuration. For example, "principal://iam.googleapis.com/locations/global/workforcePools/example-contractors/subject/joe@example.com"
  final pulumi.Input<List<String>> members;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of the dataset. eg us-central1 Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? region;
  /// The role that should be applied. Only one
  /// `gcp.vertex.AiFeatureStoreIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  /// Creates a new [AiFeatureStoreIamBindingArgs].
  /// [condition] Optional.
  /// [featurestore] Used to find the parent resource to bind the IAM policy to
  /// [members] Identities that will be granted the privilege in `role`.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the dataset. eg us-central1 Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [role] The role that should be applied. Only one
  AiFeatureStoreIamBindingArgs({
    AiFeatureStoreIamBindingCondition? condition,
    required String featurestore,
    required List<String> members,
    String? project,
    String? region,
    required String role,
  }) :
      condition = pulumi.Input.asOptionalInput<AiFeatureStoreIamBindingCondition>(condition),
      featurestore = pulumi.Input.asInput<String>(featurestore),
      members = pulumi.Input.asInput<List<String>>(members),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<AiFeatureStoreIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'featurestore': featurestore,
      'members': members,
      'project': ?project,
      'region': ?region,
      'role': role,
    };
  }

  factory AiFeatureStoreIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return AiFeatureStoreIamBindingArgs(
      condition: map['condition'] == null ? null : AiFeatureStoreIamBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>()),
      featurestore: map['featurestore'] as String,
      members: (map['members'] as List).cast<String>(),
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      role: map['role'] as String,
    );
  }
}

