import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_analytics_item_args.dart';
import 'get_analytics_item_result.dart';
import 'get_component_args.dart';
import 'get_component_current_billing_feature_args.dart';
import 'get_component_current_billing_feature_result.dart';
import 'get_component_linked_storage_account_args.dart';
import 'get_component_linked_storage_account_result.dart';
import 'get_component_result.dart';
import 'get_export_configuration_args.dart';
import 'get_export_configuration_result.dart';
import 'get_favorite_args.dart';
import 'get_favorite_result.dart';
import 'get_live_token_args.dart';
import 'get_live_token_result.dart';
import 'get_my_workbook_args.dart';
import 'get_my_workbook_result.dart';
import 'get_proactive_detection_configuration_args.dart';
import 'get_proactive_detection_configuration_result.dart';
import 'get_test_result_file_args.dart';
import 'get_test_result_file_result.dart';
import 'get_web_test_args.dart';
import 'get_web_test_result.dart';
import 'get_workbook_args.dart';
import 'get_workbook_result.dart';
import 'get_workbook_template_args.dart';
import 'get_workbook_template_result.dart';
import 'list_easubscription_list_migration_date_post_result.dart';

/// Gets a specific Analytics Items defined within an Application Insights component.
///
/// Uses Azure REST API version 2015-05-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_applicationinsights_get_analytics_item_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAnalyticsItemResult> getAnalyticsItem(
  GetAnalyticsItemArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:applicationinsights:getAnalyticsItem',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAnalyticsItemResult.fromMap(result);
}

/// Returns an Application Insights component.
///
/// Uses Azure REST API version 2020-02-02.
///
/// Other available API versions: 2015-05-01, 2018-05-01-preview, 2020-02-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native applicationinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_applicationinsights_get_component_args_doc}
/// [options] Invoke options controlling this call.
Future<GetComponentResult> getComponent(
  GetComponentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:applicationinsights:getComponent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetComponentResult.fromMap(result);
}

/// Returns current billing features for an Application Insights component.
///
/// Uses Azure REST API version 2015-05-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_applicationinsights_get_component_current_billing_feature_args_doc}
/// [options] Invoke options controlling this call.
Future<GetComponentCurrentBillingFeatureResult> getComponentCurrentBillingFeature(
  GetComponentCurrentBillingFeatureArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:applicationinsights:getComponentCurrentBillingFeature',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetComponentCurrentBillingFeatureResult.fromMap(result);
}

/// Returns the current linked storage settings for an Application Insights component.
///
/// Uses Azure REST API version 2020-03-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_applicationinsights_get_component_linked_storage_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetComponentLinkedStorageAccountResult> getComponentLinkedStorageAccount(
  GetComponentLinkedStorageAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:applicationinsights:getComponentLinkedStorageAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetComponentLinkedStorageAccountResult.fromMap(result);
}

/// Get the Continuous Export configuration for this export id.
///
/// Uses Azure REST API version 2015-05-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_applicationinsights_get_export_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExportConfigurationResult> getExportConfiguration(
  GetExportConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:applicationinsights:getExportConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExportConfigurationResult.fromMap(result);
}

/// Get a single favorite by its FavoriteId, defined within an Application Insights component.
///
/// Uses Azure REST API version 2015-05-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_applicationinsights_get_favorite_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFavoriteResult> getFavorite(
  GetFavoriteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:applicationinsights:getFavorite',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFavoriteResult.fromMap(result);
}

/// **Gets an access token for live metrics stream data.**
///
/// Uses Azure REST API version 2021-10-14.
///
/// Other available API versions: 2020-06-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native applicationinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_applicationinsights_get_live_token_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLiveTokenResult> getLiveToken(
  GetLiveTokenArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:applicationinsights:getLiveToken',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLiveTokenResult.fromMap(result);
}

/// Get a single private workbook by its resourceName.
///
/// Uses Azure REST API version 2021-03-08.
///
/// Other available API versions: 2015-05-01, 2020-10-20. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native applicationinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_applicationinsights_get_my_workbook_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMyWorkbookResult> getMyWorkbook(
  GetMyWorkbookArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:applicationinsights:getMyWorkbook',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMyWorkbookResult.fromMap(result);
}

/// Get the ProactiveDetection configuration for this configuration id.
///
/// Uses Azure REST API version 2018-05-01-preview.
///
/// Other available API versions: 2015-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native applicationinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_applicationinsights_get_proactive_detection_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProactiveDetectionConfigurationResult> getProactiveDetectionConfiguration(
  GetProactiveDetectionConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:applicationinsights:getProactiveDetectionConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProactiveDetectionConfigurationResult.fromMap(result);
}

/// Returns a file test result for the matching test
///
/// Uses Azure REST API version 2020-02-10-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_applicationinsights_get_test_result_file_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTestResultFileResult> getTestResultFile(
  GetTestResultFileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:applicationinsights:getTestResultFile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTestResultFileResult.fromMap(result);
}

/// Get a specific Application Insights web test definition.
///
/// Uses Azure REST API version 2022-06-15.
///
/// Other available API versions: 2015-05-01, 2018-05-01-preview, 2020-10-05-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native applicationinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_applicationinsights_get_web_test_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebTestResult> getWebTest(
  GetWebTestArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:applicationinsights:getWebTest',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebTestResult.fromMap(result);
}

/// Get a single workbook by its resourceName.
///
/// Uses Azure REST API version 2023-06-01.
///
/// Other available API versions: 2015-05-01, 2018-06-17-preview, 2020-10-20, 2021-03-08, 2021-08-01, 2022-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native applicationinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_applicationinsights_get_workbook_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkbookResult> getWorkbook(
  GetWorkbookArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:applicationinsights:getWorkbook',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkbookResult.fromMap(result);
}

/// Get a single workbook template by its resourceName.
///
/// Uses Azure REST API version 2020-11-20.
///
/// Other available API versions: 2019-10-17-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native applicationinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_applicationinsights_get_workbook_template_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkbookTemplateResult> getWorkbookTemplate(
  GetWorkbookTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:applicationinsights:getWorkbookTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkbookTemplateResult.fromMap(result);
}

/// list date to migrate to new pricing model.
///
/// Uses Azure REST API version 2017-10-01.
/// [options] Invoke options controlling this call.
Future<ListEASubscriptionListMigrationDatePostResult> listEASubscriptionListMigrationDatePost(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:applicationinsights:listEASubscriptionListMigrationDatePost',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListEASubscriptionListMigrationDatePostResult.fromMap(result);
}
