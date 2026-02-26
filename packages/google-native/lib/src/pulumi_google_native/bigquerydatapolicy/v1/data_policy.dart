import 'package:pulumi/pulumi.dart';
import 'data_masking_policy_response.dart';
import 'data_policy_args.dart';

/// Creates a new data policy under a project with the given `dataPolicyId` (used as the display name), policy tag, and data policy type.
/// Auto-naming is currently not supported for this resource.
class DataPolicy extends CustomResource {
  /// The data masking policy that specifies the data masking rule to use.
  late final Output<DataMaskingPolicyResponse> dataMaskingPolicy;

  /// User-assigned (human readable) ID of the data policy that needs to be unique within a project. Used as {data_policy_id} in part of the resource name.
  late final Output<String> dataPolicyId;

  /// Type of data policy.
  late final Output<String> dataPolicyType;
  late final Output<String> location;

  /// Resource name of this data policy, in the format of `projects/{project_number}/locations/{location_id}/dataPolicies/{data_policy_id}`.
  late final Output<String> name;

  /// Policy tag resource name, in the format of `projects/{project_number}/locations/{location_id}/taxonomies/{taxonomy_id}/policyTags/{policyTag_id}`.
  late final Output<String> policyTag;
  late final Output<String> project;

  DataPolicy(
    String name, {
    DataPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:bigquerydatapolicy/v1:DataPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.dataMaskingPolicy =
        registerOutput<DataMaskingPolicyResponse>('dataMaskingPolicy');
    this.dataPolicyId = registerOutput<String>('dataPolicyId');
    this.dataPolicyType = registerOutput<String>('dataPolicyType');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.policyTag = registerOutput<String>('policyTag');
    this.project = registerOutput<String>('project');
  }
}
