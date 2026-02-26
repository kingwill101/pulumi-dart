import 'package:pulumi/pulumi.dart';
import 'get_instances_args4.dart';
import 'get_instances_result4.dart';

/// Use this data source to get ARNs and Identity Store IDs of Single Sign-On (SSO) Instances.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssoadmin.getInstances({});
/// export const arn = example.then(example => example.arns?.[0]);
/// export const identityStoreId = example.then(example => example.identityStoreIds?.[0]);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// pulumi.export("arn", example.arns[0])
/// pulumi.export("identityStoreId", example.identity_store_ids[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.SsoAdmin.GetInstances.Invoke();
///
/// return new Dictionary<string, object?>
/// {
/// ["arn"] = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
/// ["identityStoreId"] = example.Apply(getInstancesResult => getInstancesResult.IdentityStoreIds[0]),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ssoadmin.GetInstances(ctx, &ssoadmin.GetInstancesArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("arn", example.Arns[0])
/// ctx.Export("identityStoreId", example.IdentityStoreIds[0])
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
/// import com.pulumi.aws.ssoadmin.SsoadminFunctions;
/// import com.pulumi.aws.ssoadmin.inputs.GetInstancesArgs;
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
/// final var example = SsoadminFunctions.getInstances(GetInstancesArgs.builder()
/// .build());
///
/// ctx.export("arn", example.arns()[0]);
/// ctx.export("identityStoreId", example.identityStoreIds()[0]);
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ssoadmin:getInstances
/// arguments: {}
/// outputs:
/// arn: ${example.arns[0]}
/// identityStoreId: ${example.identityStoreIds[0]}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetInstancesResult4> getInstances4(
  GetInstancesArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssoadmin/getInstances:getInstances',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult4.fromMap(result);
}
