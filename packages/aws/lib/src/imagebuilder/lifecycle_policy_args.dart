// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lifecycle_policy_policy_detail.dart';
import 'lifecycle_policy_resource_selection.dart';

/// {@template pulumi_imagebuilder_lifecycle_policy_lifecycle_policy_args_doc}
/// The set of arguments for LifecyclePolicy.
/// {@endtemplate}
/// {@macro pulumi_imagebuilder_lifecycle_policy_lifecycle_policy_args_doc}
class LifecyclePolicyArgs {
  /// description for the lifecycle policy.
  final pulumi.Input<String>? description;

  /// The Amazon Resource Name (ARN) for the IAM role you create that grants Image Builder access to run lifecycle actions. More information about this role can be found [`here`](https://docs.aws.amazon.com/imagebuilder/latest/userguide/image-lifecycle-prerequisites.html#image-lifecycle-prereq-role).
  final pulumi.Input<String> executionRole;

  /// The name of the lifecycle policy to create.
  final pulumi.Input<String>? name;

  /// Configuration block with policy details. Detailed below.
  final pulumi.Input<List<LifecyclePolicyPolicyDetail>> policyDetails;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Selection criteria for the resources that the lifecycle policy applies to. Detailed below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<LifecyclePolicyResourceSelection> resourceSelection;

  /// The type of Image Builder resource that the lifecycle policy applies to. Valid values: `AMI_IMAGE` or `CONTAINER_IMAGE`.
  final pulumi.Input<String> resourceType;

  /// The status of the lifecycle policy.
  final pulumi.Input<String>? status;

  /// Key-value map of resource tags for the Image Builder Lifecycle Policy. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LifecyclePolicyArgs].
  /// [description] description for the lifecycle policy.
  /// [executionRole] The Amazon Resource Name (ARN) for the IAM role you create that grants Image Builder access to run lifecycle actions. More information about this role can be found [`here`](https://docs.aws.amazon.com/imagebuilder/latest/userguide/image-lifecycle-prerequisites.html#image-lifecycle-prereq-role).
  /// [name] The name of the lifecycle policy to create.
  /// [policyDetails] Configuration block with policy details. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceSelection] Selection criteria for the resources that the lifecycle policy applies to. Detailed below.
  /// [resourceType] The type of Image Builder resource that the lifecycle policy applies to. Valid values: `AMI_IMAGE` or `CONTAINER_IMAGE`.
  /// [status] The status of the lifecycle policy.
  /// [tags] Key-value map of resource tags for the Image Builder Lifecycle Policy. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  LifecyclePolicyArgs({
    String? description,
    required String executionRole,
    String? name,
    required List<LifecyclePolicyPolicyDetail> policyDetails,
    String? region,
    required LifecyclePolicyResourceSelection resourceSelection,
    required String resourceType,
    String? status,
    Map<String, String>? tags,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        executionRole = pulumi.Input.asInput<String>(executionRole),
        name = pulumi.Input.asOptionalInput<String>(name),
        policyDetails = pulumi.Input.asInput<List<LifecyclePolicyPolicyDetail>>(
            policyDetails),
        region = pulumi.Input.asOptionalInput<String>(region),
        resourceSelection =
            pulumi.Input.asInput<LifecyclePolicyResourceSelection>(
                resourceSelection),
        resourceType = pulumi.Input.asInput<String>(resourceType),
        status = pulumi.Input.asOptionalInput<String>(status),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['executionRole'] = executionRole;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['policyDetails'] = pulumi.Input.mapInputValue<
            List<LifecyclePolicyPolicyDetail>, List<Map<String, dynamic>>>(
        policyDetails,
        (value) => pulumi.Input.encodeList<LifecyclePolicyPolicyDetail,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceSelection'] = pulumi.Input.mapInputValue<
        LifecyclePolicyResourceSelection,
        Map<String, dynamic>>(resourceSelection, (value) => value.toMap());
    map['resourceType'] = resourceType;
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory LifecyclePolicyArgs.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      executionRole: map['executionRole'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      policyDetails: pulumi.Input.decodeList<LifecyclePolicyPolicyDetail>(
          map['policyDetails'],
          (value) => LifecyclePolicyPolicyDetail.fromMap(
              (value as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : map['region'] as String,
      resourceSelection: LifecyclePolicyResourceSelection.fromMap(
          (map['resourceSelection'] as Map).cast<String, dynamic>()),
      resourceType: map['resourceType'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
