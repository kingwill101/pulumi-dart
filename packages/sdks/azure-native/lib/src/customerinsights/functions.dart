import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connector_args.dart';
import 'get_connector_mapping_args.dart';
import 'get_connector_mapping_result.dart';
import 'get_connector_result.dart';
import 'get_hub_args.dart';
import 'get_hub_result.dart';
import 'get_image_upload_url_for_data_args.dart';
import 'get_image_upload_url_for_data_result.dart';
import 'get_image_upload_url_for_entity_type_args.dart';
import 'get_image_upload_url_for_entity_type_result.dart';
import 'get_kpi_args.dart';
import 'get_kpi_result.dart';
import 'get_link_args.dart';
import 'get_link_result.dart';
import 'get_prediction_args.dart';
import 'get_prediction_model_status_args.dart';
import 'get_prediction_model_status_result.dart';
import 'get_prediction_result.dart';
import 'get_prediction_training_results_args.dart';
import 'get_prediction_training_results_result.dart';
import 'get_profile_args.dart';
import 'get_profile_result.dart';
import 'get_relationship_args.dart';
import 'get_relationship_link_args.dart';
import 'get_relationship_link_result.dart';
import 'get_relationship_result.dart';
import 'get_role_assignment_args.dart';
import 'get_role_assignment_result.dart';
import 'get_view_args.dart';
import 'get_view_result.dart';

/// Gets a connector in the hub.
///
/// Uses Azure REST API version 2017-04-26.
/// [args] Arguments passed to this invoke. {@macro pulumi_customerinsights_get_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectorResult> getConnector(
  GetConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:customerinsights:getConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectorResult.fromMap(result);
}

/// Gets a connector mapping in the connector.
///
/// Uses Azure REST API version 2017-04-26.
/// [args] Arguments passed to this invoke. {@macro pulumi_customerinsights_get_connector_mapping_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectorMappingResult> getConnectorMapping(
  GetConnectorMappingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:customerinsights:getConnectorMapping',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectorMappingResult.fromMap(result);
}

/// Gets information about the specified hub.
///
/// Uses Azure REST API version 2017-04-26.
/// [args] Arguments passed to this invoke. {@macro pulumi_customerinsights_get_hub_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHubResult> getHub(
  GetHubArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:customerinsights:getHub',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHubResult.fromMap(result);
}

/// Gets data image upload URL.
///
/// Uses Azure REST API version 2017-04-26.
/// [args] Arguments passed to this invoke. {@macro pulumi_customerinsights_get_image_upload_url_for_data_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImageUploadUrlForDataResult> getImageUploadUrlForData(
  GetImageUploadUrlForDataArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:customerinsights:getImageUploadUrlForData',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImageUploadUrlForDataResult.fromMap(result);
}

/// Gets entity type (profile or interaction) image upload URL.
///
/// Uses Azure REST API version 2017-04-26.
/// [args] Arguments passed to this invoke. {@macro pulumi_customerinsights_get_image_upload_url_for_entity_type_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImageUploadUrlForEntityTypeResult> getImageUploadUrlForEntityType(
  GetImageUploadUrlForEntityTypeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:customerinsights:getImageUploadUrlForEntityType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImageUploadUrlForEntityTypeResult.fromMap(result);
}

/// Gets a KPI in the hub.
///
/// Uses Azure REST API version 2017-04-26.
/// [args] Arguments passed to this invoke. {@macro pulumi_customerinsights_get_kpi_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKpiResult> getKpi(
  GetKpiArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:customerinsights:getKpi',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKpiResult.fromMap(result);
}

/// Gets a link in the hub.
///
/// Uses Azure REST API version 2017-04-26.
/// [args] Arguments passed to this invoke. {@macro pulumi_customerinsights_get_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLinkResult> getLink(
  GetLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:customerinsights:getLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLinkResult.fromMap(result);
}

/// Gets a Prediction in the hub.
///
/// Uses Azure REST API version 2017-04-26.
/// [args] Arguments passed to this invoke. {@macro pulumi_customerinsights_get_prediction_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPredictionResult> getPrediction(
  GetPredictionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:customerinsights:getPrediction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPredictionResult.fromMap(result);
}

/// Gets model status of the prediction.
///
/// Uses Azure REST API version 2017-04-26.
/// [args] Arguments passed to this invoke. {@macro pulumi_customerinsights_get_prediction_model_status_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPredictionModelStatusResult> getPredictionModelStatus(
  GetPredictionModelStatusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:customerinsights:getPredictionModelStatus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPredictionModelStatusResult.fromMap(result);
}

/// Gets training results.
///
/// Uses Azure REST API version 2017-04-26.
/// [args] Arguments passed to this invoke. {@macro pulumi_customerinsights_get_prediction_training_results_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPredictionTrainingResultsResult> getPredictionTrainingResults(
  GetPredictionTrainingResultsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:customerinsights:getPredictionTrainingResults',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPredictionTrainingResultsResult.fromMap(result);
}

/// Gets information about the specified profile.
///
/// Uses Azure REST API version 2017-04-26.
/// [args] Arguments passed to this invoke. {@macro pulumi_customerinsights_get_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProfileResult> getProfile(
  GetProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:customerinsights:getProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProfileResult.fromMap(result);
}

/// Gets information about the specified relationship.
///
/// Uses Azure REST API version 2017-04-26.
/// [args] Arguments passed to this invoke. {@macro pulumi_customerinsights_get_relationship_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRelationshipResult> getRelationship(
  GetRelationshipArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:customerinsights:getRelationship',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRelationshipResult.fromMap(result);
}

/// Gets information about the specified relationship Link.
///
/// Uses Azure REST API version 2017-04-26.
/// [args] Arguments passed to this invoke. {@macro pulumi_customerinsights_get_relationship_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRelationshipLinkResult> getRelationshipLink(
  GetRelationshipLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:customerinsights:getRelationshipLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRelationshipLinkResult.fromMap(result);
}

/// Gets the role assignment in the hub.
///
/// Uses Azure REST API version 2017-04-26.
/// [args] Arguments passed to this invoke. {@macro pulumi_customerinsights_get_role_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRoleAssignmentResult> getRoleAssignment(
  GetRoleAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:customerinsights:getRoleAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRoleAssignmentResult.fromMap(result);
}

/// Gets a view in the hub.
///
/// Uses Azure REST API version 2017-04-26.
/// [args] Arguments passed to this invoke. {@macro pulumi_customerinsights_get_view_args_doc}
/// [options] Invoke options controlling this call.
Future<GetViewResult> getView(
  GetViewArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:customerinsights:getView',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetViewResult.fromMap(result);
}
