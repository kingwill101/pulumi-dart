import 'package:pulumi/pulumi.dart';
import 'get_images_args2.dart';
import 'get_images_result2.dart';

/// The ECR Public Images data source allows the list of images in a specified public repository to be retrieved.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = aws.ecrpublic.getImages({
/// repositoryName: "my-public-repository",
/// });
/// export const imageDigests = example.then(example => .filter(img => img.digest != null).map(img => (img.digest)));
/// export const imageTags = example.then(example => std.flatten({
/// input: .map(img => (img.tags)),
/// })).then(invoke => std.distinct({
/// input: invoke.result,
/// })).then(invoke => invoke.result);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.ecrpublic.get_images(repository_name="my-public-repository")
/// pulumi.export("imageDigests", [img.digest for img in example.images if img.digest != None])
/// pulumi.export("imageTags", std.distinct(input=std.flatten(input=[img.tags for img in example.images]).result).result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.EcrPublic.GetImages.Invoke(new()
/// {
/// RepositoryName = "my-public-repository",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["imageDigests"] = .Where(img => img.Digest != null).Select(img =>
/// {
/// return img.Digest;
/// }).ToList(),
/// ["imageTags"] = Std.Flatten.Invoke(new()
/// {
/// Input = .Select(img =>
/// {
/// return img.Tags;
/// }).ToList(),
/// }).Apply(invoke => Std.Distinct.Invoke(new()
/// {
/// Input = invoke.Result,
/// })).Apply(invoke => invoke.Result),
/// };
/// });
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetImagesResult2> getImages2(
  GetImagesArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecrpublic/getImages:getImages',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetImagesResult2.fromMap(result);
}
