// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devtestlab_policy_args_doc}
/// The set of arguments for Policy.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_policy_args_doc}
class PolicyArgs {
  /// The description of the policy.
  final pulumi.Input<String>? description;
  /// The evaluator type of the policy (i.e. AllowedValuesPolicy, MaxValuePolicy).
  final pulumi.Input<String>? evaluatorType;
  /// The fact data of the policy.
  final pulumi.Input<String>? factData;
  /// The fact name of the policy (e.g. LabVmCount, LabVmSize, MaxVmsAllowedPerLab, etc.
  final pulumi.Input<String>? factName;
  /// labs
  final pulumi.Input<String> labName;
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// The name of the Schedule
  final pulumi.Input<String>? name;
  /// policysets
  final pulumi.Input<String> policySetName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The status of the policy.
  final pulumi.Input<String>? status;
  /// The tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The threshold of the policy (i.e. a number for MaxValuePolicy, and a JSON array of values for AllowedValuesPolicy).
  final pulumi.Input<String>? threshold;

  /// Creates a new [PolicyArgs].
  /// [description] The description of the policy.
  /// [evaluatorType] The evaluator type of the policy (i.e. AllowedValuesPolicy, MaxValuePolicy).
  /// [factData] The fact data of the policy.
  /// [factName] The fact name of the policy (e.g. LabVmCount, LabVmSize, MaxVmsAllowedPerLab, etc.
  /// [labName] labs
  /// [location] The location of the resource.
  /// [name] The name of the Schedule
  /// [policySetName] policysets
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [status] The status of the policy.
  /// [tags] The tags of the resource.
  /// [threshold] The threshold of the policy (i.e. a number for MaxValuePolicy, and a JSON array of values for AllowedValuesPolicy).
  PolicyArgs({
    this.description,
    this.evaluatorType,
    this.factData,
    this.factName,
    required this.labName,
    this.location,
    this.name,
    required this.policySetName,
    required this.resourceGroupName,
    this.status,
    this.tags,
    this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'evaluatorType': ?evaluatorType,
      'factData': ?factData,
      'factName': ?factName,
      'labName': labName,
      'location': ?location,
      'name': ?name,
      'policySetName': policySetName,
      'resourceGroupName': resourceGroupName,
      'status': ?status,
      'tags': ?tags,
      'threshold': ?threshold,
    };
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      evaluatorType: map['evaluatorType'] == null ? null : (map['evaluatorType']! as String).input(),
      factData: map['factData'] == null ? null : (map['factData']! as String).input(),
      factName: map['factName'] == null ? null : (map['factName']! as String).input(),
      labName: (map['labName'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      policySetName: (map['policySetName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      threshold: map['threshold'] == null ? null : (map['threshold']! as String).input(),
    );
  }
}

