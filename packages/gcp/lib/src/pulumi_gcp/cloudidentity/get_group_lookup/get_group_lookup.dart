import 'package:pulumi/pulumi.dart';
import 'get_group_lookup_args.dart';
import 'get_group_lookup_result.dart';

/// Use this data source to look up the resource name of a Cloud Identity Group by its [EntityKey](https://cloud.google.com/identity/docs/reference/rest/v1/EntityKey), i.e. the group's email.
///
/// https://cloud.google.com/identity/docs/concepts/overview#groups
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const group = gcp.cloudidentity.getGroupLookup({
/// groupKey: {
/// id: "my-group@example.com",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// group = gcp.cloudidentity.get_group_lookup(group_key={
/// "id": "my-group@example.com",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @group = Gcp.CloudIdentity.GetGroupLookup.Invoke(new()
/// {
/// GroupKey = new Gcp.CloudIdentity.Inputs.GetGroupLookupGroupKeyInputArgs
/// {
/// Id = "my-group@example.com",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudidentity"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudidentity.GetGroupLookup(ctx, &cloudidentity.GetGroupLookupArgs{
/// GroupKey: cloudidentity.GetGroupLookupGroupKey{
/// Id: "my-group@example.com",
/// },
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
/// import com.pulumi.gcp.cloudidentity.CloudidentityFunctions;
/// import com.pulumi.gcp.cloudidentity.inputs.GetGroupLookupArgs;
/// import com.pulumi.gcp.cloudidentity.inputs.GetGroupLookupGroupKeyArgs;
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
/// final var group = CloudidentityFunctions.getGroupLookup(GetGroupLookupArgs.builder()
/// .groupKey(GetGroupLookupGroupKeyArgs.builder()
/// .id("my-group@example.com")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// group:
/// fn::invoke:
/// function: gcp:cloudidentity:getGroupLookup
/// arguments:
/// groupKey:
/// id: my-group@example.com
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetGroupLookupResult> getGroupLookup(
  GetGroupLookupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudidentity/getGroupLookup:getGroupLookup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGroupLookupResult.fromMap(result);
}
