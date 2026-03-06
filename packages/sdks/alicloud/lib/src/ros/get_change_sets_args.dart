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
  const GetChangeSetsArgs({
    this.changeSetName,
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.outputFile,
    required this.stackId,
    this.status,
  });

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
      changeSetName: (() { final guardedValue = map['changeSetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stackId: pulumi.Input.fromValue(map['stackId'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

