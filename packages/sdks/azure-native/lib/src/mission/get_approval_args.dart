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
    required pulumi.Output<String> approvalName,
    required pulumi.Output<String> resourceUri,
  }) :
      approvalName = pulumi.Input.asInput<String>(approvalName),
      resourceUri = pulumi.Input.asInput<String>(resourceUri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalName': approvalName,
      'resourceUri': resourceUri,
    };
  }

  factory GetApprovalArgs.fromMap(Map<String, dynamic> map) {
    return GetApprovalArgs(
      approvalName: pulumi.Output.create<String>(map['approvalName'] as String),
      resourceUri: pulumi.Output.create<String>(map['resourceUri'] as String),
    );
  }
}

