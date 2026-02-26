import 'package:pulumi/pulumi.dart';
import 'get_workload_identity_pool_provider_args.dart';
import 'get_workload_identity_pool_provider_result.dart';

/// Get a IAM workload identity provider from Google Cloud by its id.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.iam.getWorkloadIdentityPoolProvider({
/// workloadIdentityPoolId: "foo-pool",
/// workloadIdentityPoolProviderId: "bar-provider",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.iam.get_workload_identity_pool_provider(workload_identity_pool_id="foo-pool",
/// workload_identity_pool_provider_id="bar-provider")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var foo = Gcp.Iam.GetWorkloadIdentityPoolProvider.Invoke(new()
/// {
/// WorkloadIdentityPoolId = "foo-pool",
/// WorkloadIdentityPoolProviderId = "bar-provider",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.LookupWorkloadIdentityPoolProvider(ctx, &iam.LookupWorkloadIdentityPoolProviderArgs{
/// WorkloadIdentityPoolId:         "foo-pool",
/// WorkloadIdentityPoolProviderId: "bar-provider",
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
/// import com.pulumi.gcp.iam.IamFunctions;
/// import com.pulumi.gcp.iam.inputs.GetWorkloadIdentityPoolProviderArgs;
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
/// final var foo = IamFunctions.getWorkloadIdentityPoolProvider(GetWorkloadIdentityPoolProviderArgs.builder()
/// .workloadIdentityPoolId("foo-pool")
/// .workloadIdentityPoolProviderId("bar-provider")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// foo:
/// fn::invoke:
/// function: gcp:iam:getWorkloadIdentityPoolProvider
/// arguments:
/// workloadIdentityPoolId: foo-pool
/// workloadIdentityPoolProviderId: bar-provider
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetWorkloadIdentityPoolProviderResult> getWorkloadIdentityPoolProvider(
  GetWorkloadIdentityPoolProviderArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iam/getWorkloadIdentityPoolProvider:getWorkloadIdentityPoolProvider',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkloadIdentityPoolProviderResult.fromMap(result);
}
