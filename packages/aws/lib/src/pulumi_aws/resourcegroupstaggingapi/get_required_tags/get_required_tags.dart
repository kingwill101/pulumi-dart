import 'package:pulumi/pulumi.dart';
import 'get_required_tags_args.dart';
import 'get_required_tags_result.dart';

/// Lists the required tags for supported resource types in an AWS account. Required tags are defined through AWS Organizations [tag policies](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html).
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
/// const example = aws.resourcegroupstaggingapi.getRequiredTags({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.resourcegroupstaggingapi.get_required_tags()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.ResourceGroupsTaggingApi.GetRequiredTags.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/resourcegroupstaggingapi"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := resourcegroupstaggingapi.GetRequiredTags(ctx, &resourcegroupstaggingapi.GetRequiredTagsArgs{}, nil)
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
/// import com.pulumi.aws.resourcegroupstaggingapi.ResourcegroupstaggingapiFunctions;
/// import com.pulumi.aws.resourcegroupstaggingapi.inputs.GetRequiredTagsArgs;
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
/// final var example = ResourcegroupstaggingapiFunctions.getRequiredTags(GetRequiredTagsArgs.builder()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:resourcegroupstaggingapi:getRequiredTags
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRequiredTagsResult> getRequiredTags(
  GetRequiredTagsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:resourcegroupstaggingapi/getRequiredTags:getRequiredTags',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRequiredTagsResult.fromMap(result);
}
