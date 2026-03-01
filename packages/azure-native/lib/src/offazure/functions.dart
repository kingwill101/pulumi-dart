import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hyper_vsite_args.dart';
import 'get_hyper_vsite_result.dart';
import 'get_hyperv_cluster_controller_cluster_args.dart';
import 'get_hyperv_cluster_controller_cluster_result.dart';
import 'get_hyperv_host_controller_args.dart';
import 'get_hyperv_host_controller_result.dart';
import 'get_hyperv_sites_controller_args.dart';
import 'get_hyperv_sites_controller_result.dart';
import 'get_import_sites_controller_args.dart';
import 'get_import_sites_controller_result.dart';
import 'get_master_sites_controller_args.dart';
import 'get_master_sites_controller_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_controller_args.dart';
import 'get_private_endpoint_connection_controller_result.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_server_sites_controller_args.dart';
import 'get_server_sites_controller_result.dart';
import 'get_site_args.dart';
import 'get_site_result.dart';
import 'get_sites_controller_args.dart';
import 'get_sites_controller_result.dart';
import 'get_sql_discovery_site_data_source_controller_args.dart';
import 'get_sql_discovery_site_data_source_controller_result.dart';
import 'get_sql_sites_controller_args.dart';
import 'get_sql_sites_controller_result.dart';
import 'get_vcenter_controller_args.dart';
import 'get_vcenter_controller_result.dart';
import 'get_web_app_discovery_site_data_sources_controller_args.dart';
import 'get_web_app_discovery_site_data_sources_controller_result.dart';
import 'get_web_app_sites_controller_args.dart';
import 'get_web_app_sites_controller_result.dart';
import 'list_hyperv_sites_controller_health_summary_args.dart';
import 'list_hyperv_sites_controller_health_summary_result.dart';
import 'list_server_sites_controller_health_summary_args.dart';
import 'list_server_sites_controller_health_summary_result.dart';
import 'list_sites_controller_health_summary_args.dart';
import 'list_sites_controller_health_summary_result.dart';

/// Site REST Resource.
///
/// Uses Azure REST API version 2020-07-07.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_get_hyper_vsite_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHyperVSiteResult> getHyperVSite(
  GetHyperVSiteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:getHyperVSite',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHyperVSiteResult.fromMap(result);
}

/// Method to get a Hyper-V cluster.
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_get_hyperv_cluster_controller_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHypervClusterControllerClusterResult> getHypervClusterControllerCluster(
  GetHypervClusterControllerClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:getHypervClusterControllerCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHypervClusterControllerClusterResult.fromMap(result);
}

/// Get a HypervHost
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_get_hyperv_host_controller_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHypervHostControllerResult> getHypervHostController(
  GetHypervHostControllerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:getHypervHostController',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHypervHostControllerResult.fromMap(result);
}

/// Get a HypervSite
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_get_hyperv_sites_controller_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHypervSitesControllerResult> getHypervSitesController(
  GetHypervSitesControllerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:getHypervSitesController',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHypervSitesControllerResult.fromMap(result);
}

/// Get a ImportSite
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_get_import_sites_controller_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImportSitesControllerResult> getImportSitesController(
  GetImportSitesControllerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:getImportSitesController',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImportSitesControllerResult.fromMap(result);
}

/// Get a MasterSite
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_get_master_sites_controller_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMasterSitesControllerResult> getMasterSitesController(
  GetMasterSitesControllerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:getMasterSitesController',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMasterSitesControllerResult.fromMap(result);
}

/// REST model used to encapsulate the user visible state of a PrivateEndpoint.
///
/// Uses Azure REST API version 2020-07-07.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

/// Gets the private link resource.
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_get_private_endpoint_connection_controller_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionControllerResult> getPrivateEndpointConnectionController(
  GetPrivateEndpointConnectionControllerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:getPrivateEndpointConnectionController',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionControllerResult.fromMap(result);
}

/// Get a ServerSiteResource
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_get_server_sites_controller_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerSitesControllerResult> getServerSitesController(
  GetServerSitesControllerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:getServerSitesController',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerSitesControllerResult.fromMap(result);
}

/// Site REST Resource.
///
/// Uses Azure REST API version 2020-07-07.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_get_site_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSiteResult> getSite(
  GetSiteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:getSite',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSiteResult.fromMap(result);
}

/// Get a VmwareSite
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_get_sites_controller_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSitesControllerResult> getSitesController(
  GetSitesControllerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:getSitesController',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSitesControllerResult.fromMap(result);
}

/// Get a SqlDiscoverySiteDataSource
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_get_sql_discovery_site_data_source_controller_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlDiscoverySiteDataSourceControllerResult> getSqlDiscoverySiteDataSourceController(
  GetSqlDiscoverySiteDataSourceControllerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:getSqlDiscoverySiteDataSourceController',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlDiscoverySiteDataSourceControllerResult.fromMap(result);
}

/// Method to get a site.
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_get_sql_sites_controller_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlSitesControllerResult> getSqlSitesController(
  GetSqlSitesControllerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:getSqlSitesController',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlSitesControllerResult.fromMap(result);
}

/// Get a Vcenter
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_get_vcenter_controller_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVcenterControllerResult> getVcenterController(
  GetVcenterControllerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:getVcenterController',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVcenterControllerResult.fromMap(result);
}

/// Method to get a Web app data source in site.
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_get_web_app_discovery_site_data_sources_controller_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppDiscoverySiteDataSourcesControllerResult> getWebAppDiscoverySiteDataSourcesController(
  GetWebAppDiscoverySiteDataSourcesControllerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:getWebAppDiscoverySiteDataSourcesController',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppDiscoverySiteDataSourcesControllerResult.fromMap(result);
}

/// Method to get a site.
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_get_web_app_sites_controller_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppSitesControllerResult> getWebAppSitesController(
  GetWebAppSitesControllerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:getWebAppSitesController',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppSitesControllerResult.fromMap(result);
}

/// Method to get site health summary.
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_list_hyperv_sites_controller_health_summary_args_doc}
/// [options] Invoke options controlling this call.
Future<ListHypervSitesControllerHealthSummaryResult> listHypervSitesControllerHealthSummary(
  ListHypervSitesControllerHealthSummaryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:listHypervSitesControllerHealthSummary',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListHypervSitesControllerHealthSummaryResult.fromMap(result);
}

/// Method to get site health summary.
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_list_server_sites_controller_health_summary_args_doc}
/// [options] Invoke options controlling this call.
Future<ListServerSitesControllerHealthSummaryResult> listServerSitesControllerHealthSummary(
  ListServerSitesControllerHealthSummaryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:listServerSitesControllerHealthSummary',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListServerSitesControllerHealthSummaryResult.fromMap(result);
}

/// Method to get site health summary.
///
/// Uses Azure REST API version 2023-10-01-preview.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazure_list_sites_controller_health_summary_args_doc}
/// [options] Invoke options controlling this call.
Future<ListSitesControllerHealthSummaryResult> listSitesControllerHealthSummary(
  ListSitesControllerHealthSummaryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazure:listSitesControllerHealthSummary',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListSitesControllerHealthSummaryResult.fromMap(result);
}
