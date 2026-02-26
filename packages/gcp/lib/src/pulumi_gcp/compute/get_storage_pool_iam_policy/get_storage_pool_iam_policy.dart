import 'package:pulumi/pulumi.dart';
import 'get_storage_pool_iam_policy_args.dart';
import 'get_storage_pool_iam_policy_result.dart';

/// Retrieves the current IAM policy data for storagepool
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.compute.getStoragePoolIamPolicy({
/// project: test_storage_pool_basic.project,
/// zone: test_storage_pool_basic.zone,
/// name: test_storage_pool_basic.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.get_storage_pool_iam_policy(project=test_storage_pool_basic["project"],
/// zone=test_storage_pool_basic["zone"],
/// name=test_storage_pool_basic["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Compute.GetStoragePoolIamPolicy.Invoke(new()
/// {
/// Project = test_storage_pool_basic.Project,
/// Zone = test_storage_pool_basic.Zone,
/// Name = test_storage_pool_basic.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.LookupStoragePoolIamPolicy(ctx, &compute.LookupStoragePoolIamPolicyArgs{
/// Project: pulumi.StringRef(test_storage_pool_basic.Project),
/// Zone:    pulumi.StringRef(test_storage_pool_basic.Zone),
/// Name:    test_storage_pool_basic.Name,
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetStoragePoolIamPolicyArgs;
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
/// final var policy = ComputeFunctions.getStoragePoolIamPolicy(GetStoragePoolIamPolicyArgs.builder()
/// .project(test_storage_pool_basic.project())
/// .zone(test_storage_pool_basic.zone())
/// .name(test_storage_pool_basic.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:compute:getStoragePoolIamPolicy
/// arguments:
/// project: ${["test-storage-pool-basic"].project}
/// zone: ${["test-storage-pool-basic"].zone}
/// name: ${["test-storage-pool-basic"].name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetStoragePoolIamPolicyResult> getStoragePoolIamPolicy(
  GetStoragePoolIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getStoragePoolIamPolicy:getStoragePoolIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetStoragePoolIamPolicyResult.fromMap(result);
}
