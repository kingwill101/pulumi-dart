// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mission_get_approval_args_doc}
/// Arguments for getApproval.
/// {@endtemplate}
/// {@macro pulumi_mission_get_approval_args_doc}
class GetApprovalArgs {
  /// The name of the approvals resource.
  final pulumi.Input<String> approvalName;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [GetApprovalArgs].
  /// [approvalName] The name of the approvals resource.
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  GetApprovalArgs({
    required this.approvalName,
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalName': approvalName,
      'resourceUri': resourceUri,
    };
  }

  factory GetApprovalArgs.fromMap(Map<String, dynamic> map) {
    return GetApprovalArgs(
      approvalName: pulumi.Input.fromValue(map['approvalName'] as String),
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
    );
  }
}

