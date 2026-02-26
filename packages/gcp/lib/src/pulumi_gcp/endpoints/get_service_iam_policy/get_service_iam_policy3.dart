import 'package:pulumi/pulumi.dart';
import 'get_service_iam_policy_args3.dart';
import 'get_service_iam_policy_result3.dart';

/// Retrieves the current IAM policy data for service
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.endpoints.getServiceIamPolicy({
/// serviceName: endpointsService.serviceName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.endpoints.get_service_iam_policy(service_name=endpoints_service["serviceName"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Endpoints.GetServiceIamPolicy.Invoke(new()
/// {
/// ServiceName = endpointsService.ServiceName,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/endpoints"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := endpoints.LookupServiceIamPolicy(ctx, &endpoints.LookupServiceIamPolicyArgs{
/// ServiceName: endpointsService.ServiceName,
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
/// import com.pulumi.gcp.endpoints.EndpointsFunctions;
/// import com.pulumi.gcp.endpoints.inputs.GetServiceIamPolicyArgs;
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
/// final var policy = EndpointsFunctions.getServiceIamPolicy(GetServiceIamPolicyArgs.builder()
/// .serviceName(endpointsService.serviceName())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:endpoints:getServiceIamPolicy
/// arguments:
/// serviceName: ${endpointsService.serviceName}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetServiceIamPolicyResult3> getServiceIamPolicy3(
  GetServiceIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:endpoints/getServiceIamPolicy:getServiceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceIamPolicyResult3.fromMap(result);
}
