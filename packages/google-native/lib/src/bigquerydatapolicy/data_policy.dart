import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_masking_policy_response.dart';
import 'data_policy_args.dart';

/// Creates a new data policy under a project with the given `dataPolicyId` (used as the display name), policy tag, and data policy type.
/// Auto-naming is currently not supported for this resource.
class DataPolicy extends pulumi.CustomResource {
  /// The data masking policy that specifies the data masking rule to use.
  late final pulumi.Output<DataMaskingPolicyResponse> dataMaskingPolicy;

  /// User-assigned (human readable) ID of the data policy that needs to be unique within a project. Used as {data_policy_id} in part of the resource name.
  late final pulumi.Output<String> dataPolicyId;

  /// Type of data policy.
  late final pulumi.Output<String> dataPolicyType;
  late final pulumi.Output<String> location;

  /// Resource name of this data policy, in the format of `projects/{project_number}/locations/{location_id}/dataPolicies/{data_policy_id}`.
  late final pulumi.Output<String> name;

  /// Policy tag resource name, in the format of `projects/{project_number}/locations/{location_id}/taxonomies/{taxonomy_id}/policyTags/{policyTag_id}`.
  late final pulumi.Output<String> policyTag;
  late final pulumi.Output<String> project;

  /// Creates a new [DataPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataPolicy]. {@macro pulumi_bigquerydatapolicy_v1_data_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataPolicy(
    String name, {
    DataPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:bigquerydatapolicy/v1:DataPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.dataMaskingPolicy = registerOutput<DataMaskingPolicyResponse>(
      'dataMaskingPolicy',
    );
    this.dataPolicyId = registerOutput<String>('dataPolicyId');
    this.dataPolicyType = registerOutput<String>('dataPolicyType');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.policyTag = registerOutput<String>('policyTag');
    this.project = registerOutput<String>('project');
  }
}
