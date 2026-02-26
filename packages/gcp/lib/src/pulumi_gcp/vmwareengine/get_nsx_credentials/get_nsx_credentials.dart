import 'package:pulumi/pulumi.dart';
import 'get_nsx_credentials_args.dart';
import 'get_nsx_credentials_result.dart';

/// Use this data source to get NSX credentials for a Private Cloud.
///
/// To get more information about private cloud NSX credentials, see:
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.privateClouds/showNsxCredentials)
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const ds = gcp.vmwareengine.getNsxCredentials({
/// parent: "projects/my-project/locations/us-west1-a/privateClouds/my-cloud",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ds = gcp.vmwareengine.get_nsx_credentials(parent="projects/my-project/locations/us-west1-a/privateClouds/my-cloud")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var ds = Gcp.VMwareEngine.GetNsxCredentials.Invoke(new()
/// {
/// Parent = "projects/my-project/locations/us-west1-a/privateClouds/my-cloud",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := vmwareengine.GetNsxCredentials(ctx, &vmwareengine.GetNsxCredentialsArgs{
/// Parent: "projects/my-project/locations/us-west1-a/privateClouds/my-cloud",
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
/// import com.pulumi.gcp.vmwareengine.VmwareengineFunctions;
/// import com.pulumi.gcp.vmwareengine.inputs.GetNsxCredentialsArgs;
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
/// final var ds = VmwareengineFunctions.getNsxCredentials(GetNsxCredentialsArgs.builder()
/// .parent("projects/my-project/locations/us-west1-a/privateClouds/my-cloud")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// ds:
/// fn::invoke:
/// function: gcp:vmwareengine:getNsxCredentials
/// arguments:
/// parent: projects/my-project/locations/us-west1-a/privateClouds/my-cloud
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetNsxCredentialsResult> getNsxCredentials(
  GetNsxCredentialsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getNsxCredentials:getNsxCredentials',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNsxCredentialsResult.fromMap(result);
}
