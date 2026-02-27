import 'package:pulumi/pulumi.dart';
import 'get_prebuilt_ecr_image_args.dart';
import 'get_prebuilt_ecr_image_result.dart';

/// Get information about prebuilt Amazon SageMaker AI  Docker images.
///
/// > **NOTE:** The AWS provider creates a validly constructed `registry_path` but does not verify that the `registry_path` corresponds to an existing image. For example, using a `registry_path` containing an `image_tag` that does not correspond to a Docker image in the ECR repository, will result in an error.
///
/// ## Example Usage
///
/// Basic usage:
Future<GetPrebuiltEcrImageResult> getPrebuiltEcrImage(
  GetPrebuiltEcrImageArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sagemaker/getPrebuiltEcrImage:getPrebuiltEcrImage',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPrebuiltEcrImageResult.fromMap(result);
}
