// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../web_cloud_run_service_iam_member_condition/web_cloud_run_service_iam_member_condition.dart';

/// The set of arguments for WebCloudRunServiceIamMember.
class WebCloudRunServiceIamMemberArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> cloudRunServiceName;

  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final Input<WebCloudRunServiceIamMemberCondition>? condition;

  /// The location of a cloud run service. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final Input<String>? location;

  /// Identities that will be granted the privilege in <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span>.
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
  final Input<String> member;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final Input<String>? project;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.iap.WebCloudRunServiceIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebCloudRunServiceIamBinding`" pulumi-lang-go="`iap.WebCloudRunServiceIamBinding`" pulumi-lang-python="`iap.WebCloudRunServiceIamBinding`" pulumi-lang-yaml="`gcp.iap.WebCloudRunServiceIamBinding`" pulumi-lang-java="`gcp.iap.WebCloudRunServiceIamBinding`">`gcp.iap.WebCloudRunServiceIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final Input<String> role;

  WebCloudRunServiceIamMemberArgs({
    required this.cloudRunServiceName,
    this.condition,
    this.location,
    required this.member,
    this.project,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudRunServiceName'] = cloudRunServiceName;
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = Input.mapOptionalInputValue<
          WebCloudRunServiceIamMemberCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['member'] = member;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['role'] = role;
    return map;
  }

  factory WebCloudRunServiceIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return WebCloudRunServiceIamMemberArgs(
      cloudRunServiceName: Input.asInput<String>(map['cloudRunServiceName']),
      condition: Input.asOptionalInput<WebCloudRunServiceIamMemberCondition>(
          map['condition']),
      location: Input.asOptionalInput<String>(map['location']),
      member: Input.asInput<String>(map['member']),
      project: Input.asOptionalInput<String>(map['project']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
