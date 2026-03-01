import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_budget_args.dart';
import 'get_budget_result.dart';
import 'get_cloud_connector_args.dart';
import 'get_cloud_connector_result.dart';
import 'get_connector_args.dart';
import 'get_connector_result.dart';
import 'get_cost_allocation_rule_args.dart';
import 'get_cost_allocation_rule_result.dart';
import 'get_export_args.dart';
import 'get_export_result.dart';
import 'get_markup_rule_args.dart';
import 'get_markup_rule_result.dart';
import 'get_report_args.dart';
import 'get_report_by_billing_account_args.dart';
import 'get_report_by_billing_account_result.dart';
import 'get_report_by_department_args.dart';
import 'get_report_by_department_result.dart';
import 'get_report_by_resource_group_name_args.dart';
import 'get_report_by_resource_group_name_result.dart';
import 'get_report_result.dart';
import 'get_scheduled_action_args.dart';
import 'get_scheduled_action_by_scope_args.dart';
import 'get_scheduled_action_by_scope_result.dart';
import 'get_scheduled_action_result.dart';
import 'get_setting_args.dart';
import 'get_setting_result.dart';
import 'get_tag_inheritance_setting_args.dart';
import 'get_tag_inheritance_setting_result.dart';
import 'get_view_args.dart';
import 'get_view_by_scope_args.dart';
import 'get_view_by_scope_result.dart';
import 'get_view_result.dart';

/// Gets the budget for the scope by budget name.
///
/// Uses Azure REST API version 2024-08-01.
///
/// Other available API versions: 2019-04-01-preview, 2023-04-01-preview, 2023-08-01, 2023-09-01, 2023-11-01, 2024-10-01-preview, 2025-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native costmanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_costmanagement_get_budget_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBudgetResult> getBudget(
  GetBudgetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:costmanagement:getBudget',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBudgetResult.fromMap(result);
}

/// Get a cloud connector definition
///
/// Uses Azure REST API version 2019-03-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_costmanagement_get_cloud_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCloudConnectorResult> getCloudConnector(
  GetCloudConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:costmanagement:getCloudConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudConnectorResult.fromMap(result);
}

/// Get a connector definition
///
/// Uses Azure REST API version 2018-08-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_costmanagement_get_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectorResult> getConnector(
  GetConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:costmanagement:getConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectorResult.fromMap(result);
}

/// Get a cost allocation rule by rule name and billing account or enterprise enrollment.
///
/// Uses Azure REST API version 2024-08-01.
///
/// Other available API versions: 2020-03-01-preview, 2023-08-01, 2023-09-01, 2023-11-01, 2024-10-01-preview, 2025-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native costmanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_costmanagement_get_cost_allocation_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCostAllocationRuleResult> getCostAllocationRule(
  GetCostAllocationRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:costmanagement:getCostAllocationRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCostAllocationRuleResult.fromMap(result);
}

/// The operation to get the export for the defined scope by export name.
///
/// Uses Azure REST API version 2024-08-01.
///
/// Other available API versions: 2019-01-01, 2019-09-01, 2019-10-01, 2019-11-01, 2020-06-01, 2020-12-01-preview, 2021-01-01, 2021-10-01, 2022-10-01, 2023-03-01, 2023-04-01-preview, 2023-07-01-preview, 2023-08-01, 2023-09-01, 2023-11-01, 2024-10-01-preview, 2025-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native costmanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_costmanagement_get_export_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExportResult> getExport(
  GetExportArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:costmanagement:getExport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExportResult.fromMap(result);
}

/// Get a markup rule by its rule name.
///
/// Uses Azure REST API version 2022-10-05-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_costmanagement_get_markup_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMarkupRuleResult> getMarkupRule(
  GetMarkupRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:costmanagement:getMarkupRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMarkupRuleResult.fromMap(result);
}

/// Gets the report for a subscription by report name.
///
/// Uses Azure REST API version 2018-08-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_costmanagement_get_report_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReportResult> getReport(
  GetReportArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:costmanagement:getReport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReportResult.fromMap(result);
}

