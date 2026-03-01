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
    bool? enableDetails,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    String? parentStackId,
    bool? showNestedStack,
    String? stackName,
    String? status,
    Map<String, String>? tags,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      parentStackId = pulumi.Input.asOptionalInput<String>(parentStackId),
      showNestedStack = pulumi.Input.asOptionalInput<bool>(showNestedStack),
      stackName = pulumi.Input.asOptionalInput<String>(stackName),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      parentStackId: map['parentStackId'] == null ? null : map['parentStackId'] as String,
      showNestedStack: map['showNestedStack'] == null ? null : map['showNestedStack'] as bool,
      stackName: map['stackName'] == null ? null : map['stackName'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

