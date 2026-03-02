// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ros_get_stacks_get_stacks_args_doc}
/// Arguments for getStacks.
/// {@endtemplate}
/// {@macro pulumi_ros_get_stacks_get_stacks_args_doc}
class GetStacksArgs {
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Stack IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Stack name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// ParentStackId.
  final pulumi.Input<String>? parentStackId;
  /// The show nested stack.
  final pulumi.Input<bool>? showNestedStack;
  /// StackName.
  final pulumi.Input<String>? stackName;
  /// The status of Stack. Valid Values: `CREATE_COMPLETE`, `CREATE_FAILED`, `CREATE_IN_PROGRESS`, `DELETE_COMPLETE`, `DELETE_FAILED`, `DELETE_IN_PROGRESS`, `ROLLBACK_COMPLETE`, `ROLLBACK_FAILED`, `ROLLBACK_IN_PROGRESS`.
  final pulumi.Input<String>? status;
  /// Query the instance bound to the tag. The format of the incoming value is `json` string, including `TagKey` and `TagValue`. `TagKey` cannot be null, and `TagValue` can be empty. Format example `{"key1":"value1"}`.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetStacksArgs].
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Stack IDs.
  /// [nameRegex] A regex string to filter results by Stack name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [parentStackId] ParentStackId.
  /// [showNestedStack] The show nested stack.
  /// [stackName] StackName.
  /// [status] The status of Stack. Valid Values: `CREATE_COMPLETE`, `CREATE_FAILED`, `CREATE_IN_PROGRESS`, `DELETE_COMPLETE`, `DELETE_FAILED`, `DELETE_IN_PROGRESS`, `ROLLBACK_COMPLETE`, `ROLLBACK_FAILED`, `ROLLBACK_IN_PROGRESS`.
  /// [tags] Query the instance bound to the tag. The format of the incoming value is `json` string, including `TagKey` and `TagValue`. `TagKey` cannot be null, and `TagValue` can be empty. Format example `{"key1":"value1"}`.
  GetStacksArgs({
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.parentStackId,
    this.showNestedStack,
    this.stackName,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'parentStackId': ?parentStackId,
      'showNestedStack': ?showNestedStack,
      'stackName': ?stackName,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetStacksArgs.fromMap(Map<String, dynamic> map) {
    return GetStacksArgs(
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails']! as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      parentStackId: map['parentStackId'] == null ? null : (map['parentStackId']! as String).input(),
      showNestedStack: map['showNestedStack'] == null ? null : (map['showNestedStack']! as bool).input(),
      stackName: map['stackName'] == null ? null : (map['stackName']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

