// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../service_iam_member_condition/service_iam_member_condition3.dart';

/// The set of arguments for ServiceIamMember.
class ServiceIamMemberArgs3 {
  final Input<ServiceIamMemberCondition3>? condition;

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

  /// Used to find the parent resource to bind the IAM policy to
  final Input<String>? name;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.servicedirectory.ServiceIamBinding`" pulumi-lang-dotnet="`gcp.servicedirectory.ServiceIamBinding`" pulumi-lang-go="`servicedirectory.ServiceIamBinding`" pulumi-lang-python="`servicedirectory.ServiceIamBinding`" pulumi-lang-yaml="`gcp.servicedirectory.ServiceIamBinding`" pulumi-lang-java="`gcp.servicedirectory.ServiceIamBinding`">`gcp.servicedirectory.ServiceIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final Input<String> role;

  ServiceIamMemberArgs3({
    this.condition,
    required this.member,
    this.name,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = Input.mapOptionalInputValue<ServiceIamMemberCondition3,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['member'] = member;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['role'] = role;
    return map;
  }

  factory ServiceIamMemberArgs3.fromMap(Map<String, dynamic> map) {
    return ServiceIamMemberArgs3(
      condition:
          Input.asOptionalInput<ServiceIamMemberCondition3>(map['condition']),
      member: Input.asInput<String>(map['member']),
      name: Input.asOptionalInput<String>(map['name']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
