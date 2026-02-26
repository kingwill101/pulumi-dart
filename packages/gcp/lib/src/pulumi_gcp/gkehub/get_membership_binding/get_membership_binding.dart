import 'package:pulumi/pulumi.dart';
import 'get_membership_binding_args.dart';
import 'get_membership_binding_result.dart';

/// Retrieves the details of a specific GKE Hub Membership Binding. Use this data source to retrieve the membership binding's configuration and state.
///
/// A membership binding associates a GKE Hub membership with a scope, enabling the membership to participate in fleet-wide configurations and policies defined by the scope.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = gcp.gkehub.getMembershipBinding({
/// location: "global",
/// membershipId: "my-membership-id",
/// membershipBindingId: "my-membership-binding-id",
/// project: "my-project-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.gkehub.get_membership_binding(location="global",
/// membership_id="my-membership-id",
/// membership_binding_id="my-membership-binding-id",
/// project="my-project-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Gcp.GkeHub.GetMembershipBinding.Invoke(new()
/// {
/// Location = "global",
/// MembershipId = "my-membership-id",
/// MembershipBindingId = "my-membership-binding-id",
/// Project = "my-project-id",
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
/// _, err := gkehub.LookupMembershipBinding(ctx, &gkehub.LookupMembershipBindingArgs{
/// Location:            "global",
/// MembershipId:        "my-membership-id",
/// MembershipBindingId: "my-membership-binding-id",
/// Project:             pulumi.StringRef("my-project-id"),
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
/// import com.pulumi.gcp.gkehub.inputs.GetMembershipBindingArgs;
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
/// final var example = GkehubFunctions.getMembershipBinding(GetMembershipBindingArgs.builder()
/// .location("global")
/// .membershipId("my-membership-id")
/// .membershipBindingId("my-membership-binding-id")
/// .project("my-project-id")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: gcp:gkehub:getMembershipBinding
/// arguments:
/// location: global
/// membershipId: my-membership-id
/// membershipBindingId: my-membership-binding-id
/// project: my-project-id
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetMembershipBindingResult> getMembershipBinding(
  GetMembershipBindingArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:gkehub/getMembershipBinding:getMembershipBinding',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMembershipBindingResult.fromMap(result);
}
