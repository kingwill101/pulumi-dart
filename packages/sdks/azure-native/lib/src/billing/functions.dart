import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_associated_tenant_args.dart';
import 'get_associated_tenant_result.dart';
import 'get_billing_profile_args.dart';
import 'get_billing_profile_result.dart';
import 'get_billing_role_assignment_by_billing_account_args.dart';
import 'get_billing_role_assignment_by_billing_account_result.dart';
import 'get_billing_role_assignment_by_department_args.dart';
import 'get_billing_role_assignment_by_department_result.dart';
import 'get_billing_role_assignment_by_enrollment_account_args.dart';
import 'get_billing_role_assignment_by_enrollment_account_result.dart';
import 'get_invoice_section_args.dart';
import 'get_invoice_section_result.dart';
import 'list_billing_account_invoice_sections_by_create_subscription_permission_args.dart';
import 'list_billing_account_invoice_sections_by_create_subscription_permission_result.dart';

/// Gets an associated tenant by ID.
///
/// Uses Azure REST API version 2024-04-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_billing_get_associated_tenant_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAssociatedTenantResult> getAssociatedTenant(
  GetAssociatedTenantArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:billing:getAssociatedTenant',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAssociatedTenantResult.fromMap(result);
}

pulumi.Output<GetAssociatedTenantResult> getAssociatedTenantOutput(
  GetAssociatedTenantArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:billing:getAssociatedTenant',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAssociatedTenantResult.fromMap);
}

/// Gets a billing profile by its ID. The operation is supported for billing accounts with agreement type Microsoft Customer Agreement and Microsoft Partner Agreement.
///
/// Uses Azure REST API version 2024-04-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_billing_get_billing_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBillingProfileResult> getBillingProfile(
  GetBillingProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:billing:getBillingProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBillingProfileResult.fromMap(result);
}

pulumi.Output<GetBillingProfileResult> getBillingProfileOutput(
  GetBillingProfileArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:billing:getBillingProfile',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBillingProfileResult.fromMap);
}

/// Gets a role assignment for the caller on a billing account. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement, Microsoft Customer Agreement or Enterprise Agreement.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2019-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native billing [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_billing_get_billing_role_assignment_by_billing_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBillingRoleAssignmentByBillingAccountResult> getBillingRoleAssignmentByBillingAccount(
  GetBillingRoleAssignmentByBillingAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:billing:getBillingRoleAssignmentByBillingAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBillingRoleAssignmentByBillingAccountResult.fromMap(result);
}

pulumi.Output<GetBillingRoleAssignmentByBillingAccountResult> getBillingRoleAssignmentByBillingAccountOutput(
  GetBillingRoleAssignmentByBillingAccountArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:billing:getBillingRoleAssignmentByBillingAccount',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBillingRoleAssignmentByBillingAccountResult.fromMap);
}

/// Gets a role assignment for the caller on a department. The operation is supported only for billing accounts with agreement type Enterprise Agreement.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2019-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native billing [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_billing_get_billing_role_assignment_by_department_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBillingRoleAssignmentByDepartmentResult> getBillingRoleAssignmentByDepartment(
  GetBillingRoleAssignmentByDepartmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:billing:getBillingRoleAssignmentByDepartment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBillingRoleAssignmentByDepartmentResult.fromMap(result);
}

pulumi.Output<GetBillingRoleAssignmentByDepartmentResult> getBillingRoleAssignmentByDepartmentOutput(
  GetBillingRoleAssignmentByDepartmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:billing:getBillingRoleAssignmentByDepartment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBillingRoleAssignmentByDepartmentResult.fromMap);
}

/// Gets a role assignment for the caller on a enrollment Account. The operation is supported only for billing accounts with agreement type Enterprise Agreement.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2019-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native billing [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_billing_get_billing_role_assignment_by_enrollment_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBillingRoleAssignmentByEnrollmentAccountResult> getBillingRoleAssignmentByEnrollmentAccount(
  GetBillingRoleAssignmentByEnrollmentAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:billing:getBillingRoleAssignmentByEnrollmentAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBillingRoleAssignmentByEnrollmentAccountResult.fromMap(result);
}

pulumi.Output<GetBillingRoleAssignmentByEnrollmentAccountResult> getBillingRoleAssignmentByEnrollmentAccountOutput(
  GetBillingRoleAssignmentByEnrollmentAccountArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:billing:getBillingRoleAssignmentByEnrollmentAccount',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBillingRoleAssignmentByEnrollmentAccountResult.fromMap);
}

/// Gets an invoice section by its ID. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement.
///
/// Uses Azure REST API version 2024-04-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_billing_get_invoice_section_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInvoiceSectionResult> getInvoiceSection(
  GetInvoiceSectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:billing:getInvoiceSection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInvoiceSectionResult.fromMap(result);
}

pulumi.Output<GetInvoiceSectionResult> getInvoiceSectionOutput(
  GetInvoiceSectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:billing:getInvoiceSection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInvoiceSectionResult.fromMap);
}

/// Lists the invoice sections for which the user has permission to create Azure subscriptions. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2019-10-01-preview, 2020-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native billing [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_billing_list_billing_account_invoice_sections_by_create_subscription_permission_args_doc}
/// [options] Invoke options controlling this call.
Future<ListBillingAccountInvoiceSectionsByCreateSubscriptionPermissionResult> listBillingAccountInvoiceSectionsByCreateSubscriptionPermission(
  ListBillingAccountInvoiceSectionsByCreateSubscriptionPermissionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:billing:listBillingAccountInvoiceSectionsByCreateSubscriptionPermission',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListBillingAccountInvoiceSectionsByCreateSubscriptionPermissionResult.fromMap(result);
}

pulumi.Output<ListBillingAccountInvoiceSectionsByCreateSubscriptionPermissionResult> listBillingAccountInvoiceSectionsByCreateSubscriptionPermissionOutput(
  ListBillingAccountInvoiceSectionsByCreateSubscriptionPermissionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:billing:listBillingAccountInvoiceSectionsByCreateSubscriptionPermission',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListBillingAccountInvoiceSectionsByCreateSubscriptionPermissionResult.fromMap);
}
