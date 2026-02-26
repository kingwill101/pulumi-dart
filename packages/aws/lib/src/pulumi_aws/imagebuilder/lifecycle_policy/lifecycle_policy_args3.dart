// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../lifecycle_policy_policy_detail/lifecycle_policy_policy_detail.dart';
import '../lifecycle_policy_resource_selection/lifecycle_policy_resource_selection.dart';

/// The set of arguments for LifecyclePolicy.
class LifecyclePolicyArgs3 {
  /// description for the lifecycle policy.
  final Input<String>? description;

  /// The Amazon Resource Name (ARN) for the IAM role you create that grants Image Builder access to run lifecycle actions. More information about this role can be found [<span pulumi-lang-nodejs="`here`" pulumi-lang-dotnet="`Here`" pulumi-lang-go="`here`" pulumi-lang-python="`here`" pulumi-lang-yaml="`here`" pulumi-lang-java="`here`">`here`</span>](https://docs.aws.amazon.com/imagebuilder/latest/userguide/image-lifecycle-prerequisites.html#image-lifecycle-prereq-role).
  final Input<String> executionRole;

  /// The name of the lifecycle policy to create.
  final Input<String>? name;

  /// Configuration block with policy details. Detailed below.
  final Input<List<LifecyclePolicyPolicyDetail>> policyDetails;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Selection criteria for the resources that the lifecycle policy applies to. Detailed below.
  ///
  /// The following arguments are optional:
  final Input<LifecyclePolicyResourceSelection> resourceSelection;

  /// The type of Image Builder resource that the lifecycle policy applies to. Valid values: `AMI_IMAGE` or `CONTAINER_IMAGE`.
  final Input<String> resourceType;

  /// The status of the lifecycle policy.
  final Input<String>? status;

  /// Key-value map of resource tags for the Image Builder Lifecycle Policy. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  LifecyclePolicyArgs3({
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
    map['policyDetails'] = Input.mapInputValue<
            List<LifecyclePolicyPolicyDetail>, List<Map<String, dynamic>>>(
        policyDetails,
        (value) =>
            Input.encodeList<LifecyclePolicyPolicyDetail, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceSelection'] = Input.mapInputValue<
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

  factory LifecyclePolicyArgs3.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyArgs3(
      description: Input.asOptionalInput<String>(map['description']),
      executionRole: Input.asInput<String>(map['executionRole']),
      name: Input.asOptionalInput<String>(map['name']),
      policyDetails: Input.asInput<List<LifecyclePolicyPolicyDetail>>(
          map['policyDetails']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceSelection: Input.asInput<LifecyclePolicyResourceSelection>(
          map['resourceSelection']),
      resourceType: Input.asInput<String>(map['resourceType']),
      status: Input.asOptionalInput<String>(map['status']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
