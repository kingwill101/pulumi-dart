import 'package:pulumi/pulumi.dart' as pulumi;
import '../accesscontextmanager/condition.dart';
import 'job_iam_member_run_v2_args.dart';

/// Sets the IAM Access control policy for the specified Job. Overwrites any existing policy.
class JobIamMemberRunV2 extends pulumi.CustomResource {
  /// An IAM Condition for a given binding. See https://cloud.google.com/iam/docs/conditions-overview for additional details.
  late final pulumi.Output<Condition?> condition;

  /// The etag of the resource's IAM policy.
  late final pulumi.Output<String> etag;

  /// Identity that will be granted the privilege in role. The entry can have one of the following values:
  ///
  /// * user:{emailid}: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * serviceAccount:{emailid}: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * group:{emailid}: An email address that represents a Google group. For example, admins@example.com.
  /// * domain:{domain}: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final pulumi.Output<String> member;

  /// The name of the resource to manage IAM policies for.
  late final pulumi.Output<String> name;

  /// The project in which the resource belongs. If it is not provided, a default will be supplied.
  late final pulumi.Output<String> project;

  /// The role that should be applied.
  late final pulumi.Output<String> role;

  /// Creates a new [JobIamMemberRunV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JobIamMemberRunV2]. {@macro pulumi_run_v2_job_iam_member_run_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JobIamMemberRunV2(
    String name, {
    JobIamMemberRunV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:run/v2:JobIamMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition = registerOutput<Condition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
