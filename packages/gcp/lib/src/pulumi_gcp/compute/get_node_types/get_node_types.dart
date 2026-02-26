import 'package:pulumi/pulumi.dart';
import 'get_node_types_args.dart';
import 'get_node_types_result.dart';

/// Provides available node types for Compute Engine sole-tenant nodes in a zone
/// for a given project. For more information, see [the official documentation](https://cloud.google.com/compute/docs/nodes/#types) and [API](https://cloud.google.com/compute/docs/reference/rest/v1/nodeTypes).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const central1b = gcp.compute.getNodeTypes({
/// zone: "us-central1-b",
/// });
/// const tmpl = new gcp.compute.NodeTemplate("tmpl", {
/// name: "test-tmpl",
/// region: "us-central1",
/// nodeType: types.names[0],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// central1b = gcp.compute.get_node_types(zone="us-central1-b")
/// tmpl = gcp.compute.NodeTemplate("tmpl",
/// name="test-tmpl",
/// region="us-central1",
/// node_type=types["names"][0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var central1b = Gcp.Compute.GetNodeTypes.Invoke(new()
/// {
/// Zone = "us-central1-b",
/// });
///
/// var tmpl = new Gcp.Compute.NodeTemplate("tmpl", new()
/// {
/// Name = "test-tmpl",
/// Region = "us-central1",
/// NodeType = types.Names[0],
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
/// _, err := compute.GetNodeTypes(ctx, &compute.GetNodeTypesArgs{
/// Zone: pulumi.StringRef("us-central1-b"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewNodeTemplate(ctx, "tmpl", &compute.NodeTemplateArgs{
/// Name:     pulumi.String("test-tmpl"),
/// Region:   pulumi.String("us-central1"),
/// NodeType: pulumi.Any(types.Names[0]),
/// })
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
/// import com.pulumi.gcp.compute.inputs.GetNodeTypesArgs;
/// import com.pulumi.gcp.compute.NodeTemplate;
/// import com.pulumi.gcp.compute.NodeTemplateArgs;
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
/// final var central1b = ComputeFunctions.getNodeTypes(GetNodeTypesArgs.builder()
/// .zone("us-central1-b")
/// .build());
///
/// var tmpl = new NodeTemplate("tmpl", NodeTemplateArgs.builder()
/// .name("test-tmpl")
/// .region("us-central1")
/// .nodeType(types.names()[0])
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// tmpl:
/// type: gcp:compute:NodeTemplate
/// properties:
/// name: test-tmpl
/// region: us-central1
/// nodeType: ${types.names[0]}
/// variables:
/// central1b:
/// fn::invoke:
/// function: gcp:compute:getNodeTypes
/// arguments:
/// zone: us-central1-b
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetNodeTypesResult> getNodeTypes(
  GetNodeTypesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getNodeTypes:getNodeTypes',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNodeTypesResult.fromMap(result);
}
