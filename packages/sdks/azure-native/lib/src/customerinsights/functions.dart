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

pulumi.Output<GetConnectorResult> getConnectorOutput(
  GetConnectorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:customerinsights:getConnector',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConnectorResult.fromMap);
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

pulumi.Output<GetConnectorMappingResult> getConnectorMappingOutput(
  GetConnectorMappingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:customerinsights:getConnectorMapping',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConnectorMappingResult.fromMap);
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

pulumi.Output<GetHubResult> getHubOutput(
  GetHubArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:customerinsights:getHub',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHubResult.fromMap);
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

pulumi.Output<GetImageUploadUrlForDataResult> getImageUploadUrlForDataOutput(
  GetImageUploadUrlForDataArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:customerinsights:getImageUploadUrlForData',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetImageUploadUrlForDataResult.fromMap);
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

pulumi.Output<GetImageUploadUrlForEntityTypeResult> getImageUploadUrlForEntityTypeOutput(
  GetImageUploadUrlForEntityTypeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:customerinsights:getImageUploadUrlForEntityType',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetImageUploadUrlForEntityTypeResult.fromMap);
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

pulumi.Output<GetKpiResult> getKpiOutput(
  GetKpiArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:customerinsights:getKpi',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetKpiResult.fromMap);
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

pulumi.Output<GetLinkResult> getLinkOutput(
  GetLinkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:customerinsights:getLink',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLinkResult.fromMap);
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

pulumi.Output<GetPredictionResult> getPredictionOutput(
  GetPredictionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:customerinsights:getPrediction',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPredictionResult.fromMap);
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

pulumi.Output<GetPredictionModelStatusResult> getPredictionModelStatusOutput(
  GetPredictionModelStatusArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:customerinsights:getPredictionModelStatus',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPredictionModelStatusResult.fromMap);
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

pulumi.Output<GetPredictionTrainingResultsResult> getPredictionTrainingResultsOutput(
  GetPredictionTrainingResultsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:customerinsights:getPredictionTrainingResults',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPredictionTrainingResultsResult.fromMap);
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

pulumi.Output<GetProfileResult> getProfileOutput(
  GetProfileArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:customerinsights:getProfile',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProfileResult.fromMap);
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

pulumi.Output<GetRelationshipResult> getRelationshipOutput(
  GetRelationshipArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:customerinsights:getRelationship',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRelationshipResult.fromMap);
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

pulumi.Output<GetRelationshipLinkResult> getRelationshipLinkOutput(
  GetRelationshipLinkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:customerinsights:getRelationshipLink',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRelationshipLinkResult.fromMap);
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

pulumi.Output<GetRoleAssignmentResult> getRoleAssignmentOutput(
  GetRoleAssignmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:customerinsights:getRoleAssignment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRoleAssignmentResult.fromMap);
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

pulumi.Output<GetViewResult> getViewOutput(
  GetViewArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:customerinsights:getView',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetViewResult.fromMap);
}
