import 'package:pulumi/pulumi.dart';
import 'get_cloud_exadata_infrastructure_args.dart';
import 'get_cloud_exadata_infrastructure_result.dart';

/// Get information about an ExadataInfrastructure.
///
/// For more information see the
/// [API](https://cloud.google.com/oracle/database/docs/reference/rest/v1/projects.locations.cloudExadataInfrastructures).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_instance = gcp.oracledatabase.getCloudExadataInfrastructure({
/// location: "us-east4",
/// cloudExadataInfrastructureId: "exadata-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_instance = gcp.oracledatabase.get_cloud_exadata_infrastructure(location="us-east4",
/// cloud_exadata_infrastructure_id="exadata-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_instance = Gcp.OracleDatabase.GetCloudExadataInfrastructure.Invoke(new()
/// {
/// Location = "us-east4",
/// CloudExadataInfrastructureId = "exadata-id",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := oracledatabase.LookupCloudExadataInfrastructure(ctx, &oracledatabase.LookupCloudExadataInfrastructureArgs{
/// Location:                     "us-east4",
/// CloudExadataInfrastructureId: "exadata-id",
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
/// import com.pulumi.gcp.oracledatabase.OracledatabaseFunctions;
/// import com.pulumi.gcp.oracledatabase.inputs.GetCloudExadataInfrastructureArgs;
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
/// final var my-instance = OracledatabaseFunctions.getCloudExadataInfrastructure(GetCloudExadataInfrastructureArgs.builder()
/// .location("us-east4")
/// .cloudExadataInfrastructureId("exadata-id")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// my-instance:
/// fn::invoke:
/// function: gcp:oracledatabase:getCloudExadataInfrastructure
/// arguments:
/// location: us-east4
/// cloudExadataInfrastructureId: exadata-id
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetCloudExadataInfrastructureResult> getCloudExadataInfrastructure(
  GetCloudExadataInfrastructureArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:oracledatabase/getCloudExadataInfrastructure:getCloudExadataInfrastructure',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCloudExadataInfrastructureResult.fromMap(result);
}
