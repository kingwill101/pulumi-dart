import 'package:pulumi/pulumi.dart';
import 'get_network_attachment_args.dart';
import 'get_network_attachment_result.dart';

/// Get a specific network attachment within a region. For more information see
/// the [official documentation](https://cloud.google.com/vpc/docs/about-network-attachments)
/// and [API](https://cloud.google.com/compute/docs/reference/rest/v1/networkAttachments/get).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.compute.getNetworkAttachment({
/// project: "my-project",
/// name: "my-network-attachment",
/// region: "europe-west1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.get_network_attachment(project="my-project",
/// name="my-network-attachment",
/// region="europe-west1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = Gcp.Compute.GetNetworkAttachment.Invoke(new()
/// {
/// Project = "my-project",
/// Name = "my-network-attachment",
/// Region = "europe-west1",
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
/// _, err := compute.LookupNetworkAttachment(ctx, &compute.LookupNetworkAttachmentArgs{
/// Project: pulumi.StringRef("my-project"),
/// Name:    "my-network-attachment",
/// Region:  "europe-west1",
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
/// import com.pulumi.gcp.compute.inputs.GetNetworkAttachmentArgs;
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
/// final var default = ComputeFunctions.getNetworkAttachment(GetNetworkAttachmentArgs.builder()
/// .project("my-project")
/// .name("my-network-attachment")
/// .region("europe-west1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// default:
/// fn::invoke:
/// function: gcp:compute:getNetworkAttachment
/// arguments:
/// project: my-project
/// name: my-network-attachment
/// region: europe-west1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetNetworkAttachmentResult> getNetworkAttachment(
  GetNetworkAttachmentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getNetworkAttachment:getNetworkAttachment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworkAttachmentResult.fromMap(result);
}
