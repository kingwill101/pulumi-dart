import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_store_args.dart';
import 'get_policy_store_result.dart';

/// Data source for managing an AWS Verified Permissions Policy Store.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.verifiedpermissions.getPolicyStore({
///     id: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.verifiedpermissions.get_policy_store(id="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.VerifiedPermissions.GetPolicyStore.Invoke(new()
///     {
///         Id = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/verifiedpermissions"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := verifiedpermissions.LookupPolicyStore(ctx, &verifiedpermissions.LookupPolicyStoreArgs{
/// 			Id: "example",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_verifiedpermissions_getpolicystore" "example" {
///   id = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.verifiedpermissions.VerifiedpermissionsFunctions;
/// import com.pulumi.aws.verifiedpermissions.inputs.GetPolicyStoreArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = VerifiedpermissionsFunctions.getPolicyStore(GetPolicyStoreArgs.builder()
///             .id("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:verifiedpermissions:getPolicyStore
///       arguments:
///         id: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_verifiedpermissions_get_policy_store_get_policy_store_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyStoreResult> getPolicyStore(
  GetPolicyStoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:verifiedpermissions/getPolicyStore:getPolicyStore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyStoreResult.fromMap(result);
}
