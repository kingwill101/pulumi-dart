// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devtest_policy_policy_args_doc}
/// The set of arguments for Policy.
/// {@endtemplate}
/// {@macro pulumi_devtest_policy_policy_args_doc}
class PolicyArgs {
  /// A description for the Policy.
  final pulumi.Input<String>? description;
  /// The Evaluation Type used for this Policy. Possible values include: 'AllowedValuesPolicy', 'MaxValuePolicy'. Changing this forces a new resource to be created.
  final pulumi.Input<String> evaluatorType;
  /// The Fact Data for this Policy.
  final pulumi.Input<String>? factData;
  /// Specifies the name of the Dev Test Lab in which the Policy should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> labName;
  /// Specifies the name of the Dev Test Policy. Possible values are `GalleryImage`, `LabPremiumVmCount`, `LabTargetCost`, `LabVmCount`, `LabVmSize`, `UserOwnedLabPremiumVmCount`, `UserOwnedLabVmCount` and `UserOwnedLabVmCountInSubnet`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Policy Set within the Dev Test Lab where this policy should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> policySetName;
  /// The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Threshold for this Policy.
  final pulumi.Input<String> threshold;

  /// Creates a new [PolicyArgs].
  /// [description] A description for the Policy.
  /// [evaluatorType] The Evaluation Type used for this Policy. Possible values include: 'AllowedValuesPolicy', 'MaxValuePolicy'. Changing this forces a new resource to be created.
  /// [factData] The Fact Data for this Policy.
  /// [labName] Specifies the name of the Dev Test Lab in which the Policy should be created. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Dev Test Policy. Possible values are `GalleryImage`, `LabPremiumVmCount`, `LabTargetCost`, `LabVmCount`, `LabVmSize`, `UserOwnedLabPremiumVmCount`, `UserOwnedLabVmCount` and `UserOwnedLabVmCountInSubnet`. Changing this forces a new resource to be created.
  /// [policySetName] Specifies the name of the Policy Set within the Dev Test Lab where this policy should be created. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [threshold] The Threshold for this Policy.
  PolicyArgs({
    String? description,
    required String evaluatorType,
    String? factData,
    required String labName,
    String? name,
    required String policySetName,
    required String resourceGroupName,
    Map<String, String>? tags,
    required String threshold,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      evaluatorType = pulumi.Input.asInput<String>(evaluatorType),
      factData = pulumi.Input.asOptionalInput<String>(factData),
      labName = pulumi.Input.asInput<String>(labName),
      name = pulumi.Input.asOptionalInput<String>(name),
      policySetName = pulumi.Input.asInput<String>(policySetName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      threshold = pulumi.Input.asInput<String>(threshold);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'evaluatorType': evaluatorType,
      'factData': ?factData,
      'labName': labName,
      'name': ?name,
      'policySetName': policySetName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'threshold': threshold,
    };
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      description: map['description'] == null ? null : map['description'] as String,
      evaluatorType: map['evaluatorType'] as String,
      factData: map['factData'] == null ? null : map['factData'] as String,
      labName: map['labName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      policySetName: map['policySetName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      threshold: map['threshold'] as String,
    );
  }
}

