import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_annotation_args.dart';
import 'get_annotation_result.dart';
import 'get_annotation_store_args.dart';
import 'get_annotation_store_result.dart';
import 'get_attribute_definition_args.dart';
import 'get_attribute_definition_healthcare_v1beta1_args.dart';
import 'get_attribute_definition_healthcare_v1beta1_result.dart';
import 'get_attribute_definition_result.dart';
import 'get_consent_args.dart';
import 'get_consent_artifact_args.dart';
import 'get_consent_artifact_healthcare_v1beta1_args.dart';
import 'get_consent_artifact_healthcare_v1beta1_result.dart';
import 'get_consent_artifact_result.dart';
import 'get_consent_healthcare_v1beta1_args.dart';
import 'get_consent_healthcare_v1beta1_result.dart';
import 'get_consent_result.dart';
import 'get_consent_store_args.dart';
import 'get_consent_store_healthcare_v1beta1_args.dart';
import 'get_consent_store_healthcare_v1beta1_result.dart';
import 'get_consent_store_result.dart';
import 'get_dataset_annotation_store_iam_policy_args.dart';
import 'get_dataset_annotation_store_iam_policy_result.dart';
import 'get_dataset_args.dart';
import 'get_dataset_consent_store_iam_policy_args.dart';
import 'get_dataset_consent_store_iam_policy_healthcare_v1beta1_args.dart';
import 'get_dataset_consent_store_iam_policy_healthcare_v1beta1_result.dart';
import 'get_dataset_consent_store_iam_policy_result.dart';
import 'get_dataset_dicom_store_iam_policy_args.dart';
import 'get_dataset_dicom_store_iam_policy_healthcare_v1beta1_args.dart';
import 'get_dataset_dicom_store_iam_policy_healthcare_v1beta1_result.dart';
import 'get_dataset_dicom_store_iam_policy_result.dart';
import 'get_dataset_fhir_store_iam_policy_args.dart';
import 'get_dataset_fhir_store_iam_policy_healthcare_v1beta1_args.dart';
import 'get_dataset_fhir_store_iam_policy_healthcare_v1beta1_result.dart';
import 'get_dataset_fhir_store_iam_policy_result.dart';
import 'get_dataset_healthcare_v1beta1_args.dart';
import 'get_dataset_healthcare_v1beta1_result.dart';
import 'get_dataset_hl7_v2_store_iam_policy_args.dart';
import 'get_dataset_hl7_v2_store_iam_policy_healthcare_v1beta1_args.dart';
import 'get_dataset_hl7_v2_store_iam_policy_healthcare_v1beta1_result.dart';
import 'get_dataset_hl7_v2_store_iam_policy_result.dart';
import 'get_dataset_iam_policy_args.dart';
import 'get_dataset_iam_policy_healthcare_v1beta1_args.dart';
import 'get_dataset_iam_policy_healthcare_v1beta1_result.dart';
import 'get_dataset_iam_policy_result.dart';
import 'get_dataset_result.dart';
import 'get_dicom_store_args.dart';
import 'get_dicom_store_healthcare_v1beta1_args.dart';
import 'get_dicom_store_healthcare_v1beta1_result.dart';
import 'get_dicom_store_result.dart';
import 'get_fhir_args.dart';
import 'get_fhir_healthcare_v1beta1_args.dart';
import 'get_fhir_healthcare_v1beta1_result.dart';
import 'get_fhir_result.dart';
import 'get_fhir_store_args.dart';
import 'get_fhir_store_healthcare_v1beta1_args.dart';
import 'get_fhir_store_healthcare_v1beta1_result.dart';
import 'get_fhir_store_result.dart';
import 'get_hl7_v2_store_args.dart';
import 'get_hl7_v2_store_healthcare_v1beta1_args.dart';
import 'get_hl7_v2_store_healthcare_v1beta1_result.dart';
import 'get_hl7_v2_store_result.dart';
import 'get_message_args.dart';
import 'get_message_healthcare_v1beta1_args.dart';
import 'get_message_healthcare_v1beta1_result.dart';
import 'get_message_result.dart';
import 'get_user_data_mapping_args.dart';
import 'get_user_data_mapping_healthcare_v1beta1_args.dart';
import 'get_user_data_mapping_healthcare_v1beta1_result.dart';
import 'get_user_data_mapping_result.dart';

/// Gets the specified Attribute definition.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1_get_attribute_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAttributeDefinitionResult> getAttributeDefinition(
  GetAttributeDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getAttributeDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAttributeDefinitionResult.fromMap(result);
}

/// Gets the specified revision of a Consent, or the latest revision if `revision_id` is not specified in the resource name.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1_get_consent_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConsentResult> getConsent(
  GetConsentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getConsent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConsentResult.fromMap(result);
}

/// Gets the specified Consent artifact.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1_get_consent_artifact_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConsentArtifactResult> getConsentArtifact(
  GetConsentArtifactArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getConsentArtifact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConsentArtifactResult.fromMap(result);
}

