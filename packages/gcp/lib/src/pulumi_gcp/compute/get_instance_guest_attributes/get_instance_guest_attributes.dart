import 'package:pulumi/pulumi.dart';
import 'get_instance_guest_attributes_args.dart';
import 'get_instance_guest_attributes_result.dart';

/// Get information about a VM instance resource within GCE. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/instances)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/latest/instances).
///
/// Get information about VM's guest attrubutes. For more information see [the official documentation](https://cloud.google.com/compute/docs/metadata/manage-guest-attributes)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/rest/v1/instances/getGuestAttributes).
///
/// ## Example Usage
///
/// ### Get All Attributes From A Single Namespace
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const appserverGa = gcp.compute.getInstanceGuestAttributes({
/// name: "primary-application-server",
/// zone: "us-central1-a",
/// queryPath: "variables/",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// appserver_ga = gcp.compute.get_instance_guest_attributes(name="primary-application-server",
/// zone="us-central1-a",
/// query_path="variables/")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var appserverGa = Gcp.Compute.GetInstanceGuestAttributes.Invoke(new()
/// {
/// Name = "primary-application-server",
/// Zone = "us-central1-a",
/// QueryPath = "variables/",
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
/// _, err := compute.GetInstanceGuestAttributes(ctx, &compute.GetInstanceGuestAttributesArgs{
/// Name:      "primary-application-server",
/// Zone:      pulumi.StringRef("us-central1-a"),
/// QueryPath: pulumi.StringRef("variables/"),
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
/// import com.pulumi.gcp.compute.inputs.GetInstanceGuestAttributesArgs;
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
/// final var appserverGa = ComputeFunctions.getInstanceGuestAttributes(GetInstanceGuestAttributesArgs.builder()
/// .name("primary-application-server")
/// .zone("us-central1-a")
/// .queryPath("variables/")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// appserverGa:
/// fn::invoke:
/// function: gcp:compute:getInstanceGuestAttributes
/// arguments:
/// name: primary-application-server
/// zone: us-central1-a
/// queryPath: variables/
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Get A Specific Variable
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const appserverGa = gcp.compute.getInstanceGuestAttributes({
/// name: "primary-application-server",
/// zone: "us-central1-a",
/// variableKey: "variables/key1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// appserver_ga = gcp.compute.get_instance_guest_attributes(name="primary-application-server",
/// zone="us-central1-a",
/// variable_key="variables/key1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var appserverGa = Gcp.Compute.GetInstanceGuestAttributes.Invoke(new()
/// {
/// Name = "primary-application-server",
/// Zone = "us-central1-a",
/// VariableKey = "variables/key1",
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
/// _, err := compute.GetInstanceGuestAttributes(ctx, &compute.GetInstanceGuestAttributesArgs{
/// Name:        "primary-application-server",
/// Zone:        pulumi.StringRef("us-central1-a"),
/// VariableKey: pulumi.StringRef("variables/key1"),
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
/// import com.pulumi.gcp.compute.inputs.GetInstanceGuestAttributesArgs;
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
/// final var appserverGa = ComputeFunctions.getInstanceGuestAttributes(GetInstanceGuestAttributesArgs.builder()
/// .name("primary-application-server")
/// .zone("us-central1-a")
/// .variableKey("variables/key1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// appserverGa:
/// fn::invoke:
/// function: gcp:compute:getInstanceGuestAttributes
/// arguments:
/// name: primary-application-server
/// zone: us-central1-a
/// variableKey: variables/key1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetInstanceGuestAttributesResult> getInstanceGuestAttributes(
  GetInstanceGuestAttributesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getInstanceGuestAttributes:getInstanceGuestAttributes',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceGuestAttributesResult.fromMap(result);
}
