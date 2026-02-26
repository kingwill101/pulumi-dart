import 'package:pulumi/pulumi.dart';
import 'get_application_args.dart';
import 'get_application_result.dart';

/// Application is a functional grouping of Services and Workloads that helps achieve a desired end-to-end business functionality. Services and Workloads are owned by the Application.
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const application = gcp.apphub.getApplication({
/// project: "project-id",
/// applicationId: "application",
/// location: "location",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// application = gcp.apphub.get_application(project="project-id",
/// application_id="application",
/// location="location")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var application = Gcp.Apphub.GetApplication.Invoke(new()
/// {
/// Project = "project-id",
/// ApplicationId = "application",
/// Location = "location",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apphub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apphub.LookupApplication(ctx, &apphub.LookupApplicationArgs{
/// Project:       "project-id",
/// ApplicationId: "application",
/// Location:      "location",
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
/// import com.pulumi.gcp.apphub.ApphubFunctions;
/// import com.pulumi.gcp.apphub.inputs.GetApplicationArgs;
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
/// final var application = ApphubFunctions.getApplication(GetApplicationArgs.builder()
/// .project("project-id")
/// .applicationId("application")
/// .location("location")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// application:
/// fn::invoke:
/// function: gcp:apphub:getApplication
/// arguments:
/// project: project-id
/// applicationId: application
/// location: location
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetApplicationResult> getApplication(
  GetApplicationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:apphub/getApplication:getApplication',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetApplicationResult.fromMap(result);
}
