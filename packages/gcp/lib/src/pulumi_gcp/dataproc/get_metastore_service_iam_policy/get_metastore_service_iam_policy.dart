import 'package:pulumi/pulumi.dart';
import 'get_metastore_service_iam_policy_args.dart';
import 'get_metastore_service_iam_policy_result.dart';

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
/// const policy = gcp.dataproc.getMetastoreServiceIamPolicy({
/// project: _default.project,
/// location: _default.location,
/// serviceId: _default.serviceId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.dataproc.get_metastore_service_iam_policy(project=default["project"],
/// location=default["location"],
/// service_id=default["serviceId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Dataproc.GetMetastoreServiceIamPolicy.Invoke(new()
/// {
/// Project = @default.Project,
/// Location = @default.Location,
/// ServiceId = @default.ServiceId,
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
/// _, err := dataproc.LookupMetastoreServiceIamPolicy(ctx, &dataproc.LookupMetastoreServiceIamPolicyArgs{
/// Project:   pulumi.StringRef(_default.Project),
/// Location:  pulumi.StringRef(_default.Location),
/// ServiceId: _default.ServiceId,
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
/// import com.pulumi.gcp.dataproc.inputs.GetMetastoreServiceIamPolicyArgs;
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
/// final var policy = DataprocFunctions.getMetastoreServiceIamPolicy(GetMetastoreServiceIamPolicyArgs.builder()
/// .project(default_.project())
/// .location(default_.location())
/// .serviceId(default_.serviceId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:dataproc:getMetastoreServiceIamPolicy
/// arguments:
/// project: ${default.project}
/// location: ${default.location}
/// serviceId: ${default.serviceId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetMetastoreServiceIamPolicyResult> getMetastoreServiceIamPolicy(
  GetMetastoreServiceIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataproc/getMetastoreServiceIamPolicy:getMetastoreServiceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMetastoreServiceIamPolicyResult.fromMap(result);
}
