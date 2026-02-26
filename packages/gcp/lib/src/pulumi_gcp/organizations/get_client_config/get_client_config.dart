import 'package:pulumi/pulumi.dart';
import 'get_client_config_result.dart';

/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const current = gcp.organizations.getClientConfig({});
/// export const project = current.then(current => current.project);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// current = gcp.organizations.get_client_config()
/// pulumi.export("project", current.project)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var current = Gcp.Organizations.GetClientConfig.Invoke();
///
/// return new Dictionary<string, object?>
/// {
/// ["project"] = current.Apply(getClientConfigResult => getClientConfigResult.Project),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := organizations.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("project", current.Project)
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
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
/// final var current = OrganizationsFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
/// ctx.export("project", current.project());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// current:
/// fn::invoke:
/// function: gcp:organizations:getClientConfig
/// arguments: {}
/// outputs:
/// project: ${current.project}
/// ```
/// <!--End PulumiCodeChooser -->
///
///
/// ### Configure Kubernetes Provider With OAuth2 Access Token
///
/// <!--Start PulumiCodeChooser -->
/// ```yaml
/// variables:
/// default:
/// fn::invoke:
/// function: gcp:organizations:getClientConfig
/// arguments: {}
/// myCluster:
/// fn::invoke:
/// function: gcp:container:getCluster
/// arguments:
/// name: my-cluster
/// zone: us-east1-a
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetClientConfigResult> getClientConfig({
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getClientConfig:getClientConfig',
    const <String, dynamic>{},
    options: toDeploymentInvokeOptions(options),
  );
  return GetClientConfigResult.fromMap(result);
}
