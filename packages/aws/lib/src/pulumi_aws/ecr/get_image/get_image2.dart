import 'package:pulumi/pulumi.dart';
import 'get_image_args2.dart';
import 'get_image_result2.dart';

/// The ECR Image data source allows the details of an image with a particular tag or digest to be retrieved.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const serviceImage = aws.ecr.getImage({
/// repositoryName: "my/service",
/// imageTag: "latest",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// service_image = aws.ecr.get_image(repository_name="my/service",
/// image_tag="latest")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var serviceImage = Aws.Ecr.GetImage.Invoke(new()
/// {
/// RepositoryName = "my/service",
/// ImageTag = "latest",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ecr.GetImage(ctx, &ecr.GetImageArgs{
/// RepositoryName: "my/service",
/// ImageTag:       pulumi.StringRef("latest"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecr.EcrFunctions;
/// import com.pulumi.aws.ecr.inputs.GetImageArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var serviceImage = EcrFunctions.getImage(GetImageArgs.builder()
/// .repositoryName("my/service")
/// .imageTag("latest")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// serviceImage:
/// fn::invoke:
/// function: aws:ecr:getImage
/// arguments:
/// repositoryName: my/service
/// imageTag: latest
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetImageResult2> getImage2(
  GetImageArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecr/getImage:getImage',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetImageResult2.fromMap(result);
}
