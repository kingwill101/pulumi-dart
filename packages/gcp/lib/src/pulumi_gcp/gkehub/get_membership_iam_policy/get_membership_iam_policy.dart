import 'package:pulumi/pulumi.dart';
import 'get_membership_iam_policy_args.dart';
import 'get_membership_iam_policy_result.dart';

/// Retrieves the current IAM policy data for membership
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.gkehub.getMembershipIamPolicy({
/// project: membership.project,
/// location: membership.location,
/// membershipId: membership.membershipId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.gkehub.get_membership_iam_policy(project=membership["project"],
/// location=membership["location"],
/// membership_id=membership["membershipId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.GkeHub.GetMembershipIamPolicy.Invoke(new()
/// {
/// Project = membership.Project,
/// Location = membership.Location,
/// MembershipId = membership.MembershipId,
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
/// _, err := gkehub.LookupMembershipIamPolicy(ctx, &gkehub.LookupMembershipIamPolicyArgs{
/// Project:      pulumi.StringRef(membership.Project),
/// Location:     pulumi.StringRef(membership.Location),
/// MembershipId: membership.MembershipId,
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
/// import com.pulumi.gcp.gkehub.inputs.GetMembershipIamPolicyArgs;
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
/// final var policy = GkehubFunctions.getMembershipIamPolicy(GetMembershipIamPolicyArgs.builder()
/// .project(membership.project())
/// .location(membership.location())
/// .membershipId(membership.membershipId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:gkehub:getMembershipIamPolicy
/// arguments:
/// project: ${membership.project}
/// location: ${membership.location}
/// membershipId: ${membership.membershipId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetMembershipIamPolicyResult> getMembershipIamPolicy(
  GetMembershipIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:gkehub/getMembershipIamPolicy:getMembershipIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMembershipIamPolicyResult.fromMap(result);
}
