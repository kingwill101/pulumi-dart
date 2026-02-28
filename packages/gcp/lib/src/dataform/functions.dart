import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_iam_policy_args.dart';
import 'get_repository_iam_policy_result.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.dataform.getRepositoryIamPolicy({
///     project: dataformRepository.project,
///     region: dataformRepository.region,
///     repository: dataformRepository.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.dataform.get_repository_iam_policy(project=dataform_repository["project"],
///     region=dataform_repository["region"],
///     repository=dataform_repository["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Dataform.GetRepositoryIamPolicy.Invoke(new()
///     {
///         Project = dataformRepository.Project,
///         Region = dataformRepository.Region,
///         Repository = dataformRepository.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataform"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataform.LookupRepositoryIamPolicy(ctx, &dataform.LookupRepositoryIamPolicyArgs{
/// 			Project:    pulumi.StringRef(dataformRepository.Project),
/// 			Region:     pulumi.StringRef(dataformRepository.Region),
/// 			Repository: dataformRepository.Name,
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
/// import com.pulumi.gcp.dataform.DataformFunctions;
/// import com.pulumi.gcp.dataform.inputs.GetRepositoryIamPolicyArgs;
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
///         final var policy = DataformFunctions.getRepositoryIamPolicy(GetRepositoryIamPolicyArgs.builder()
///             .project(dataformRepository.project())
///             .region(dataformRepository.region())
///             .repository(dataformRepository.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:dataform:getRepositoryIamPolicy
///       arguments:
///         project: ${dataformRepository.project}
///         region: ${dataformRepository.region}
///         repository: ${dataformRepository.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dataform_get_repository_iam_policy_get_repository_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRepositoryIamPolicyResult> getRepositoryIamPolicy(
  GetRepositoryIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataform/getRepositoryIamPolicy:getRepositoryIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryIamPolicyResult.fromMap(result);
}
