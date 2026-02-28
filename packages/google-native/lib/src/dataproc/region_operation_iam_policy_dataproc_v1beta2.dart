import 'package:pulumi/pulumi.dart' as pulumi;
import 'binding_response_dataproc_v1beta2.dart';
import 'region_operation_iam_policy_dataproc_v1beta2_args.dart';

/// Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class RegionOperationIamPolicyDataprocV1beta2 extends pulumi.CustomResource {
  /// Associates a list of members to a role. Optionally, may specify a condition that determines how and when the bindings are applied. Each of the bindings must contain at least one member.
  late final pulumi.Output<List<BindingResponseDataprocV1beta2>> bindings;

  /// etag is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the etag in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An etag is returned in the response to getIamPolicy, and systems are expected to put that etag in the request to setIamPolicy to ensure that their change will be applied to the same version of the policy.Important: If you use IAM Conditions, you must include the etag field whenever you call setIamPolicy. If you omit this field, then IAM allows you to overwrite a version 3 policy with a version 1 policy, and all of the conditions in the version 3 policy are lost.
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> operationId;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> regionId;

  /// Specifies the format of the policy.Valid values are 0, 1, and 3. Requests that specify an invalid value are rejected.Any operation that affects conditional role bindings must specify version 3. This requirement applies to the following operations: Getting a policy that includes a conditional role binding Adding a conditional role binding to a policy Changing a conditional role binding in a policy Removing any role binding, with or without a condition, from a policy that includes conditionsImportant: If you use IAM Conditions, you must include the etag field whenever you call setIamPolicy. If you omit this field, then IAM allows you to overwrite a version 3 policy with a version 1 policy, and all of the conditions in the version 3 policy are lost.If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset.To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).
  late final pulumi.Output<int> version;

  /// Creates a new [RegionOperationIamPolicyDataprocV1beta2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionOperationIamPolicyDataprocV1beta2]. {@macro pulumi_dataproc_v1beta2_region_operation_iam_policy_dataproc_v1beta2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionOperationIamPolicyDataprocV1beta2(
    String name, {
    RegionOperationIamPolicyDataprocV1beta2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dataproc/v1beta2:RegionOperationIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bindings =
        registerOutput<List<BindingResponseDataprocV1beta2>>('bindings');
    this.etag = registerOutput<String>('etag');
    this.operationId = registerOutput<String>('operationId');
    this.project = registerOutput<String>('project');
    this.regionId = registerOutput<String>('regionId');
    this.version = registerOutput<int>('version');
  }
}
