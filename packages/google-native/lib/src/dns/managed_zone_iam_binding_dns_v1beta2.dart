import 'package:pulumi/pulumi.dart' as pulumi;
import '../accesscontextmanager/condition.dart';
import 'managed_zone_iam_binding_dns_v1beta2_args.dart';

/// Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.
class ManagedZoneIamBindingDnsV1beta2 extends pulumi.CustomResource {
  /// An IAM Condition for a given binding. See https://cloud.google.com/iam/docs/conditions-overview for additional details.
  late final pulumi.Output<Condition?> condition;

  /// The etag of the resource's IAM policy.
  late final pulumi.Output<String> etag;

  /// Identities that will be granted the privilege in role. Each entry can have one of the following values:
  ///
  /// * user:{emailid}: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * serviceAccount:{emailid}: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * group:{emailid}: An email address that represents a Google group. For example, admins@example.com.
  /// * domain:{domain}: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final pulumi.Output<List<String>> members;

  /// The name of the resource to manage IAM policies for.
  late final pulumi.Output<String> name;

  /// The project in which the resource belongs. If it is not provided, a default will be supplied.
  late final pulumi.Output<String> project;

  /// The role that should be applied. Only one `IamBinding` can be used per role.
  late final pulumi.Output<String> role;

  /// Creates a new [ManagedZoneIamBindingDnsV1beta2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedZoneIamBindingDnsV1beta2]. {@macro pulumi_dns_v1beta2_managed_zone_iam_binding_dns_v1beta2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedZoneIamBindingDnsV1beta2(
    String name, {
    ManagedZoneIamBindingDnsV1beta2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dns/v1beta2:ManagedZoneIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition = registerOutput<Condition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.members = registerOutput<List<String>>('members');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
