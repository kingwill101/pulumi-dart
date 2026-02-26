import 'package:pulumi/pulumi.dart';
import 'get_membership_args.dart';
import 'get_membership_result.dart';

/// Retrieves the details of a specific GKE Hub Membership. Use this data source to retrieve the membership's configuration and state.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = gcp.gkehub.getMembership({
/// project: "my-project-id",
/// location: "global",
/// membershipId: "my-membership-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.gkehub.get_membership(project="my-project-id",
/// location="global",
/// membership_id="my-membership-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Gcp.GkeHub.GetMembership.Invoke(new()
/// {
/// Project = "my-project-id",
/// Location = "global",
/// MembershipId = "my-membership-id",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := gkehub.LookupMembership(ctx, &gkehub.LookupMembershipArgs{
/// Project:      pulumi.StringRef("my-project-id"),
/// Location:     "global",
/// MembershipId: "my-membership-id",
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
/// import com.pulumi.gcp.gkehub.GkehubFunctions;
/// import com.pulumi.gcp.gkehub.inputs.GetMembershipArgs;
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
/// final var example = GkehubFunctions.getMembership(GetMembershipArgs.builder()
/// .project("my-project-id")
/// .location("global")
/// .membershipId("my-membership-id")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: gcp:gkehub:getMembership
/// arguments:
/// project: my-project-id
/// location: global
/// membershipId: my-membership-id
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetMembershipResult> getMembership(
  GetMembershipArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:gkehub/getMembership:getMembership',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMembershipResult.fromMap(result);
}
