// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ros_get_change_sets_get_change_sets_args_doc}
/// Arguments for getChangeSets.
/// {@endtemplate}
/// {@macro pulumi_ros_get_change_sets_get_change_sets_args_doc}
class GetChangeSetsArgs {
  /// The name of the change set.  The name can be up to 255 characters in length and can contain digits, letters, hyphens (-), and underscores (_). It must start with a digit or letter.
  final pulumi.Input<String>? changeSetName;
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Change Set IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Change Set name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the stack for which you want to create the change set. ROS generates the change set by comparing the stack information with the information that you submit, such as a modified template or different inputs.
  final pulumi.Input<String> stackId;
  /// The status of the change set. Valid Value: `CREATE_COMPLETE`, `CREATE_FAILED`, `CREATE_IN_PROGRESS`, `CREATE_PENDING`, `DELETE_COMPLETE` and `DELETE_FAILED`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetChangeSetsArgs].
  /// [changeSetName] The name of the change set.  The name can be up to 255 characters in length and can contain digits, letters, hyphens (-), and underscores (_). It must start with a digit or letter.
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Change Set IDs.
  /// [nameRegex] A regex string to filter results by Change Set name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [stackId] The ID of the stack for which you want to create the change set. ROS generates the change set by comparing the stack information with the information that you submit, such as a modified template or different inputs.
  /// [status] The status of the change set. Valid Value: `CREATE_COMPLETE`, `CREATE_FAILED`, `CREATE_IN_PROGRESS`, `CREATE_PENDING`, `DELETE_COMPLETE` and `DELETE_FAILED`.
  GetChangeSetsArgs({
    String? changeSetName,
    bool? enableDetails,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    required String stackId,
    String? status,
  }) :
      changeSetName = pulumi.Input.asOptionalInput<String>(changeSetName),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      stackId = pulumi.Input.asInput<String>(stackId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeSetName': ?changeSetName,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'stackId': stackId,
      'status': ?status,
    };
  }

  factory GetChangeSetsArgs.fromMap(Map<String, dynamic> map) {
    return GetChangeSetsArgs(
      changeSetName: map['changeSetName'] == null ? null : map['changeSetName'] as String,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      stackId: map['stackId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

