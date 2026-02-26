import 'package:pulumi/pulumi.dart';
import 'get_groups_args.dart';
import 'get_groups_result.dart';

/// Use this data source to get list of the Cloud Identity Groups under a customer or namespace.
///
/// https://cloud.google.com/identity/docs/concepts/overview#groups
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const groups = gcp.cloudidentity.getGroups({
/// parent: "customers/A01b123xz",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// groups = gcp.cloudidentity.get_groups(parent="customers/A01b123xz")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var groups = Gcp.CloudIdentity.GetGroups.Invoke(new()
/// {
/// Parent = "customers/A01b123xz",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudidentity"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudidentity.GetGroups(ctx, &cloudidentity.GetGroupsArgs{
/// Parent: "customers/A01b123xz",
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
/// import com.pulumi.gcp.cloudidentity.CloudidentityFunctions;
/// import com.pulumi.gcp.cloudidentity.inputs.GetGroupsArgs;
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
/// final var groups = CloudidentityFunctions.getGroups(GetGroupsArgs.builder()
/// .parent("customers/A01b123xz")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// groups:
/// fn::invoke:
/// function: gcp:cloudidentity:getGroups
/// arguments:
/// parent: customers/A01b123xz
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetGroupsResult> getGroups(
  GetGroupsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudidentity/getGroups:getGroups',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGroupsResult.fromMap(result);
}
