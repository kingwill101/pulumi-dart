import 'package:pulumi/pulumi.dart';
import 'get_db_servers_args.dart';
import 'get_db_servers_result.dart';

/// Data source for manging db servers linked to exadata infrastructure of Oracle Database@AWS.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.odb.getDbServers({
/// cloudExadataInfrastructureId: "exadata_infra_id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.odb.get_db_servers(cloud_exadata_infrastructure_id="exadata_infra_id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Odb.GetDbServers.Invoke(new()
/// {
/// CloudExadataInfrastructureId = "exadata_infra_id",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/odb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := odb.GetDbServers(ctx, &odb.GetDbServersArgs{
/// CloudExadataInfrastructureId: "exadata_infra_id",
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
/// import com.pulumi.aws.odb.OdbFunctions;
/// import com.pulumi.aws.odb.inputs.GetDbServersArgs;
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
/// final var example = OdbFunctions.getDbServers(GetDbServersArgs.builder()
/// .cloudExadataInfrastructureId("exadata_infra_id")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:odb:getDbServers
/// arguments:
/// cloudExadataInfrastructureId: exadata_infra_id
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDbServersResult> getDbServers(
  GetDbServersArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getDbServers:getDbServers',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDbServersResult.fromMap(result);
}
