import 'package:pulumi/pulumi.dart';
import 'get_sslpolicy_args.dart';
import 'get_sslpolicy_result.dart';

/// Gets an SSL Policy within GCE from its name, for use with Target HTTPS and Target SSL Proxies.
/// For more information see [the official documentation](https://cloud.google.com/compute/docs/load-balancing/ssl-policies).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_ssl_policy = gcp.compute.getSSLPolicy({
/// name: "production-ssl-policy",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_ssl_policy = gcp.compute.get_ssl_policy(name="production-ssl-policy")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_ssl_policy = Gcp.Compute.GetSSLPolicy.Invoke(new()
/// {
/// Name = "production-ssl-policy",
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
/// _, err := compute.LookupSSLPolicy(ctx, &compute.LookupSSLPolicyArgs{
/// Name: "production-ssl-policy",
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
/// import com.pulumi.gcp.compute.inputs.GetSSLPolicyArgs;
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
/// final var my-ssl-policy = ComputeFunctions.getSSLPolicy(GetSSLPolicyArgs.builder()
/// .name("production-ssl-policy")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// my-ssl-policy:
/// fn::invoke:
/// function: gcp:compute:getSSLPolicy
/// arguments:
/// name: production-ssl-policy
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSSLPolicyResult> getSSLPolicy(
  GetSSLPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getSSLPolicy:getSSLPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSSLPolicyResult.fromMap(result);
}
