import 'package:pulumi/pulumi.dart';
import 'get_default_tags_args.dart';
import 'get_default_tags_result.dart';

/// Use this data source to get the default tags configured on the provider.
///
/// With this data source, you can apply default tags to resources not _directly_ managed by a resource, such as the instances underneath an Auto Scaling group or the volumes created for an EC2 instance.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.getDefaultTags({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.get_default_tags()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.GetDefaultTags.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := aws.GetDefaultTags(ctx, &aws.GetDefaultTagsArgs{}, nil)
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetDefaultTagsArgs;
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
/// final var example = AwsFunctions.getDefaultTags(GetDefaultTagsArgs.builder()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:getDefaultTags
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Dynamically Apply Default Tags to Auto Scaling Group
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.getDefaultTags({});
/// const exampleGroup = new aws.autoscaling.Group("example", {tags: .map(entry => ({
/// key: entry.key,
/// value: entry.value,
/// propagateAtLaunch: true,
/// }))});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.get_default_tags()
/// example_group = aws.autoscaling.Group("example", tags=[{"key": k, "value": v} for k, v in example.tags].apply(lambda entries: [{
/// "key": entry["key"],
/// "value": entry["value"],
/// "propagateAtLaunch": True,
/// } for entry in entries]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.GetDefaultTags.Invoke();
///
/// var exampleGroup = new Aws.AutoScaling.Group("example", new()
/// {
/// Tags = ,
/// });
///
/// });
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDefaultTagsResult> getDefaultTags(
  GetDefaultTagsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getDefaultTags:getDefaultTags',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDefaultTagsResult.fromMap(result);
}
