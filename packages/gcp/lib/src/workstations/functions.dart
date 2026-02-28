import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workstation_config_iam_policy_args.dart';
import 'get_workstation_config_iam_policy_result.dart';
import 'get_workstation_iam_policy_args.dart';
import 'get_workstation_iam_policy_result.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.workstations.getWorkstationConfigIamPolicy({
///     project: _default.project,
///     location: _default.location,
///     workstationClusterId: _default.workstationClusterId,
///     workstationConfigId: _default.workstationConfigId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.workstations.get_workstation_config_iam_policy(project=default["project"],
///     location=default["location"],
///     workstation_cluster_id=default["workstationClusterId"],
///     workstation_config_id=default["workstationConfigId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Workstations.GetWorkstationConfigIamPolicy.Invoke(new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         WorkstationClusterId = @default.WorkstationClusterId,
///         WorkstationConfigId = @default.WorkstationConfigId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workstations.LookupWorkstationConfigIamPolicy(ctx, &workstations.LookupWorkstationConfigIamPolicyArgs{
/// 			Project:              pulumi.StringRef(_default.Project),
/// 			Location:             pulumi.StringRef(_default.Location),
/// 			WorkstationClusterId: _default.WorkstationClusterId,
/// 			WorkstationConfigId:  _default.WorkstationConfigId,
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
/// import com.pulumi.gcp.workstations.WorkstationsFunctions;
/// import com.pulumi.gcp.workstations.inputs.GetWorkstationConfigIamPolicyArgs;
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
///         final var policy = WorkstationsFunctions.getWorkstationConfigIamPolicy(GetWorkstationConfigIamPolicyArgs.builder()
///             .project(default_.project())
///             .location(default_.location())
///             .workstationClusterId(default_.workstationClusterId())
///             .workstationConfigId(default_.workstationConfigId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:workstations:getWorkstationConfigIamPolicy
///       arguments:
///         project: ${default.project}
///         location: ${default.location}
///         workstationClusterId: ${default.workstationClusterId}
///         workstationConfigId: ${default.workstationConfigId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_workstations_get_workstation_config_iam_policy_get_workstation_config_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkstationConfigIamPolicyResult> getWorkstationConfigIamPolicy(
  GetWorkstationConfigIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:workstations/getWorkstationConfigIamPolicy:getWorkstationConfigIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkstationConfigIamPolicyResult.fromMap(result);
}

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.workstations.getWorkstationIamPolicy({
///     project: _default.project,
///     location: _default.location,
///     workstationClusterId: _default.workstationClusterId,
///     workstationConfigId: _default.workstationConfigId,
///     workstationId: _default.workstationId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.workstations.get_workstation_iam_policy(project=default["project"],
///     location=default["location"],
///     workstation_cluster_id=default["workstationClusterId"],
///     workstation_config_id=default["workstationConfigId"],
///     workstation_id=default["workstationId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Workstations.GetWorkstationIamPolicy.Invoke(new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         WorkstationClusterId = @default.WorkstationClusterId,
///         WorkstationConfigId = @default.WorkstationConfigId,
///         WorkstationId = @default.WorkstationId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workstations.LookupWorkstationIamPolicy(ctx, &workstations.LookupWorkstationIamPolicyArgs{
/// 			Project:              pulumi.StringRef(_default.Project),
/// 			Location:             pulumi.StringRef(_default.Location),
/// 			WorkstationClusterId: _default.WorkstationClusterId,
/// 			WorkstationConfigId:  _default.WorkstationConfigId,
/// 			WorkstationId:        _default.WorkstationId,
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
/// import com.pulumi.gcp.workstations.WorkstationsFunctions;
/// import com.pulumi.gcp.workstations.inputs.GetWorkstationIamPolicyArgs;
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
///         final var policy = WorkstationsFunctions.getWorkstationIamPolicy(GetWorkstationIamPolicyArgs.builder()
///             .project(default_.project())
///             .location(default_.location())
///             .workstationClusterId(default_.workstationClusterId())
///             .workstationConfigId(default_.workstationConfigId())
///             .workstationId(default_.workstationId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:workstations:getWorkstationIamPolicy
///       arguments:
///         project: ${default.project}
///         location: ${default.location}
///         workstationClusterId: ${default.workstationClusterId}
///         workstationConfigId: ${default.workstationConfigId}
///         workstationId: ${default.workstationId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_workstations_get_workstation_iam_policy_get_workstation_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkstationIamPolicyResult> getWorkstationIamPolicy(
  GetWorkstationIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:workstations/getWorkstationIamPolicy:getWorkstationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkstationIamPolicyResult.fromMap(result);
}
