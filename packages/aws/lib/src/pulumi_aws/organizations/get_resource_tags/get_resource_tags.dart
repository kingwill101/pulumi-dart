import 'package:pulumi/pulumi.dart';
import 'get_resource_tags_args.dart';
import 'get_resource_tags_result.dart';

/// Get tags attached to the specified AWS Organizations resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const account = aws.organizations.getResourceTags({
/// resourceId: "123456123846",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// account = aws.organizations.get_resource_tags(resource_id="123456123846")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var account = Aws.Organizations.GetResourceTags.Invoke(new()
/// {
/// ResourceId = "123456123846",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := organizations.GetResourceTags(ctx, &organizations.GetResourceTagsArgs{
/// ResourceId: "123456123846",
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
/// import com.pulumi.aws.organizations.OrganizationsFunctions;
/// import com.pulumi.aws.organizations.inputs.GetResourceTagsArgs;
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
/// final var account = OrganizationsFunctions.getResourceTags(GetResourceTagsArgs.builder()
/// .resourceId("123456123846")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// account:
/// fn::invoke:
/// function: aws:organizations:getResourceTags
/// arguments:
/// resourceId: '123456123846'
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetResourceTagsResult> getResourceTags(
  GetResourceTagsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getResourceTags:getResourceTags',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetResourceTagsResult.fromMap(result);
}