/// Gets the specified consent store.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1_get_consent_store_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConsentStoreResult> getConsentStore(
  GetConsentStoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getConsentStore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConsentStoreResult.fromMap(result);
}

/// Gets any metadata associated with a dataset.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1_get_dataset_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetResult> getDataset(
  GetDatasetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getDataset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1_get_dataset_consent_store_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetConsentStoreIamPolicyResult> getDatasetConsentStoreIamPolicy(
  GetDatasetConsentStoreIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getDatasetConsentStoreIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetConsentStoreIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1_get_dataset_dicom_store_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetDicomStoreIamPolicyResult> getDatasetDicomStoreIamPolicy(
  GetDatasetDicomStoreIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getDatasetDicomStoreIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetDicomStoreIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1_get_dataset_fhir_store_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetFhirStoreIamPolicyResult> getDatasetFhirStoreIamPolicy(
  GetDatasetFhirStoreIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getDatasetFhirStoreIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetFhirStoreIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1_get_dataset_hl7_v2_store_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetHl7V2StoreIamPolicyResult> getDatasetHl7V2StoreIamPolicy(
  GetDatasetHl7V2StoreIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getDatasetHl7V2StoreIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetHl7V2StoreIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1_get_dataset_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetIamPolicyResult> getDatasetIamPolicy(
  GetDatasetIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getDatasetIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetIamPolicyResult.fromMap(result);
}

/// Gets the specified DICOM store.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1_get_dicom_store_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDicomStoreResult> getDicomStore(
  GetDicomStoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getDicomStore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDicomStoreResult.fromMap(result);
}

/// Gets the contents of a FHIR resource. Implements the FHIR standard read interaction ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#read), [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#read), [R4](http://hl7.org/implement/standards/fhir/R4/http.html#read)). Also supports the FHIR standard conditional read interaction ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#cread), [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#cread), [R4](http://hl7.org/implement/standards/fhir/R4/http.html#cread)) specified by supplying an `If-Modified-Since` header with a date/time value or an `If-None-Match` header with an ETag value. On success, the response body contains a JSON-encoded representation of the resource. Errors generated by the FHIR store contain a JSON-encoded `OperationOutcome` resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. For samples that show how to call `read`, see [Getting a FHIR resource](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#getting_a_fhir_resource).
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1_get_fhir_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFhirResult> getFhir(
  GetFhirArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getFhir',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFhirResult.fromMap(result);
}

/// Gets the configuration of the specified FHIR store.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1_get_fhir_store_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFhirStoreResult> getFhirStore(
  GetFhirStoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getFhirStore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFhirStoreResult.fromMap(result);
}

/// Gets the specified HL7v2 store.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1_get_hl7_v2_store_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHl7V2StoreResult> getHl7V2Store(
  GetHl7V2StoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getHl7V2Store',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHl7V2StoreResult.fromMap(result);
}

/// Gets an HL7v2 message.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1_get_message_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMessageResult> getMessage(
  GetMessageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getMessage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMessageResult.fromMap(result);
}

/// Gets the specified User data mapping.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1_get_user_data_mapping_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserDataMappingResult> getUserDataMapping(
  GetUserDataMappingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getUserDataMapping',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserDataMappingResult.fromMap(result);
}

/// Gets an Annotation.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1beta1_get_annotation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAnnotationResult> getAnnotation(
  GetAnnotationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getAnnotation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAnnotationResult.fromMap(result);
}

/// Gets the specified Annotation store or returns NOT_FOUND if it does not exist.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1beta1_get_annotation_store_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAnnotationStoreResult> getAnnotationStore(
  GetAnnotationStoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getAnnotationStore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAnnotationStoreResult.fromMap(result);
}

/// Gets the specified Attribute definition.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1beta1_get_attribute_definition_healthcare_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAttributeDefinitionHealthcareV1beta1Result>
getAttributeDefinitionHealthcareV1beta1(
  GetAttributeDefinitionHealthcareV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getAttributeDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAttributeDefinitionHealthcareV1beta1Result.fromMap(result);
}

/// Gets the specified revision of a Consent, or the latest revision if `revision_id` is not specified in the resource name.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1beta1_get_consent_healthcare_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConsentHealthcareV1beta1Result> getConsentHealthcareV1beta1(
  GetConsentHealthcareV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getConsent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConsentHealthcareV1beta1Result.fromMap(result);
}

/// Gets the specified Consent artifact.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1beta1_get_consent_artifact_healthcare_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConsentArtifactHealthcareV1beta1Result>
getConsentArtifactHealthcareV1beta1(
  GetConsentArtifactHealthcareV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getConsentArtifact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConsentArtifactHealthcareV1beta1Result.fromMap(result);
}

/// Gets the specified consent store.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1beta1_get_consent_store_healthcare_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConsentStoreHealthcareV1beta1Result> getConsentStoreHealthcareV1beta1(
  GetConsentStoreHealthcareV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getConsentStore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConsentStoreHealthcareV1beta1Result.fromMap(result);
}

