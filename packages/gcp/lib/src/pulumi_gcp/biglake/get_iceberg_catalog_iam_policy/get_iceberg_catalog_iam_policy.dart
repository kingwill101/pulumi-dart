import 'package:pulumi/pulumi.dart';
import 'get_iceberg_catalog_iam_policy_args.dart';
import 'get_iceberg_catalog_iam_policy_result.dart';

/// Retrieves the current IAM policy data for icebergcatalog
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.biglake.getIcebergCatalogIamPolicy({
/// project: myIcebergCatalog.project,
/// name: myIcebergCatalog.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.biglake.get_iceberg_catalog_iam_policy(project=my_iceberg_catalog["project"],
/// name=my_iceberg_catalog["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.BigLake.GetIcebergCatalogIamPolicy.Invoke(new()
/// {
/// Project = myIcebergCatalog.Project,
/// Name = myIcebergCatalog.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/biglake"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := biglake.LookupIcebergCatalogIamPolicy(ctx, &biglake.LookupIcebergCatalogIamPolicyArgs{
/// Project: pulumi.StringRef(myIcebergCatalog.Project),
/// Name:    myIcebergCatalog.Name,
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
/// import com.pulumi.gcp.biglake.BiglakeFunctions;
/// import com.pulumi.gcp.biglake.inputs.GetIcebergCatalogIamPolicyArgs;
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
/// final var policy = BiglakeFunctions.getIcebergCatalogIamPolicy(GetIcebergCatalogIamPolicyArgs.builder()
/// .project(myIcebergCatalog.project())
/// .name(myIcebergCatalog.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:biglake:getIcebergCatalogIamPolicy
/// arguments:
/// project: ${myIcebergCatalog.project}
/// name: ${myIcebergCatalog.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetIcebergCatalogIamPolicyResult> getIcebergCatalogIamPolicy(
  GetIcebergCatalogIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:biglake/getIcebergCatalogIamPolicy:getIcebergCatalogIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIcebergCatalogIamPolicyResult.fromMap(result);
}
