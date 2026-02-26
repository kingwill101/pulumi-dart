import 'package:pulumi/pulumi.dart';
import 'get_metastore_database_iam_policy_args.dart';
import 'get_metastore_database_iam_policy_result.dart';

/// Retrieves the current IAM policy data for database
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.dataproc.getMetastoreDatabaseIamPolicy({
/// project: dpmsService.project,
/// location: dpmsService.location,
/// serviceId: dpmsService.serviceId,
/// database: hive.hiveConfig[0].properties.database,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.dataproc.get_metastore_database_iam_policy(project=dpms_service["project"],
/// location=dpms_service["location"],
/// service_id=dpms_service["serviceId"],
/// database=hive["hiveConfig"][0]["properties"]["database"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Dataproc.GetMetastoreDatabaseIamPolicy.Invoke(new()
/// {
/// Project = dpmsService.Project,
/// Location = dpmsService.Location,
/// ServiceId = dpmsService.ServiceId,
/// Database = hive.HiveConfig[0].Properties.Database,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataproc.LookupMetastoreDatabaseIamPolicy(ctx, &dataproc.LookupMetastoreDatabaseIamPolicyArgs{
/// Project:   pulumi.StringRef(dpmsService.Project),
/// Location:  pulumi.StringRef(dpmsService.Location),
/// ServiceId: dpmsService.ServiceId,
/// Database:  hive.HiveConfig[0].Properties.Database,
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
/// import com.pulumi.gcp.dataproc.DataprocFunctions;
/// import com.pulumi.gcp.dataproc.inputs.GetMetastoreDatabaseIamPolicyArgs;
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
/// final var policy = DataprocFunctions.getMetastoreDatabaseIamPolicy(GetMetastoreDatabaseIamPolicyArgs.builder()
/// .project(dpmsService.project())
/// .location(dpmsService.location())
/// .serviceId(dpmsService.serviceId())
/// .database(hive.hiveConfig()[0].properties().database())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:dataproc:getMetastoreDatabaseIamPolicy
/// arguments:
/// project: ${dpmsService.project}
/// location: ${dpmsService.location}
/// serviceId: ${dpmsService.serviceId}
/// database: ${hive.hiveConfig[0].properties.database}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetMetastoreDatabaseIamPolicyResult> getMetastoreDatabaseIamPolicy(
  GetMetastoreDatabaseIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataproc/getMetastoreDatabaseIamPolicy:getMetastoreDatabaseIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMetastoreDatabaseIamPolicyResult.fromMap(result);
}
