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
    this.arn,
    this.description,
    this.executionRole,
    this.name,
    this.policyDetails,
    this.region,
    this.resourceSelection,
    this.resourceType,
    this.status,
    this.tags,
    this.tagsAll,
  });

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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      executionRole: map['executionRole'] == null ? null : (map['executionRole'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      policyDetails: map['policyDetails'] == null ? null : (pulumi.Input.decodeList<LifecyclePolicyPolicyDetail>(map['policyDetails'], (value) => LifecyclePolicyPolicyDetail.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      resourceSelection: map['resourceSelection'] == null ? null : (LifecyclePolicyResourceSelection.fromMap((map['resourceSelection'] as Map).cast<String, dynamic>())).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

