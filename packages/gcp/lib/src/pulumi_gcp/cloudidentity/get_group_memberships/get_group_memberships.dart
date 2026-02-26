import 'package:pulumi/pulumi.dart';
import 'get_group_memberships_args.dart';
import 'get_group_memberships_result.dart';

/// Use this data source to get list of the Cloud Identity Group Memberships within a given Group.
///
/// https://cloud.google.com/identity/docs/concepts/overview#memberships
///
/// To get more information about GroupMembership, see:
///
/// * [API documentation](https://cloud.google.com/identity/docs/reference/rest/v1/groups.memberships)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/identity/docs/how-to/memberships-google-groups)
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const members = gcp.cloudidentity.getGroupMemberships({
/// group: "groups/123eab45c6defghi",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// members = gcp.cloudidentity.get_group_memberships(group="groups/123eab45c6defghi")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var members = Gcp.CloudIdentity.GetGroupMemberships.Invoke(new()
/// {
/// Group = "groups/123eab45c6defghi",
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
/// _, err := cloudidentity.GetGroupMemberships(ctx, &cloudidentity.GetGroupMembershipsArgs{
/// Group: "groups/123eab45c6defghi",
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
/// import com.pulumi.gcp.cloudidentity.inputs.GetGroupMembershipsArgs;
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
/// final var members = CloudidentityFunctions.getGroupMemberships(GetGroupMembershipsArgs.builder()
/// .group("groups/123eab45c6defghi")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// members:
/// fn::invoke:
/// function: gcp:cloudidentity:getGroupMemberships
/// arguments:
/// group: groups/123eab45c6defghi
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetGroupMembershipsResult> getGroupMemberships(
  GetGroupMembershipsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudidentity/getGroupMemberships:getGroupMemberships',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGroupMembershipsResult.fromMap(result);
}
