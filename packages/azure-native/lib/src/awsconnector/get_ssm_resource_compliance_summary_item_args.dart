// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_ssm_resource_compliance_summary_item_args_doc}
/// Arguments for getSsmResourceComplianceSummaryItem.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_ssm_resource_compliance_summary_item_args_doc}
class GetSsmResourceComplianceSummaryItemArgs {
  /// Name of SsmResourceComplianceSummaryItem
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetSsmResourceComplianceSummaryItemArgs].
  /// [name] Name of SsmResourceComplianceSummaryItem
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetSsmResourceComplianceSummaryItemArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetSsmResourceComplianceSummaryItemArgs.fromMap(Map<String, dynamic> map) {
    return GetSsmResourceComplianceSummaryItemArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

