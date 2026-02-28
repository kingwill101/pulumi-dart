// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_backend_service_iam_binding_condition.dart';

/// {@template pulumi_iap_web_backend_service_iam_binding_web_backend_service_iam_binding_args_doc}
/// The set of arguments for WebBackendServiceIamBinding.
/// {@endtemplate}
/// {@macro pulumi_iap_web_backend_service_iam_binding_web_backend_service_iam_binding_args_doc}
class WebBackendServiceIamBindingArgs {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final pulumi.Input<WebBackendServiceIamBindingCondition>? condition;

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

  /// The role that should be applied. Only one
  /// `gcp.iap.WebBackendServiceIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> webBackendService;

  /// Creates a new [WebBackendServiceIamBindingArgs].
  /// [condition] An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// [members] Identities that will be granted the privilege in `role`.
  /// [project] The ID of the project in which the resource belongs.
  /// [role] The role that should be applied. Only one
  /// [webBackendService] Used to find the parent resource to bind the IAM policy to
  WebBackendServiceIamBindingArgs({
    WebBackendServiceIamBindingCondition? condition,
    required List<String> members,
    String? project,
    required String role,
    required String webBackendService,
  })  : condition =
            pulumi.Input.asOptionalInput<WebBackendServiceIamBindingCondition>(
                condition),
        members = pulumi.Input.asInput<List<String>>(members),
        project = pulumi.Input.asOptionalInput<String>(project),
        role = pulumi.Input.asInput<String>(role),
        webBackendService = pulumi.Input.asInput<String>(webBackendService);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          WebBackendServiceIamBindingCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['members'] = members;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['role'] = role;
    map['webBackendService'] = webBackendService;
    return map;
  }

  factory WebBackendServiceIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return WebBackendServiceIamBindingArgs(
      condition: map['condition'] == null
          ? null
          : WebBackendServiceIamBindingCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>()),
      members: (map['members'] as List).cast<String>(),
      project: map['project'] == null ? null : map['project'] as String,
      role: map['role'] as String,
      webBackendService: map['webBackendService'] as String,
    );
  }
}
