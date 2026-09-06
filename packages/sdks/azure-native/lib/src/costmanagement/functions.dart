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

pulumi.Output<GetBudgetResult> getBudgetOutput(
  GetBudgetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:costmanagement:getBudget',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBudgetResult.fromMap);
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

pulumi.Output<GetCloudConnectorResult> getCloudConnectorOutput(
  GetCloudConnectorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:costmanagement:getCloudConnector',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCloudConnectorResult.fromMap);
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

pulumi.Output<GetConnectorResult> getConnectorOutput(
  GetConnectorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:costmanagement:getConnector',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConnectorResult.fromMap);
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

pulumi.Output<GetCostAllocationRuleResult> getCostAllocationRuleOutput(
  GetCostAllocationRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:costmanagement:getCostAllocationRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCostAllocationRuleResult.fromMap);
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

pulumi.Output<GetExportResult> getExportOutput(
  GetExportArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:costmanagement:getExport',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetExportResult.fromMap);
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

pulumi.Output<GetMarkupRuleResult> getMarkupRuleOutput(
  GetMarkupRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:costmanagement:getMarkupRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMarkupRuleResult.fromMap);
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

pulumi.Output<GetReportResult> getReportOutput(
  GetReportArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:costmanagement:getReport',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetReportResult.fromMap);
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

pulumi.Output<GetReportByBillingAccountResult> getReportByBillingAccountOutput(
  GetReportByBillingAccountArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:costmanagement:getReportByBillingAccount',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetReportByBillingAccountResult.fromMap);
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

pulumi.Output<GetReportByDepartmentResult> getReportByDepartmentOutput(
  GetReportByDepartmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:costmanagement:getReportByDepartment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetReportByDepartmentResult.fromMap);
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

pulumi.Output<GetReportByResourceGroupNameResult> getReportByResourceGroupNameOutput(
  GetReportByResourceGroupNameArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:costmanagement:getReportByResourceGroupName',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetReportByResourceGroupNameResult.fromMap);
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

pulumi.Output<GetScheduledActionResult> getScheduledActionOutput(
  GetScheduledActionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:costmanagement:getScheduledAction',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetScheduledActionResult.fromMap);
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

pulumi.Output<GetScheduledActionByScopeResult> getScheduledActionByScopeOutput(
  GetScheduledActionByScopeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:costmanagement:getScheduledActionByScope',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetScheduledActionByScopeResult.fromMap);
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

pulumi.Output<GetSettingResult> getSettingOutput(
  GetSettingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:costmanagement:getSetting',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSettingResult.fromMap);
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

pulumi.Output<GetTagInheritanceSettingResult> getTagInheritanceSettingOutput(
  GetTagInheritanceSettingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:costmanagement:getTagInheritanceSetting',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTagInheritanceSettingResult.fromMap);
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

pulumi.Output<GetViewResult> getViewOutput(
  GetViewArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:costmanagement:getView',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetViewResult.fromMap);
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

pulumi.Output<GetViewByScopeResult> getViewByScopeOutput(
  GetViewByScopeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:costmanagement:getViewByScope',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetViewByScopeResult.fromMap);
}