/// Gets any metadata associated with a dataset.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1beta1_get_dataset_healthcare_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetHealthcareV1beta1Result> getDatasetHealthcareV1beta1(
  GetDatasetHealthcareV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getDataset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetHealthcareV1beta1Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1beta1_get_dataset_annotation_store_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetAnnotationStoreIamPolicyResult>
getDatasetAnnotationStoreIamPolicy(
  GetDatasetAnnotationStoreIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getDatasetAnnotationStoreIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetAnnotationStoreIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1beta1_get_dataset_consent_store_iam_policy_healthcare_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetConsentStoreIamPolicyHealthcareV1beta1Result>
getDatasetConsentStoreIamPolicyHealthcareV1beta1(
  GetDatasetConsentStoreIamPolicyHealthcareV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getDatasetConsentStoreIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetConsentStoreIamPolicyHealthcareV1beta1Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1beta1_get_dataset_dicom_store_iam_policy_healthcare_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetDicomStoreIamPolicyHealthcareV1beta1Result>
getDatasetDicomStoreIamPolicyHealthcareV1beta1(
  GetDatasetDicomStoreIamPolicyHealthcareV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getDatasetDicomStoreIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetDicomStoreIamPolicyHealthcareV1beta1Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1beta1_get_dataset_fhir_store_iam_policy_healthcare_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetFhirStoreIamPolicyHealthcareV1beta1Result>
getDatasetFhirStoreIamPolicyHealthcareV1beta1(
  GetDatasetFhirStoreIamPolicyHealthcareV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getDatasetFhirStoreIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetFhirStoreIamPolicyHealthcareV1beta1Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1beta1_get_dataset_hl7_v2_store_iam_policy_healthcare_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetHl7V2StoreIamPolicyHealthcareV1beta1Result>
getDatasetHl7V2StoreIamPolicyHealthcareV1beta1(
  GetDatasetHl7V2StoreIamPolicyHealthcareV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getDatasetHl7V2StoreIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetHl7V2StoreIamPolicyHealthcareV1beta1Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1beta1_get_dataset_iam_policy_healthcare_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetIamPolicyHealthcareV1beta1Result>
getDatasetIamPolicyHealthcareV1beta1(
  GetDatasetIamPolicyHealthcareV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getDatasetIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetIamPolicyHealthcareV1beta1Result.fromMap(result);
}

/// Gets the specified DICOM store.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1beta1_get_dicom_store_healthcare_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDicomStoreHealthcareV1beta1Result> getDicomStoreHealthcareV1beta1(
  GetDicomStoreHealthcareV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getDicomStore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDicomStoreHealthcareV1beta1Result.fromMap(result);
}

/// Gets the contents of a FHIR resource. Implements the FHIR standard read interaction ([DSTU2](https://hl7.org/implement/standards/fhir/DSTU2/http.html#read), [STU3](https://hl7.org/implement/standards/fhir/STU3/http.html#read), [R4](https://hl7.org/implement/standards/fhir/R4/http.html#read)). Also supports the FHIR standard conditional read interaction ([DSTU2](https://hl7.org/implement/standards/fhir/DSTU2/http.html#cread), [STU3](https://hl7.org/implement/standards/fhir/STU3/http.html#cread), [R4](https://hl7.org/implement/standards/fhir/R4/http.html#cread)) specified by supplying an `If-Modified-Since` header with a date/time value or an `If-None-Match` header with an ETag value. On success, the response body contains a JSON-encoded representation of the resource. Errors generated by the FHIR store contain a JSON-encoded `OperationOutcome` resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. For samples that show how to call `read`, see [Getting a FHIR resource](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#getting_a_fhir_resource).
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1beta1_get_fhir_healthcare_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFhirHealthcareV1beta1Result> getFhirHealthcareV1beta1(
  GetFhirHealthcareV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getFhir',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFhirHealthcareV1beta1Result.fromMap(result);
}

/// Gets the configuration of the specified FHIR store.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1beta1_get_fhir_store_healthcare_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFhirStoreHealthcareV1beta1Result> getFhirStoreHealthcareV1beta1(
  GetFhirStoreHealthcareV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getFhirStore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFhirStoreHealthcareV1beta1Result.fromMap(result);
}

/// Gets the specified HL7v2 store.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1beta1_get_hl7_v2_store_healthcare_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHl7V2StoreHealthcareV1beta1Result> getHl7V2StoreHealthcareV1beta1(
  GetHl7V2StoreHealthcareV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getHl7V2Store',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHl7V2StoreHealthcareV1beta1Result.fromMap(result);
}

/// Gets an HL7v2 message.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1beta1_get_message_healthcare_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMessageHealthcareV1beta1Result> getMessageHealthcareV1beta1(
  GetMessageHealthcareV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getMessage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMessageHealthcareV1beta1Result.fromMap(result);
}

/// Gets the specified User data mapping.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_v1beta1_get_user_data_mapping_healthcare_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserDataMappingHealthcareV1beta1Result>
getUserDataMappingHealthcareV1beta1(
  GetUserDataMappingHealthcareV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getUserDataMapping',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserDataMappingHealthcareV1beta1Result.fromMap(result);
}
