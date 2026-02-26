import 'package:pulumi/pulumi.dart';
import 'get_images_args.dart';
import 'get_images_result.dart';

/// The ECR Images data source allows the list of images in a specified repository to be retrieved.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ecr.getImages({
/// repositoryName: "my-repository",
/// });
/// export const imageDigests = example.then(example => .filter(img => img.imageDigest != null).map(img => (img.imageDigest)));
/// export const imageTags = example.then(example => .filter(img => img.imageTag != null).map(img => (img.imageTag)));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecr.get_images(repository_name="my-repository")
/// pulumi.export("imageDigests", [img.image_digest for img in example.image_ids if img.image_digest != None])
/// pulumi.export("imageTags", [img.image_tag for img in example.image_ids if img.image_tag != None])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ecr.GetImages.Invoke(new()
/// {
/// RepositoryName = "my-repository",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["imageDigests"] = .Where(img => img.ImageDigest != null).Select(img =>
/// {
/// return img.ImageDigest;
/// }).ToList(),
/// ["imageTags"] = .Where(img => img.ImageTag != null).Select(img =>
/// {
/// return img.ImageTag;
/// }).ToList(),
/// };
/// });
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetImagesResult> getImages(
  GetImagesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecr/getImages:getImages',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetImagesResult.fromMap(result);
}
