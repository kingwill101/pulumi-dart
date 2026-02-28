import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entitlement_args.dart';
import 'get_entitlement_result.dart';

/// Use this data source to get information about a Google Cloud Privileged Access Manager Entitlement.
///
/// To get more information about Privileged Access Manager, see:
///
/// * [API Documentation](https://cloud.google.com/iam/docs/reference/pam/rest)
/// * How-to guides
/// * [Official documentation](https://cloud.google.com/iam/docs/pam-overview)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_entitlement = gcp.privilegedaccessmanager.getEntitlement({
///     parent: "projects/my-project",
///     location: "global",
///     entitlementId: "my-entitlement",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_entitlement = gcp.privilegedaccessmanager.get_entitlement(parent="projects/my-project",
///     location="global",
///     entitlement_id="my-entitlement")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_entitlement = Gcp.PrivilegedAccessManager.GetEntitlement.Invoke(new()
///     {
///         Parent = "projects/my-project",
///         Location = "global",
///         EntitlementId = "my-entitlement",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/privilegedaccessmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := privilegedaccessmanager.LookupEntitlement(ctx, &privilegedaccessmanager.LookupEntitlementArgs{
/// 			Parent:        pulumi.StringRef("projects/my-project"),
/// 			Location:      pulumi.StringRef("global"),
/// 			EntitlementId: pulumi.StringRef("my-entitlement"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.privilegedaccessmanager.PrivilegedaccessmanagerFunctions;
/// import com.pulumi.gcp.privilegedaccessmanager.inputs.GetEntitlementArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var my-entitlement = PrivilegedaccessmanagerFunctions.getEntitlement(GetEntitlementArgs.builder()
///             .parent("projects/my-project")
///             .location("global")
///             .entitlementId("my-entitlement")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-entitlement:
///     fn::invoke:
///       function: gcp:privilegedaccessmanager:getEntitlement
///       arguments:
///         parent: projects/my-project
///         location: global
///         entitlementId: my-entitlement
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_privilegedaccessmanager_get_entitlement_get_entitlement_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntitlementResult> getEntitlement(
  GetEntitlementArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:privilegedaccessmanager/getEntitlement:getEntitlement',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntitlementResult.fromMap(result);
}
