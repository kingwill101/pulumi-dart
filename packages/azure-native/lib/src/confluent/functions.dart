import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connector_args.dart';
import 'get_connector_result.dart';
import 'get_organization_args.dart';
import 'get_organization_cluster_by_id_args.dart';
import 'get_organization_cluster_by_id_result.dart';
import 'get_organization_environment_by_id_args.dart';
import 'get_organization_environment_by_id_result.dart';
import 'get_organization_result.dart';
import 'get_topic_args.dart';
import 'get_topic_result.dart';
import 'list_access_clusters_args.dart';
import 'list_access_clusters_result.dart';
import 'list_access_environments_args.dart';
import 'list_access_environments_result.dart';
import 'list_access_invitations_args.dart';
import 'list_access_invitations_result.dart';
import 'list_access_role_binding_name_args.dart';
import 'list_access_role_binding_name_result.dart';
import 'list_access_role_bindings_args.dart';
import 'list_access_role_bindings_result.dart';
import 'list_access_service_accounts_args.dart';
import 'list_access_service_accounts_result.dart';
import 'list_access_users_args.dart';
import 'list_access_users_result.dart';
import 'list_organization_regions_args.dart';
import 'list_organization_regions_result.dart';

/// Get confluent connector by Name
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2025-07-17-preview, 2025-08-18-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native confluent [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_confluent_get_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectorResult> getConnector(
  GetConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:confluent:getConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectorResult.fromMap(result);
}

/// Get the properties of a specific Organization resource.
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2021-12-01, 2023-08-22, 2024-02-13, 2025-07-17-preview, 2025-08-18-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native confluent [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_confluent_get_organization_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationResult> getOrganization(
  GetOrganizationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:confluent:getOrganization',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationResult.fromMap(result);
}

/// Get cluster by Id
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2025-07-17-preview, 2025-08-18-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native confluent [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_confluent_get_organization_cluster_by_id_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationClusterByIdResult> getOrganizationClusterById(
  GetOrganizationClusterByIdArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:confluent:getOrganizationClusterById',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationClusterByIdResult.fromMap(result);
}

/// Get Environment details by environment Id
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2025-07-17-preview, 2025-08-18-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native confluent [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_confluent_get_organization_environment_by_id_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationEnvironmentByIdResult> getOrganizationEnvironmentById(
  GetOrganizationEnvironmentByIdArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:confluent:getOrganizationEnvironmentById',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationEnvironmentByIdResult.fromMap(result);
}

/// Get confluent topic by Name
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2025-07-17-preview, 2025-08-18-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native confluent [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_confluent_get_topic_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTopicResult> getTopic(
  GetTopicArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:confluent:getTopic',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTopicResult.fromMap(result);
}

/// Cluster details
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2023-08-22, 2024-02-13, 2025-07-17-preview, 2025-08-18-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native confluent [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_confluent_list_access_clusters_args_doc}
/// [options] Invoke options controlling this call.
Future<ListAccessClustersResult> listAccessClusters(
  ListAccessClustersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:confluent:listAccessClusters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListAccessClustersResult.fromMap(result);
}

/// Environment list of an organization
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2023-08-22, 2024-02-13, 2025-07-17-preview, 2025-08-18-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native confluent [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_confluent_list_access_environments_args_doc}
/// [options] Invoke options controlling this call.
Future<ListAccessEnvironmentsResult> listAccessEnvironments(
  ListAccessEnvironmentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:confluent:listAccessEnvironments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListAccessEnvironmentsResult.fromMap(result);
}

/// Organization accounts invitation details
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2023-08-22, 2024-02-13, 2025-07-17-preview, 2025-08-18-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native confluent [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_confluent_list_access_invitations_args_doc}
/// [options] Invoke options controlling this call.
Future<ListAccessInvitationsResult> listAccessInvitations(
  ListAccessInvitationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:confluent:listAccessInvitations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListAccessInvitationsResult.fromMap(result);
}

/// Organization role bindings
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2024-02-13, 2025-07-17-preview, 2025-08-18-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native confluent [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_confluent_list_access_role_binding_name_args_doc}
/// [options] Invoke options controlling this call.
Future<ListAccessRoleBindingNameResult> listAccessRoleBindingName(
  ListAccessRoleBindingNameArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:confluent:listAccessRoleBindingName',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListAccessRoleBindingNameResult.fromMap(result);
}

/// Organization role bindings
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2023-08-22, 2024-02-13, 2025-07-17-preview, 2025-08-18-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native confluent [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_confluent_list_access_role_bindings_args_doc}
/// [options] Invoke options controlling this call.
Future<ListAccessRoleBindingsResult> listAccessRoleBindings(
  ListAccessRoleBindingsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:confluent:listAccessRoleBindings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListAccessRoleBindingsResult.fromMap(result);
}

/// Organization service accounts details
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2023-08-22, 2024-02-13, 2025-07-17-preview, 2025-08-18-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native confluent [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_confluent_list_access_service_accounts_args_doc}
/// [options] Invoke options controlling this call.
Future<ListAccessServiceAccountsResult> listAccessServiceAccounts(
  ListAccessServiceAccountsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:confluent:listAccessServiceAccounts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListAccessServiceAccountsResult.fromMap(result);
}

/// Organization users details
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2023-08-22, 2024-02-13, 2025-07-17-preview, 2025-08-18-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native confluent [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_confluent_list_access_users_args_doc}
/// [options] Invoke options controlling this call.
Future<ListAccessUsersResult> listAccessUsers(
  ListAccessUsersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:confluent:listAccessUsers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListAccessUsersResult.fromMap(result);
}

/// cloud provider regions available for creating Schema Registry clusters.
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2024-02-13, 2025-07-17-preview, 2025-08-18-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native confluent [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_confluent_list_organization_regions_args_doc}
/// [options] Invoke options controlling this call.
Future<ListOrganizationRegionsResult> listOrganizationRegions(
  ListOrganizationRegionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:confluent:listOrganizationRegions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListOrganizationRegionsResult.fromMap(result);
}
