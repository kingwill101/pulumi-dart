// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datalakeanalytics_compute_policy_args_doc}
/// The set of arguments for ComputePolicy.
/// {@endtemplate}
/// {@macro pulumi_datalakeanalytics_compute_policy_args_doc}
class ComputePolicyArgs {
  /// The name of the Data Lake Analytics account.
  final pulumi.Input<String> accountName;
  /// The name of the compute policy to create or update.
  final pulumi.Input<String>? computePolicyName;
  /// The maximum degree of parallelism per job this user can use to submit jobs. This property, the min priority per job property, or both must be passed.
  final pulumi.Input<int>? maxDegreeOfParallelismPerJob;
  /// The minimum priority per job this user can use to submit jobs. This property, the max degree of parallelism per job property, or both must be passed.
  final pulumi.Input<int>? minPriorityPerJob;
  /// The AAD object identifier for the entity to create a policy for.
  final pulumi.Input<String> objectId;
  /// The type of AAD object the object identifier refers to.
  final pulumi.Input<String> objectType;
  /// The name of the Azure resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ComputePolicyArgs].
  /// [accountName] The name of the Data Lake Analytics account.
  /// [computePolicyName] The name of the compute policy to create or update.
  /// [maxDegreeOfParallelismPerJob] The maximum degree of parallelism per job this user can use to submit jobs. This property, the min priority per job property, or both must be passed.
  /// [minPriorityPerJob] The minimum priority per job this user can use to submit jobs. This property, the max degree of parallelism per job property, or both must be passed.
  /// [objectId] The AAD object identifier for the entity to create a policy for.
  /// [objectType] The type of AAD object the object identifier refers to.
  /// [resourceGroupName] The name of the Azure resource group.
  ComputePolicyArgs({
    required String accountName,
    String? computePolicyName,
    int? maxDegreeOfParallelismPerJob,
    int? minPriorityPerJob,
    required String objectId,
    required String objectType,
    required String resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      computePolicyName = pulumi.Input.asOptionalInput<String>(computePolicyName),
      maxDegreeOfParallelismPerJob = pulumi.Input.asOptionalInput<int>(maxDegreeOfParallelismPerJob),
      minPriorityPerJob = pulumi.Input.asOptionalInput<int>(minPriorityPerJob),
      objectId = pulumi.Input.asInput<String>(objectId),
      objectType = pulumi.Input.asInput<String>(objectType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'computePolicyName': ?computePolicyName,
      'maxDegreeOfParallelismPerJob': ?maxDegreeOfParallelismPerJob,
      'minPriorityPerJob': ?minPriorityPerJob,
      'objectId': objectId,
      'objectType': objectType,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ComputePolicyArgs.fromMap(Map<String, dynamic> map) {
    return ComputePolicyArgs(
      accountName: map['accountName'] as String,
      computePolicyName: map['computePolicyName'] == null ? null : map['computePolicyName'] as String,
      maxDegreeOfParallelismPerJob: map['maxDegreeOfParallelismPerJob'] == null ? null : map['maxDegreeOfParallelismPerJob'] as int,
      minPriorityPerJob: map['minPriorityPerJob'] == null ? null : map['minPriorityPerJob'] as int,
      objectId: map['objectId'] as String,
      objectType: map['objectType'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

