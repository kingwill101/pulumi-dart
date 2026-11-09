import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dataset_integration_args.dart';
import 'get_dataset_integration_result.dart';

/// Provides details about the CloudWatch Observability Admin Dataset Integration for the current account and Region. Reading fails if no dataset integration exists in the Region.
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
/// const example = aws.observabilityadmin.getDatasetIntegration({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.observabilityadmin.get_dataset_integration()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Observabilityadmin.GetDatasetIntegration.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/observabilityadmin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := observabilityadmin.LookupDatasetIntegration(ctx, &observabilityadmin.LookupDatasetIntegrationArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_observabilityadmin_dataset_integration" "example" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.observabilityadmin.ObservabilityadminFunctions;
/// import com.pulumi.aws.observabilityadmin.inputs.GetDatasetIntegrationArgs;
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
///         final var example = ObservabilityadminFunctions.getDatasetIntegration(GetDatasetIntegrationArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:observabilityadmin:getDatasetIntegration
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_observabilityadmin_get_dataset_integration_get_dataset_integration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetIntegrationResult> getDatasetIntegration(
  GetDatasetIntegrationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:observabilityadmin/getDatasetIntegration:getDatasetIntegration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetIntegrationResult.fromMap(result);
}

pulumi.Output<GetDatasetIntegrationResult> getDatasetIntegrationOutput(
  GetDatasetIntegrationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:observabilityadmin/getDatasetIntegration:getDatasetIntegration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatasetIntegrationResult.fromMap);
}
