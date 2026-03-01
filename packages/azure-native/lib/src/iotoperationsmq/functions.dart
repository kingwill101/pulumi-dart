import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_broker_args.dart';
import 'get_broker_authentication_args.dart';
import 'get_broker_authentication_result.dart';
import 'get_broker_authorization_args.dart';
import 'get_broker_authorization_result.dart';
import 'get_broker_listener_args.dart';
import 'get_broker_listener_result.dart';
import 'get_broker_result.dart';
import 'get_data_lake_connector_args.dart';
import 'get_data_lake_connector_result.dart';
import 'get_data_lake_connector_topic_map_args.dart';
import 'get_data_lake_connector_topic_map_result.dart';
import 'get_diagnostic_service_args.dart';
import 'get_diagnostic_service_result.dart';
import 'get_kafka_connector_args.dart';
import 'get_kafka_connector_result.dart';
import 'get_kafka_connector_topic_map_args.dart';
import 'get_kafka_connector_topic_map_result.dart';
import 'get_mq_args.dart';
import 'get_mq_result.dart';
import 'get_mqtt_bridge_connector_args.dart';
import 'get_mqtt_bridge_connector_result.dart';
import 'get_mqtt_bridge_topic_map_args.dart';
import 'get_mqtt_bridge_topic_map_result.dart';

/// Get a BrokerResource
///
/// Uses Azure REST API version 2023-10-04-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotoperationsmq_get_broker_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBrokerResult> getBroker(
  GetBrokerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotoperationsmq:getBroker',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBrokerResult.fromMap(result);
}

/// Get a BrokerAuthenticationResource
///
/// Uses Azure REST API version 2023-10-04-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotoperationsmq_get_broker_authentication_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBrokerAuthenticationResult> getBrokerAuthentication(
  GetBrokerAuthenticationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotoperationsmq:getBrokerAuthentication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBrokerAuthenticationResult.fromMap(result);
}

/// Get a BrokerAuthorizationResource
///
/// Uses Azure REST API version 2023-10-04-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotoperationsmq_get_broker_authorization_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBrokerAuthorizationResult> getBrokerAuthorization(
  GetBrokerAuthorizationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotoperationsmq:getBrokerAuthorization',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBrokerAuthorizationResult.fromMap(result);
}

/// Get a BrokerListenerResource
///
/// Uses Azure REST API version 2023-10-04-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotoperationsmq_get_broker_listener_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBrokerListenerResult> getBrokerListener(
  GetBrokerListenerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotoperationsmq:getBrokerListener',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBrokerListenerResult.fromMap(result);
}

/// Get a DataLakeConnectorResource
///
/// Uses Azure REST API version 2023-10-04-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotoperationsmq_get_data_lake_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataLakeConnectorResult> getDataLakeConnector(
  GetDataLakeConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotoperationsmq:getDataLakeConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataLakeConnectorResult.fromMap(result);
}

/// Get a DataLakeTopicMapResource
///
/// Uses Azure REST API version 2023-10-04-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotoperationsmq_get_data_lake_connector_topic_map_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataLakeConnectorTopicMapResult> getDataLakeConnectorTopicMap(
  GetDataLakeConnectorTopicMapArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotoperationsmq:getDataLakeConnectorTopicMap',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataLakeConnectorTopicMapResult.fromMap(result);
}

/// Get a DiagnosticServiceResource
///
/// Uses Azure REST API version 2023-10-04-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotoperationsmq_get_diagnostic_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiagnosticServiceResult> getDiagnosticService(
  GetDiagnosticServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotoperationsmq:getDiagnosticService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiagnosticServiceResult.fromMap(result);
}

/// Get a KafkaConnectorResource
///
/// Uses Azure REST API version 2023-10-04-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotoperationsmq_get_kafka_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKafkaConnectorResult> getKafkaConnector(
  GetKafkaConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotoperationsmq:getKafkaConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKafkaConnectorResult.fromMap(result);
}

/// Get a KafkaTopicMapResource
///
/// Uses Azure REST API version 2023-10-04-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotoperationsmq_get_kafka_connector_topic_map_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKafkaConnectorTopicMapResult> getKafkaConnectorTopicMap(
  GetKafkaConnectorTopicMapArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotoperationsmq:getKafkaConnectorTopicMap',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKafkaConnectorTopicMapResult.fromMap(result);
}

/// Get a MqResource
///
/// Uses Azure REST API version 2023-10-04-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotoperationsmq_get_mq_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMqResult> getMq(
  GetMqArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotoperationsmq:getMq',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMqResult.fromMap(result);
}

/// Get a MqttBridgeConnectorResource
///
/// Uses Azure REST API version 2023-10-04-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotoperationsmq_get_mqtt_bridge_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMqttBridgeConnectorResult> getMqttBridgeConnector(
  GetMqttBridgeConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotoperationsmq:getMqttBridgeConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMqttBridgeConnectorResult.fromMap(result);
}

/// Get a MqttBridgeTopicMapResource
///
/// Uses Azure REST API version 2023-10-04-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotoperationsmq_get_mqtt_bridge_topic_map_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMqttBridgeTopicMapResult> getMqttBridgeTopicMap(
  GetMqttBridgeTopicMapArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotoperationsmq:getMqttBridgeTopicMap',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMqttBridgeTopicMapResult.fromMap(result);
}
