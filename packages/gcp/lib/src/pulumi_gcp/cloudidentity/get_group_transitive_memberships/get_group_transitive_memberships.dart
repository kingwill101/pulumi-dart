import 'package:pulumi/pulumi.dart';
import 'get_group_transitive_memberships_args.dart';
import 'get_group_transitive_memberships_result.dart';

/// Use this data source to get list of the Cloud Identity Group Memberships within a given Group. Whereas <span pulumi-lang-nodejs="`gcp.cloudidentity.getGroupMemberships`" pulumi-lang-dotnet="`gcp.cloudidentity.getGroupMemberships`" pulumi-lang-go="`cloudidentity.getGroupMemberships`" pulumi-lang-python="`cloudidentity_get_group_memberships`" pulumi-lang-yaml="`gcp.cloudidentity.getGroupMemberships`" pulumi-lang-java="`gcp.cloudidentity.getGroupMemberships`">`gcp.cloudidentity.getGroupMemberships`</span> returns details of only direct members of the group, <span pulumi-lang-nodejs="`gcp.cloudidentity.getGroupTransitiveMemberships`" pulumi-lang-dotnet="`gcp.cloudidentity.getGroupTransitiveMemberships`" pulumi-lang-go="`cloudidentity.getGroupTransitiveMemberships`" pulumi-lang-python="`cloudidentity_get_group_transitive_memberships`" pulumi-lang-yaml="`gcp.cloudidentity.getGroupTransitiveMemberships`" pulumi-lang-java="`gcp.cloudidentity.getGroupTransitiveMemberships`">`gcp.cloudidentity.getGroupTransitiveMemberships`</span> will return details about both direct and indirect members. For example, a user is an indirect member of Group A if the user is a direct member of Group B and Group B is a direct member of Group A.
///
/// To get more information about TransitiveGroupMembership, see:
///
/// * [API documentation](https://cloud.google.com/identity/docs/reference/rest/v1/groups.memberships/searchTransitiveMemberships)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/identity/docs/how-to/memberships-google-groups)
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const members = gcp.cloudidentity.getGroupTransitiveMemberships({
/// group: "groups/123eab45c6defghi",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// members = gcp.cloudidentity.get_group_transitive_memberships(group="groups/123eab45c6defghi")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var members = Gcp.CloudIdentity.GetGroupTransitiveMemberships.Invoke(new()
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
/// _, err := cloudidentity.GetGroupTransitiveMemberships(ctx, &cloudidentity.GetGroupTransitiveMembershipsArgs{
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
/// import com.pulumi.gcp.cloudidentity.inputs.GetGroupTransitiveMembershipsArgs;
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
/// final var members = CloudidentityFunctions.getGroupTransitiveMemberships(GetGroupTransitiveMembershipsArgs.builder()
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
/// function: gcp:cloudidentity:getGroupTransitiveMemberships
/// arguments:
/// group: groups/123eab45c6defghi
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetGroupTransitiveMembershipsResult> getGroupTransitiveMemberships(
  GetGroupTransitiveMembershipsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudidentity/getGroupTransitiveMemberships:getGroupTransitiveMemberships',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGroupTransitiveMembershipsResult.fromMap(result);
}
