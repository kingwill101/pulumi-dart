import 'package:pulumi/pulumi.dart';
import 'get_metastore_federation_iam_policy_args.dart';
import 'get_metastore_federation_iam_policy_result.dart';

/// Retrieves the current IAM policy data for federation
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.dataproc.getMetastoreFederationIamPolicy({
/// project: _default.project,
/// location: _default.location,
/// federationId: _default.federationId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.dataproc.get_metastore_federation_iam_policy(project=default["project"],
/// location=default["location"],
/// federation_id=default["federationId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Dataproc.GetMetastoreFederationIamPolicy.Invoke(new()
/// {
/// Project = @default.Project,
/// Location = @default.Location,
/// FederationId = @default.FederationId,
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
/// _, err := dataproc.LookupMetastoreFederationIamPolicy(ctx, &dataproc.LookupMetastoreFederationIamPolicyArgs{
/// Project:      pulumi.StringRef(_default.Project),
/// Location:     pulumi.StringRef(_default.Location),
/// FederationId: _default.FederationId,
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
/// import com.pulumi.gcp.dataproc.inputs.GetMetastoreFederationIamPolicyArgs;
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
/// final var policy = DataprocFunctions.getMetastoreFederationIamPolicy(GetMetastoreFederationIamPolicyArgs.builder()
/// .project(default_.project())
/// .location(default_.location())
/// .federationId(default_.federationId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:dataproc:getMetastoreFederationIamPolicy
/// arguments:
/// project: ${default.project}
/// location: ${default.location}
/// federationId: ${default.federationId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetMetastoreFederationIamPolicyResult> getMetastoreFederationIamPolicy(
  GetMetastoreFederationIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataproc/getMetastoreFederationIamPolicy:getMetastoreFederationIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMetastoreFederationIamPolicyResult.fromMap(result);
}
