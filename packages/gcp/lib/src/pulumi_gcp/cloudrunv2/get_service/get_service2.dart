import 'package:pulumi/pulumi.dart';
import 'get_service_args2.dart';
import 'get_service_result2.dart';

/// Get information about a Google Cloud Run v2 Service. For more information see
/// the [official documentation](https://cloud.google.com/run/docs/)
/// and [API](https://cloud.google.com/run/docs/apis).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myService = gcp.cloudrunv2.getService({
/// name: "my-service",
/// location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_service = gcp.cloudrunv2.get_service(name="my-service",
/// location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myService = Gcp.CloudRunV2.GetService.Invoke(new()
/// {
/// Name = "my-service",
/// Location = "us-central1",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudrunv2.LookupService(ctx, &cloudrunv2.LookupServiceArgs{
/// Name:     "my-service",
/// Location: pulumi.StringRef("us-central1"),
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
/// import com.pulumi.gcp.cloudrunv2.Cloudrunv2Functions;
/// import com.pulumi.gcp.cloudrunv2.inputs.GetServiceArgs;
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
/// final var myService = Cloudrunv2Functions.getService(GetServiceArgs.builder()
/// .name("my-service")
/// .location("us-central1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// myService:
/// fn::invoke:
/// function: gcp:cloudrunv2:getService
/// arguments:
/// name: my-service
/// location: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetServiceResult2> getService2(
  GetServiceArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudrunv2/getService:getService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceResult2.fromMap(result);
}