/// Gets the report for a billing account by report name.
///
/// Uses Azure REST API version 2018-08-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_costmanagement_get_report_by_billing_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReportByBillingAccountResult> getReportByBillingAccount(
  GetReportByBillingAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:costmanagement:getReportByBillingAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReportByBillingAccountResult.fromMap(result);
}

/// Gets the report for a department by report name.
///
/// Uses Azure REST API version 2018-08-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_costmanagement_get_report_by_department_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReportByDepartmentResult> getReportByDepartment(
  GetReportByDepartmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:costmanagement:getReportByDepartment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReportByDepartmentResult.fromMap(result);
}

/// Gets the report for a resource group under a subscription by report name.
///
/// Uses Azure REST API version 2018-08-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_costmanagement_get_report_by_resource_group_name_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReportByResourceGroupNameResult> getReportByResourceGroupName(
  GetReportByResourceGroupNameArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:costmanagement:getReportByResourceGroupName',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReportByResourceGroupNameResult.fromMap(result);
}

/// Get the private scheduled action by name.
///
/// Uses Azure REST API version 2024-08-01.
///
/// Other available API versions: 2022-04-01-preview, 2022-06-01-preview, 2022-10-01, 2023-03-01, 2023-04-01-preview, 2023-07-01-preview, 2023-08-01, 2023-09-01, 2023-11-01, 2024-10-01-preview, 2025-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native costmanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_costmanagement_get_scheduled_action_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScheduledActionResult> getScheduledAction(
  GetScheduledActionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:costmanagement:getScheduledAction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScheduledActionResult.fromMap(result);
}

/// Get the shared scheduled action from the given scope by name.
///
/// Uses Azure REST API version 2024-08-01.
///
/// Other available API versions: 2022-04-01-preview, 2022-06-01-preview, 2022-10-01, 2023-03-01, 2023-04-01-preview, 2023-07-01-preview, 2023-08-01, 2023-09-01, 2023-11-01, 2024-10-01-preview, 2025-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native costmanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_costmanagement_get_scheduled_action_by_scope_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScheduledActionByScopeResult> getScheduledActionByScope(
  GetScheduledActionByScopeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:costmanagement:getScheduledActionByScope',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScheduledActionByScopeResult.fromMap(result);
}

/// Retrieves the current value for a specific setting.
///
/// Uses Azure REST API version 2019-11-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_costmanagement_get_setting_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSettingResult> getSetting(
  GetSettingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:costmanagement:getSetting',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSettingResult.fromMap(result);
}

/// Get the setting from the given scope by name.
///
/// Uses Azure REST API version 2024-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_costmanagement_get_tag_inheritance_setting_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTagInheritanceSettingResult> getTagInheritanceSetting(
  GetTagInheritanceSettingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:costmanagement:getTagInheritanceSetting',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagInheritanceSettingResult.fromMap(result);
}

/// Gets the view by view name.
///
/// Uses Azure REST API version 2024-08-01.
///
/// Other available API versions: 2019-04-01-preview, 2019-11-01, 2020-06-01, 2021-10-01, 2022-08-01-preview, 2022-10-01, 2022-10-01-preview, 2022-10-05-preview, 2023-03-01, 2023-04-01-preview, 2023-07-01-preview, 2023-08-01, 2023-09-01, 2023-11-01, 2024-10-01-preview, 2025-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native costmanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_costmanagement_get_view_args_doc}
/// [options] Invoke options controlling this call.
Future<GetViewResult> getView(
  GetViewArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:costmanagement:getView',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetViewResult.fromMap(result);
}

/// Gets the view for the defined scope by view name.
///
/// Uses Azure REST API version 2024-08-01.
///
/// Other available API versions: 2019-04-01-preview, 2019-11-01, 2020-06-01, 2021-10-01, 2022-08-01-preview, 2022-10-01, 2022-10-01-preview, 2022-10-05-preview, 2023-03-01, 2023-04-01-preview, 2023-07-01-preview, 2023-08-01, 2023-09-01, 2023-11-01, 2024-10-01-preview, 2025-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native costmanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_costmanagement_get_view_by_scope_args_doc}
/// [options] Invoke options controlling this call.
Future<GetViewByScopeResult> getViewByScope(
  GetViewByScopeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:costmanagement:getViewByScope',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetViewByScopeResult.fromMap(result);
}
