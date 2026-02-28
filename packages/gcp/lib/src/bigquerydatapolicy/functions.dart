import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_iam_policy_args.dart';
import 'get_iam_policy_result.dart';

/// Retrieves the current IAM policy data for datapolicy
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.bigquerydatapolicy.getIamPolicy({
///     project: dataPolicy.project,
///     location: dataPolicy.location,
///     dataPolicyId: dataPolicy.dataPolicyId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.bigquerydatapolicy.get_iam_policy(project=data_policy["project"],
///     location=data_policy["location"],
///     data_policy_id=data_policy["dataPolicyId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.BigQueryDataPolicy.GetIamPolicy.Invoke(new()
///     {
///         Project = dataPolicy.Project,
///         Location = dataPolicy.Location,
///         DataPolicyId = dataPolicy.DataPolicyId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquerydatapolicy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigquerydatapolicy.GetIamPolicy(ctx, &bigquerydatapolicy.GetIamPolicyArgs{
/// 			Project:      pulumi.StringRef(dataPolicy.Project),
/// 			Location:     pulumi.StringRef(dataPolicy.Location),
/// 			DataPolicyId: dataPolicy.DataPolicyId,
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
/// import com.pulumi.gcp.bigquerydatapolicy.BigquerydatapolicyFunctions;
/// import com.pulumi.gcp.bigquerydatapolicy.inputs.GetIamPolicyArgs;
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
///         final var policy = BigquerydatapolicyFunctions.getIamPolicy(GetIamPolicyArgs.builder()
///             .project(dataPolicy.project())
///             .location(dataPolicy.location())
///             .dataPolicyId(dataPolicy.dataPolicyId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:bigquerydatapolicy:getIamPolicy
///       arguments:
///         project: ${dataPolicy.project}
///         location: ${dataPolicy.location}
///         dataPolicyId: ${dataPolicy.dataPolicyId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_bigquerydatapolicy_get_iam_policy_get_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIamPolicyResult> getIamPolicy(
  GetIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigquerydatapolicy/getIamPolicy:getIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIamPolicyResult.fromMap(result);
}
