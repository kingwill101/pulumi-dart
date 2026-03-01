// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lifecycle_policy_policy_detail.dart';
import 'lifecycle_policy_resource_selection.dart';

/// Input properties used for looking up and filtering LifecyclePolicy resources.
class LifecyclePolicyState {
  /// Amazon Resource Name (ARN) of the lifecycle policy.
  final pulumi.Input<String>? arn;
  /// description for the lifecycle policy.
  final pulumi.Input<String>? description;
  /// The Amazon Resource Name (ARN) for the IAM role you create that grants Image Builder access to run lifecycle actions. More information about this role can be found [`here`](https://docs.aws.amazon.com/imagebuilder/latest/userguide/image-lifecycle-prerequisites.html#image-lifecycle-prereq-role).
  final pulumi.Input<String>? executionRole;
  /// The name of the lifecycle policy to create.
  final pulumi.Input<String>? name;
  /// Configuration block with policy details. Detailed below.
  final pulumi.Input<List<LifecyclePolicyPolicyDetail>>? policyDetails;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Selection criteria for the resources that the lifecycle policy applies to. Detailed below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<LifecyclePolicyResourceSelection>? resourceSelection;
  /// The type of Image Builder resource that the lifecycle policy applies to. Valid values: `AMI_IMAGE` or `CONTAINER_IMAGE`.
  final pulumi.Input<String>? resourceType;
  /// The status of the lifecycle policy.
  final pulumi.Input<String>? status;
  /// Key-value map of resource tags for the Image Builder Lifecycle Policy. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [LifecyclePolicyState].
  /// [arn] Amazon Resource Name (ARN) of the lifecycle policy.
  /// [description] description for the lifecycle policy.
  /// [executionRole] The Amazon Resource Name (ARN) for the IAM role you create that grants Image Builder access to run lifecycle actions. More information about this role can be found [`here`](https://docs.aws.amazon.com/imagebuilder/latest/userguide/image-lifecycle-prerequisites.html#image-lifecycle-prereq-role).
  /// [name] The name of the lifecycle policy to create.
  /// [policyDetails] Configuration block with policy details. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceSelection] Selection criteria for the resources that the lifecycle policy applies to. Detailed below.
  /// [resourceType] The type of Image Builder resource that the lifecycle policy applies to. Valid values: `AMI_IMAGE` or `CONTAINER_IMAGE`.
  /// [status] The status of the lifecycle policy.
  /// [tags] Key-value map of resource tags for the Image Builder Lifecycle Policy. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  LifecyclePolicyState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? executionRole,
    pulumi.Output<String>? name,
    pulumi.Output<List<LifecyclePolicyPolicyDetail>>? policyDetails,
    pulumi.Output<String>? region,
    pulumi.Output<LifecyclePolicyResourceSelection>? resourceSelection,
    pulumi.Output<String>? resourceType,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      executionRole = pulumi.Input.asOptionalInput<String>(executionRole),
      name = pulumi.Input.asOptionalInput<String>(name),
      policyDetails = pulumi.Input.asOptionalInput<List<LifecyclePolicyPolicyDetail>>(policyDetails),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceSelection = pulumi.Input.asOptionalInput<LifecyclePolicyResourceSelection>(resourceSelection),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'executionRole': ?executionRole,
      'name': ?name,
      'policyDetails': ?pulumi.Input.mapOptionalInputValue<List<LifecyclePolicyPolicyDetail>, List<Map<String, dynamic>>>(policyDetails, (value) => pulumi.Input.encodeList<LifecyclePolicyPolicyDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'resourceSelection': ?pulumi.Input.mapOptionalInputValue<LifecyclePolicyResourceSelection, Map<String, dynamic>>(resourceSelection, (value) => value.toMap()),
      'resourceType': ?resourceType,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory LifecyclePolicyState.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      executionRole: map['executionRole'] == null ? null : pulumi.Output.create<String>(map['executionRole'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policyDetails: map['policyDetails'] == null ? null : pulumi.Output.create<List<LifecyclePolicyPolicyDetail>>(pulumi.Input.decodeList<LifecyclePolicyPolicyDetail>(map['policyDetails'], (value) => LifecyclePolicyPolicyDetail.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceSelection: map['resourceSelection'] == null ? null : pulumi.Output.create<LifecyclePolicyResourceSelection>(LifecyclePolicyResourceSelection.fromMap((map['resourceSelection'] as Map).cast<String, dynamic>())),
      resourceType: map['resourceType'] == null ? null : pulumi.Output.create<String>(map['resourceType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

