import 'package:pulumi/pulumi.dart';
import 'get_ai_endpoint_iam_policy_args.dart';
import 'get_ai_endpoint_iam_policy_result.dart';

/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.vertex.getAiEndpointIamPolicy({
/// project: endpoint.project,
/// location: endpoint.location,
/// endpoint: endpoint.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.vertex.get_ai_endpoint_iam_policy(project=endpoint["project"],
/// location=endpoint["location"],
/// endpoint=endpoint["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Vertex.GetAiEndpointIamPolicy.Invoke(new()
/// {
/// Project = endpoint.Project,
/// Location = endpoint.Location,
/// Endpoint = endpoint.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := vertex.LookupAiEndpointIamPolicy(ctx, &vertex.LookupAiEndpointIamPolicyArgs{
/// Project:  pulumi.StringRef(endpoint.Project),
/// Location: pulumi.StringRef(endpoint.Location),
/// Endpoint: endpoint.Name,
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
/// import com.pulumi.gcp.vertex.VertexFunctions;
/// import com.pulumi.gcp.vertex.inputs.GetAiEndpointIamPolicyArgs;
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
/// final var policy = VertexFunctions.getAiEndpointIamPolicy(GetAiEndpointIamPolicyArgs.builder()
/// .project(endpoint.project())
/// .location(endpoint.location())
/// .endpoint(endpoint.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:vertex:getAiEndpointIamPolicy
/// arguments:
/// project: ${endpoint.project}
/// location: ${endpoint.location}
/// endpoint: ${endpoint.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAiEndpointIamPolicyResult> getAiEndpointIamPolicy(
  GetAiEndpointIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vertex/getAiEndpointIamPolicy:getAiEndpointIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAiEndpointIamPolicyResult.fromMap(result);
}
