import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_args.dart';
import 'get_account_result.dart';
import 'get_kafka_configuration_args.dart';
import 'get_kafka_configuration_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'list_account_keys_args.dart';
import 'list_account_keys_result.dart';
import 'list_feature_account_args.dart';
import 'list_feature_account_result.dart';
import 'list_feature_subscription_args.dart';
import 'list_feature_subscription_result.dart';

/// Get an account
///
/// Uses Azure REST API version 2024-04-01-preview.
///
/// Other available API versions: 2021-12-01, 2023-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native purview [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_purview_get_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountResult> getAccount(
  GetAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:purview:getAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountResult.fromMap(result);
}

/// Gets the kafka configuration for the account
///
/// Uses Azure REST API version 2024-04-01-preview.
///
/// Other available API versions: 2021-12-01, 2023-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native purview [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_purview_get_kafka_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKafkaConfigurationResult> getKafkaConfiguration(
  GetKafkaConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:purview:getKafkaConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKafkaConfigurationResult.fromMap(result);
}

/// Get a private endpoint connection
///
/// Uses Azure REST API version 2024-04-01-preview.
///
/// Other available API versions: 2021-12-01, 2023-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native purview [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_purview_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:purview:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

/// List the authorization keys associated with this account.
///
/// Uses Azure REST API version 2024-04-01-preview.
///
/// Other available API versions: 2021-12-01, 2023-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native purview [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_purview_list_account_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListAccountKeysResult> listAccountKeys(
  ListAccountKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:purview:listAccountKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListAccountKeysResult.fromMap(result);
}

/// Gets details from a list of feature names.
///
/// Uses Azure REST API version 2024-04-01-preview.
///
/// Other available API versions: 2021-12-01, 2023-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native purview [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_purview_list_feature_account_args_doc}
/// [options] Invoke options controlling this call.
Future<ListFeatureAccountResult> listFeatureAccount(
  ListFeatureAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:purview:listFeatureAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListFeatureAccountResult.fromMap(result);
}

/// Gets details from a list of feature names.
///
/// Uses Azure REST API version 2024-04-01-preview.
///
/// Other available API versions: 2021-12-01, 2023-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native purview [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_purview_list_feature_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<ListFeatureSubscriptionResult> listFeatureSubscription(
  ListFeatureSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:purview:listFeatureSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListFeatureSubscriptionResult.fromMap(result);
}
