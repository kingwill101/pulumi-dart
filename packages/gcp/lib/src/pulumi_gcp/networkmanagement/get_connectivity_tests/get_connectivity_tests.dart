import 'package:pulumi/pulumi.dart';
import 'get_connectivity_tests_args.dart';
import 'get_connectivity_tests_result.dart';

/// A connectivity test is a static analysis of your resource configurations
/// that enables you to evaluate connectivity to and from Google Cloud
/// resources in your Virtual Private Cloud (VPC) network. This data source allows
/// you to list connectivity tests in a project.
///
/// To get more information about connectivity tests, see:
///
/// * [API documentation](https://cloud.google.com/network-intelligence-center/docs/reference/networkmanagement/rest/v1/projects.locations.global.connectivityTests/rerun)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/network-intelligence-center/docs)
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const tests = gcp.networkmanagement.getConnectivityTests({
/// filter: "name:projects/project-id/locations/global/connectivityTests/my-tests",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// tests = gcp.networkmanagement.get_connectivity_tests(filter="name:projects/project-id/locations/global/connectivityTests/my-tests")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var tests = Gcp.NetworkManagement.GetConnectivityTests.Invoke(new()
/// {
/// Filter = "name:projects/project-id/locations/global/connectivityTests/my-tests",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkmanagement"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networkmanagement.GetConnectivityTests(ctx, &networkmanagement.GetConnectivityTestsArgs{
/// Filter: pulumi.StringRef("name:projects/project-id/locations/global/connectivityTests/my-tests"),
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
/// import com.pulumi.gcp.networkmanagement.NetworkmanagementFunctions;
/// import com.pulumi.gcp.networkmanagement.inputs.GetConnectivityTestsArgs;
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
/// final var tests = NetworkmanagementFunctions.getConnectivityTests(GetConnectivityTestsArgs.builder()
/// .filter("name:projects/project-id/locations/global/connectivityTests/my-tests")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// tests:
/// fn::invoke:
/// function: gcp:networkmanagement:getConnectivityTests
/// arguments:
/// filter: name:projects/project-id/locations/global/connectivityTests/my-tests
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetConnectivityTestsResult> getConnectivityTests(
  GetConnectivityTestsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:networkmanagement/getConnectivityTests:getConnectivityTests',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectivityTestsResult.fromMap(result);
}
