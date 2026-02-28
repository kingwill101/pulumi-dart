import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dataset_args.dart';
import 'get_dataset_result.dart';
import 'get_glossary_args.dart';
import 'get_glossary_entry_args.dart';
import 'get_glossary_entry_result.dart';
import 'get_glossary_result.dart';
import 'get_glossary_translate_v3beta1_args.dart';
import 'get_glossary_translate_v3beta1_result.dart';
import 'get_model_args.dart';
import 'get_model_result.dart';

/// Gets a Dataset.
/// [args] Arguments passed to this invoke. {@macro pulumi_translate_v3_get_dataset_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetResult> getDataset(
  GetDatasetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:translate/v3:getDataset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetResult.fromMap(result);
}

/// Gets a glossary. Returns NOT_FOUND, if the glossary doesn't exist.
/// [args] Arguments passed to this invoke. {@macro pulumi_translate_v3_get_glossary_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGlossaryResult> getGlossary(
  GetGlossaryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:translate/v3:getGlossary',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlossaryResult.fromMap(result);
}

/// Gets a single glossary entry by the given id.
/// [args] Arguments passed to this invoke. {@macro pulumi_translate_v3_get_glossary_entry_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGlossaryEntryResult> getGlossaryEntry(
  GetGlossaryEntryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:translate/v3:getGlossaryEntry',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlossaryEntryResult.fromMap(result);
}

/// Gets a model.
/// [args] Arguments passed to this invoke. {@macro pulumi_translate_v3_get_model_args_doc}
/// [options] Invoke options controlling this call.
Future<GetModelResult> getModel(
  GetModelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:translate/v3:getModel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetModelResult.fromMap(result);
}

/// Gets a glossary. Returns NOT_FOUND, if the glossary doesn't exist.
/// [args] Arguments passed to this invoke. {@macro pulumi_translate_v3beta1_get_glossary_translate_v3beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGlossaryTranslateV3beta1Result> getGlossaryTranslateV3beta1(
  GetGlossaryTranslateV3beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:translate/v3beta1:getGlossary',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlossaryTranslateV3beta1Result.fromMap(result);
}
