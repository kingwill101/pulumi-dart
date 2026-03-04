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
    this.description,
    required this.executionRole,
    this.name,
    required this.policyDetails,
    this.region,
    required this.resourceSelection,
    required this.resourceType,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'executionRole': executionRole,
      'name': ?name,
      'policyDetails':
          pulumi.Input.mapInputValue<
            List<LifecyclePolicyPolicyDetail>,
            List<Map<String, dynamic>>
          >(
            policyDetails,
            (value) =>
                pulumi.Input.encodeList<
                  LifecyclePolicyPolicyDetail,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'region': ?region,
      'resourceSelection':
          pulumi.Input.mapInputValue<
            LifecyclePolicyResourceSelection,
            Map<String, dynamic>
          >(resourceSelection, (value) => value.toMap()),
      'resourceType': resourceType,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory LifecyclePolicyArgs.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      executionRole: pulumi.Input.fromValue(map['executionRole'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyDetails: pulumi.Input.fromValue(
        pulumi.Input.decodeList<LifecyclePolicyPolicyDetail>(
          map['policyDetails']!,
          (value) => LifecyclePolicyPolicyDetail.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceSelection: pulumi.Input.fromValue(
        LifecyclePolicyResourceSelection.fromMap(
          (map['resourceSelection']! as Map).cast<String, dynamic>(),
        ),
      ),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
