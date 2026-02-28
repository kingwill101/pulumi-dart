import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_conversation_args.dart';
import 'get_conversation_discoveryengine_v1beta_args.dart';
import 'get_conversation_discoveryengine_v1beta_result.dart';
import 'get_conversation_result.dart';
import 'get_data_store_args.dart';
import 'get_data_store_result.dart';
import 'get_document_args.dart';
import 'get_document_discoveryengine_v1beta_args.dart';
import 'get_document_discoveryengine_v1beta_result.dart';
import 'get_document_result.dart';
import 'get_engine_args.dart';
import 'get_engine_result.dart';
import 'get_schema_args.dart';
import 'get_schema_discoveryengine_v1beta_args.dart';
import 'get_schema_discoveryengine_v1beta_result.dart';
import 'get_schema_result.dart';

/// Gets a Conversation.
/// [args] Arguments passed to this invoke. {@macro pulumi_discoveryengine_v1alpha_get_conversation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConversationResult> getConversation(
  GetConversationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:discoveryengine/v1alpha:getConversation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConversationResult.fromMap(result);
}

/// Gets a DataStore.
/// [args] Arguments passed to this invoke. {@macro pulumi_discoveryengine_v1alpha_get_data_store_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataStoreResult> getDataStore(
  GetDataStoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:discoveryengine/v1alpha:getDataStore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataStoreResult.fromMap(result);
}

/// Gets a Document.
/// [args] Arguments passed to this invoke. {@macro pulumi_discoveryengine_v1alpha_get_document_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDocumentResult> getDocument(
  GetDocumentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:discoveryengine/v1alpha:getDocument',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDocumentResult.fromMap(result);
}

/// Gets a Engine.
/// [args] Arguments passed to this invoke. {@macro pulumi_discoveryengine_v1alpha_get_engine_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEngineResult> getEngine(
  GetEngineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:discoveryengine/v1alpha:getEngine',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEngineResult.fromMap(result);
}

/// Gets a Schema.
/// [args] Arguments passed to this invoke. {@macro pulumi_discoveryengine_v1alpha_get_schema_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSchemaResult> getSchema(
  GetSchemaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:discoveryengine/v1alpha:getSchema',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSchemaResult.fromMap(result);
}

/// Gets a Conversation.
/// [args] Arguments passed to this invoke. {@macro pulumi_discoveryengine_v1beta_get_conversation_discoveryengine_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConversationDiscoveryengineV1betaResult>
    getConversationDiscoveryengineV1beta(
  GetConversationDiscoveryengineV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:discoveryengine/v1beta:getConversation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConversationDiscoveryengineV1betaResult.fromMap(result);
}

/// Gets a Document.
/// [args] Arguments passed to this invoke. {@macro pulumi_discoveryengine_v1beta_get_document_discoveryengine_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDocumentDiscoveryengineV1betaResult> getDocumentDiscoveryengineV1beta(
  GetDocumentDiscoveryengineV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:discoveryengine/v1beta:getDocument',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDocumentDiscoveryengineV1betaResult.fromMap(result);
}

/// Gets a Schema.
/// [args] Arguments passed to this invoke. {@macro pulumi_discoveryengine_v1beta_get_schema_discoveryengine_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSchemaDiscoveryengineV1betaResult> getSchemaDiscoveryengineV1beta(
  GetSchemaDiscoveryengineV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:discoveryengine/v1beta:getSchema',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSchemaDiscoveryengineV1betaResult.fromMap(result);
}
