import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_registry_args.dart';
import 'get_registry_result.dart';

/// Provides details about an AWS Agent Registry registry.
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
/// const example = aws.agentregistry.getRegistry({
///     registryId: "registry-id-12345678",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.agentregistry.get_registry(registry_id="registry-id-12345678")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.AgentRegistry.GetRegistry.Invoke(new()
///     {
///         RegistryId = "registry-id-12345678",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/agentregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := agentregistry.LookupRegistry(ctx, &agentregistry.LookupRegistryArgs{
/// 			RegistryId: "registry-id-12345678",
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
/// data "aws_agentregistry_getregistry" "example" {
///   registry_id = "registry-id-12345678"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.agentregistry.AgentregistryFunctions;
/// import com.pulumi.aws.agentregistry.inputs.GetRegistryArgs;
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
///         final var example = AgentregistryFunctions.getRegistry(GetRegistryArgs.builder()
///             .registryId("registry-id-12345678")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:agentregistry:getRegistry
///       arguments:
///         registryId: registry-id-12345678
/// ```
///
///
/// ### Lookup by ARN
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.agentregistry.getRegistry({
///     registryId: "arn:aws:agent-registry:us-west-2:123456789012:registry/registry-id-12345678",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.agentregistry.get_registry(registry_id="arn:aws:agent-registry:us-west-2:123456789012:registry/registry-id-12345678")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.AgentRegistry.GetRegistry.Invoke(new()
///     {
///         RegistryId = "arn:aws:agent-registry:us-west-2:123456789012:registry/registry-id-12345678",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/agentregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := agentregistry.LookupRegistry(ctx, &agentregistry.LookupRegistryArgs{
/// 			RegistryId: "arn:aws:agent-registry:us-west-2:123456789012:registry/registry-id-12345678",
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
/// data "aws_agentregistry_getregistry" "example" {
///   registry_id = "arn:aws:agent-registry:us-west-2:123456789012:registry/registry-id-12345678"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.agentregistry.AgentregistryFunctions;
/// import com.pulumi.aws.agentregistry.inputs.GetRegistryArgs;
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
///         final var example = AgentregistryFunctions.getRegistry(GetRegistryArgs.builder()
///             .registryId("arn:aws:agent-registry:us-west-2:123456789012:registry/registry-id-12345678")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:agentregistry:getRegistry
///       arguments:
///         registryId: arn:aws:agent-registry:us-west-2:123456789012:registry/registry-id-12345678
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_agentregistry_get_registry_get_registry_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistryResult> getRegistry(
  GetRegistryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:agentregistry/getRegistry:getRegistry',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryResult.fromMap(result);
}

pulumi.Output<GetRegistryResult> getRegistryOutput(
  GetRegistryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:agentregistry/getRegistry:getRegistry',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRegistryResult.fromMap);
}
