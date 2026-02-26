import 'package:pulumi/pulumi.dart';
import 'get_zone_iam_policy_args.dart';
import 'get_zone_iam_policy_result.dart';

/// Retrieves the current IAM policy data for zone
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.dataplex.getZoneIamPolicy({
/// project: example.project,
/// location: example.location,
/// lake: example.lake,
/// dataplexZone: example.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.dataplex.get_zone_iam_policy(project=example["project"],
/// location=example["location"],
/// lake=example["lake"],
/// dataplex_zone=example["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.DataPlex.GetZoneIamPolicy.Invoke(new()
/// {
/// Project = example.Project,
/// Location = example.Location,
/// Lake = example.Lake,
/// DataplexZone = example.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataplex.LookupZoneIamPolicy(ctx, &dataplex.LookupZoneIamPolicyArgs{
/// Project:      pulumi.StringRef(example.Project),
/// Location:     pulumi.StringRef(example.Location),
/// Lake:         example.Lake,
/// DataplexZone: example.Name,
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
/// import com.pulumi.gcp.dataplex.DataplexFunctions;
/// import com.pulumi.gcp.dataplex.inputs.GetZoneIamPolicyArgs;
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
/// final var policy = DataplexFunctions.getZoneIamPolicy(GetZoneIamPolicyArgs.builder()
/// .project(example.project())
/// .location(example.location())
/// .lake(example.lake())
/// .dataplexZone(example.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:dataplex:getZoneIamPolicy
/// arguments:
/// project: ${example.project}
/// location: ${example.location}
/// lake: ${example.lake}
/// dataplexZone: ${example.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetZoneIamPolicyResult> getZoneIamPolicy(
  GetZoneIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataplex/getZoneIamPolicy:getZoneIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetZoneIamPolicyResult.fromMap(result);
}
