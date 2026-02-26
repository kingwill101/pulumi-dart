// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../iammember_condition/iammember_condition3.dart';

/// The set of arguments for IAMMember.
class IAMMemberArgs3 {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final Input<IAMMemberCondition3>? condition;

  /// Identities that will be granted the privilege in <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span>.<span pulumi-lang-nodejs=" gcp.projects.IAMBinding " pulumi-lang-dotnet=" gcp.projects.IAMBinding " pulumi-lang-go=" projects.IAMBinding " pulumi-lang-python=" projects.IAMBinding " pulumi-lang-yaml=" gcp.projects.IAMBinding " pulumi-lang-java=" gcp.projects.IAMBinding "> gcp.projects.IAMBinding </span>expects <span pulumi-lang-nodejs="`members`" pulumi-lang-dotnet="`Members`" pulumi-lang-go="`members`" pulumi-lang-python="`members`" pulumi-lang-yaml="`members`" pulumi-lang-java="`members`">`members`</span> field while<span pulumi-lang-nodejs=" gcp.projects.IAMMember " pulumi-lang-dotnet=" gcp.projects.IAMMember " pulumi-lang-go=" projects.IAMMember " pulumi-lang-python=" projects.IAMMember " pulumi-lang-yaml=" gcp.projects.IAMMember " pulumi-lang-java=" gcp.projects.IAMMember "> gcp.projects.IAMMember </span>expects <span pulumi-lang-nodejs="`member`" pulumi-lang-dotnet="`Member`" pulumi-lang-go="`member`" pulumi-lang-python="`member`" pulumi-lang-yaml="`member`" pulumi-lang-java="`member`">`member`</span> field.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final Input<String> member;

  /// The project id of the target project. This is not
  /// inferred from the provider.
  final Input<String> project;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.projects.IAMBinding`" pulumi-lang-dotnet="`gcp.projects.IAMBinding`" pulumi-lang-go="`projects.IAMBinding`" pulumi-lang-python="`projects.IAMBinding`" pulumi-lang-yaml="`gcp.projects.IAMBinding`" pulumi-lang-java="`gcp.projects.IAMBinding`">`gcp.projects.IAMBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final Input<String> role;

  IAMMemberArgs3({
    this.condition,
    required this.member,
    required this.project,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = Input.mapOptionalInputValue<IAMMemberCondition3,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['member'] = member;
    map['project'] = project;
    map['role'] = role;
    return map;
  }

  factory IAMMemberArgs3.fromMap(Map<String, dynamic> map) {
    return IAMMemberArgs3(
      condition: Input.asOptionalInput<IAMMemberCondition3>(map['condition']),
      member: Input.asInput<String>(map['member']),
      project: Input.asInput<String>(map['project']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
