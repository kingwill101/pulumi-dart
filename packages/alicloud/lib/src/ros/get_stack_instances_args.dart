// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ros_get_stack_instances_get_stack_instances_args_doc}
/// Arguments for getStackInstances.
/// {@endtemplate}
/// {@macro pulumi_ros_get_stack_instances_get_stack_instances_args_doc}
class GetStackInstancesArgs {
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Stack Instance IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The name of the stack group.
  final pulumi.Input<String> stackGroupName;
  /// The account to which the stack instance belongs.
  final pulumi.Input<String>? stackInstanceAccountId;
  /// The region of the stack instance.
  final pulumi.Input<String>? stackInstanceRegionId;
  /// The status of the stack instance. Valid values: `CURRENT` or `OUTDATED`.
  /// * `CURRENT`: The stack corresponding to the stack instance is up to date with the stack group.
  /// * `OUTDATED`: The stack corresponding to the stack instance is not up to date with the stack group. The `OUTDATED` state has the following possible causes:
  /// * When the CreateStackInstances operation is called to create stack instances, the corresponding stacks fail to be created.
  /// * When the UpdateStackInstances or UpdateStackGroup operation is called to update stack instances, the corresponding stacks fail to be updated, or only some of the stack instances are updated.
  /// * The create or update operation is not complete.
  final pulumi.Input<String>? status;

  /// Creates a new [GetStackInstancesArgs].
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Stack Instance IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [stackGroupName] The name of the stack group.
  /// [stackInstanceAccountId] The account to which the stack instance belongs.
  /// [stackInstanceRegionId] The region of the stack instance.
  /// [status] The status of the stack instance. Valid values: `CURRENT` or `OUTDATED`.
  GetStackInstancesArgs({
    bool? enableDetails,
    List<String>? ids,
    String? outputFile,
    required String stackGroupName,
    String? stackInstanceAccountId,
    String? stackInstanceRegionId,
    String? status,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      stackGroupName = pulumi.Input.asInput<String>(stackGroupName),
      stackInstanceAccountId = pulumi.Input.asOptionalInput<String>(stackInstanceAccountId),
      stackInstanceRegionId = pulumi.Input.asOptionalInput<String>(stackInstanceRegionId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'stackGroupName': stackGroupName,
      'stackInstanceAccountId': ?stackInstanceAccountId,
      'stackInstanceRegionId': ?stackInstanceRegionId,
      'status': ?status,
    };
  }

  factory GetStackInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetStackInstancesArgs(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      stackGroupName: map['stackGroupName'] as String,
      stackInstanceAccountId: map['stackInstanceAccountId'] == null ? null : map['stackInstanceAccountId'] as String,
      stackInstanceRegionId: map['stackInstanceRegionId'] == null ? null : map['stackInstanceRegionId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

