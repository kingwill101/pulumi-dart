import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_args.dart';
import 'get_repository_artifactregistry_v1beta1_args.dart';
import 'get_repository_artifactregistry_v1beta1_result.dart';
import 'get_repository_artifactregistry_v1beta2_args.dart';
import 'get_repository_artifactregistry_v1beta2_result.dart';
import 'get_repository_iam_policy_args.dart';
import 'get_repository_iam_policy_artifactregistry_v1beta1_args.dart';
import 'get_repository_iam_policy_artifactregistry_v1beta1_result.dart';
import 'get_repository_iam_policy_artifactregistry_v1beta2_args.dart';
import 'get_repository_iam_policy_artifactregistry_v1beta2_result.dart';
import 'get_repository_iam_policy_result.dart';
import 'get_repository_result.dart';
import 'get_tag_args.dart';
import 'get_tag_artifactregistry_v1beta1_args.dart';
import 'get_tag_artifactregistry_v1beta1_result.dart';
import 'get_tag_artifactregistry_v1beta2_args.dart';
import 'get_tag_artifactregistry_v1beta2_result.dart';
import 'get_tag_result.dart';

/// Gets a repository.
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_v1_get_repository_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRepositoryResult> getRepository(
  GetRepositoryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1:getRepository',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryResult.fromMap(result);
}

/// Gets the IAM policy for a given resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_v1_get_repository_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRepositoryIamPolicyResult> getRepositoryIamPolicy(
  GetRepositoryIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1:getRepositoryIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryIamPolicyResult.fromMap(result);
}

/// Gets a tag.
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_v1_get_tag_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTagResult> getTag(
  GetTagArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1:getTag',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagResult.fromMap(result);
}

/// Gets a repository.
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_v1beta1_get_repository_artifactregistry_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRepositoryArtifactregistryV1beta1Result>
getRepositoryArtifactregistryV1beta1(
  GetRepositoryArtifactregistryV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1beta1:getRepository',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryArtifactregistryV1beta1Result.fromMap(result);
}

/// Gets the IAM policy for a given resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_v1beta1_get_repository_iam_policy_artifactregistry_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRepositoryIamPolicyArtifactregistryV1beta1Result>
getRepositoryIamPolicyArtifactregistryV1beta1(
  GetRepositoryIamPolicyArtifactregistryV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1beta1:getRepositoryIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryIamPolicyArtifactregistryV1beta1Result.fromMap(result);
}

/// Gets a tag.
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_v1beta1_get_tag_artifactregistry_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTagArtifactregistryV1beta1Result> getTagArtifactregistryV1beta1(
  GetTagArtifactregistryV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1beta1:getTag',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagArtifactregistryV1beta1Result.fromMap(result);
}

/// Gets a repository.
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_v1beta2_get_repository_artifactregistry_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRepositoryArtifactregistryV1beta2Result>
getRepositoryArtifactregistryV1beta2(
  GetRepositoryArtifactregistryV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1beta2:getRepository',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryArtifactregistryV1beta2Result.fromMap(result);
}

/// Gets the IAM policy for a given resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_v1beta2_get_repository_iam_policy_artifactregistry_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRepositoryIamPolicyArtifactregistryV1beta2Result>
getRepositoryIamPolicyArtifactregistryV1beta2(
  GetRepositoryIamPolicyArtifactregistryV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1beta2:getRepositoryIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryIamPolicyArtifactregistryV1beta2Result.fromMap(result);
}

/// Gets a tag.
/// [args] Arguments passed to this invoke. {@macro pulumi_artifactregistry_v1beta2_get_tag_artifactregistry_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTagArtifactregistryV1beta2Result> getTagArtifactregistryV1beta2(
  GetTagArtifactregistryV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1beta2:getTag',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagArtifactregistryV1beta2Result.fromMap(result);
}
