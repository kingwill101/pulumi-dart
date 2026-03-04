import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_authorization_token_args.dart';
import 'get_authorization_token_result.dart';
import 'get_images_args.dart';
import 'get_images_result.dart';

/// The Public ECR Authorization Token data source allows the authorization token, token expiration date, user name, and password to be retrieved for a Public ECR repository.
///
/// &gt; **NOTE:** This data source can only be used in the `us-east-1` region.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const token = aws.ecrpublic.getAuthorizationToken({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// token = aws.ecrpublic.get_authorization_token()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var token = Aws.EcrPublic.GetAuthorizationToken.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecrpublic"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecrpublic.GetAuthorizationToken(ctx, &ecrpublic.GetAuthorizationTokenArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecrpublic.EcrpublicFunctions;
/// import com.pulumi.aws.ecrpublic.inputs.GetAuthorizationTokenArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var token = EcrpublicFunctions.getAuthorizationToken(GetAuthorizationTokenArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   token:
///     fn::invoke:
///       function: aws:ecrpublic:getAuthorizationToken
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecrpublic_get_authorization_token_get_authorization_token_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuthorizationTokenResult> getAuthorizationToken(
  GetAuthorizationTokenArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecrpublic/getAuthorizationToken:getAuthorizationToken',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorizationTokenResult.fromMap(result);
}

/// The ECR Public Images data source allows the list of images in a specified public repository to be retrieved.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = aws.ecrpublic.getImages({
///     repositoryName: "my-public-repository",
/// });
/// export const imageDigests = example.then(example => .filter(img => img.digest != null).map(img => (img.digest)));
/// export const imageTags = example.then(example => std.flatten({
///     input: .map(img => (img.tags)),
/// })).then(invoke => std.distinct({
///     input: invoke.result,
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
///     var example = Aws.EcrPublic.GetImages.Invoke(new()
///     {
///         RepositoryName = "my-public-repository",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["imageDigests"] = .Where(img => img.Digest != null).Select(img =>
///         {
///             return img.Digest;
///         }).ToList(),
///         ["imageTags"] = Std.Flatten.Invoke(new()
///         {
///             Input = .Select(img =>
///             {
///                 return img.Tags;
///             }).ToList(),
///         }).Apply(invoke => Std.Distinct.Invoke(new()
///         {
///             Input = invoke.Result,
///         })).Apply(invoke => invoke.Result),
///     };
/// });
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecrpublic_get_images_get_images_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImagesResult> getImages(
  GetImagesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecrpublic/getImages:getImages',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImagesResult.fromMap(result);
}
