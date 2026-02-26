import 'package:pulumi/pulumi.dart';
import 'get_entity_path_args.dart';
import 'get_entity_path_result.dart';

/// Get the [entity path](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_last-accessed-view-data-orgs.html#access_policies_last-accessed-viewing-orgs-entity-path) for an entity. An entity's path is the text representation of the structure of that AWS Organizations entity.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.organizations.getEntityPath({
/// entityId: "ou-ghi0-awsccccc",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.organizations.get_entity_path(entity_id="ou-ghi0-awsccccc")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Organizations.GetEntityPath.Invoke(new()
/// {
/// EntityId = "ou-ghi0-awsccccc",
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
/// _, err := organizations.GetEntityPath(ctx, &organizations.GetEntityPathArgs{
/// EntityId: "ou-ghi0-awsccccc",
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
/// import com.pulumi.aws.organizations.inputs.GetEntityPathArgs;
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
/// final var example = OrganizationsFunctions.getEntityPath(GetEntityPathArgs.builder()
/// .entityId("ou-ghi0-awsccccc")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:organizations:getEntityPath
/// arguments:
/// entityId: ou-ghi0-awsccccc
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetEntityPathResult> getEntityPath(
  GetEntityPathArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getEntityPath:getEntityPath',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEntityPathResult.fromMap(result);
}
