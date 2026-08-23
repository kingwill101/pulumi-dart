import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_specification_version_args.dart';
import 'environment_specification_version_response.dart';
import 'system_data_response.dart';

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2021-03-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-03-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdate Environment Specification Version.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var environmentSpecificationVersion = new AzureNative.MachineLearningServices.EnvironmentSpecificationVersion("environmentSpecificationVersion", new()
///     {
///         Name = "testEnvironment",
///         Properties = new AzureNative.MachineLearningServices.Inputs.EnvironmentSpecificationVersionArgs
///         {
///             CondaFile = @"channels:
/// - defaults
/// dependencies:
/// - python=3.7.7
/// name: my-env",
///             Description = "string",
///             Docker = new AzureNative.MachineLearningServices.Inputs.DockerBuildArgs
///             {
///                 DockerSpecificationType = "Build",
///                 Dockerfile = "FROM myimage",
///             },
///             Properties =
///             {
///                 { "additionalProp1", "string" },
///                 { "additionalProp2", "string" },
///                 { "additionalProp3", "string" },
///             },
///             Tags =
///             {
///                 { "additionalProp1", "string" },
///                 { "additionalProp2", "string" },
///                 { "additionalProp3", "string" },
///             },
///         },
///         ResourceGroupName = "testrg123",
///         Version = "1",
///         WorkspaceName = "testworkspace",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	machinelearningservices "github.com/pulumi/pulumi-azure-native-sdk/machinelearningservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := machinelearningservices.NewEnvironmentSpecificationVersion(ctx, "environmentSpecificationVersion", &machinelearningservices.EnvironmentSpecificationVersionArgs{
/// 			Name: pulumi.String("testEnvironment"),
/// 			Properties: &machinelearningservices.EnvironmentSpecificationVersionTypeArgs{
/// 				CondaFile:   pulumi.String("channels:\n- defaults\ndependencies:\n- python=3.7.7\nname: my-env"),
/// 				Description: pulumi.String("string"),
/// 				Docker: machinelearningservices.DockerBuild{
/// 					DockerSpecificationType: "Build",
/// 					Dockerfile:              "FROM myimage",
/// 				},
/// 				Properties: pulumi.StringMap{
/// 					"additionalProp1": pulumi.String("string"),
/// 					"additionalProp2": pulumi.String("string"),
/// 					"additionalProp3": pulumi.String("string"),
/// 				},
/// 				Tags: pulumi.StringMap{
/// 					"additionalProp1": pulumi.String("string"),
/// 					"additionalProp2": pulumi.String("string"),
/// 					"additionalProp3": pulumi.String("string"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("testrg123"),
/// 			Version:           pulumi.String("1"),
/// 			WorkspaceName:     pulumi.String("testworkspace"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_machinelearningservices_environmentspecificationversion" "environmentSpecificationVersion" {
///   name = "testEnvironment"
///   properties = {
///     conda_file  = "channels:\n- defaults\ndependencies:\n- python=3.7.7\nname: my-env"
///     description = "string"
///     docker = {
///       "dockerSpecificationType" = "Build"
///       "dockerfile"              = "FROM myimage"
///     }
///     properties = {
///       "additionalProp1" = "string"
///       "additionalProp2" = "string"
///       "additionalProp3" = "string"
///     }
///     tags = {
///       "additionalProp1" = "string"
///       "additionalProp2" = "string"
///       "additionalProp3" = "string"
///     }
///   }
///   resource_group_name = "testrg123"
///   version             = "1"
///   workspace_name      = "testworkspace"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.machinelearningservices.EnvironmentSpecificationVersion;
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
///         var environmentSpecificationVersion = new EnvironmentSpecificationVersion("environmentSpecificationVersion", EnvironmentSpecificationVersionArgs.builder()
///             .name("testEnvironment")
///             .properties(EnvironmentSpecificationVersionArgs.builder()
///                 .condaFile("""
/// channels:
/// - defaults
/// dependencies:
/// - python=3.7.7
/// name: my-env                """)
///                 .description("string")
///                 .docker(DockerBuildArgs.builder()
///                     .dockerSpecificationType("Build")
///                     .dockerfile("FROM myimage")
///                     .build())
///                 .properties(Map.ofEntries(
///                     Map.entry("additionalProp1", "string"),
///                     Map.entry("additionalProp2", "string"),
///                     Map.entry("additionalProp3", "string")
///                 ))
///                 .tags(Map.ofEntries(
///                     Map.entry("additionalProp1", "string"),
///                     Map.entry("additionalProp2", "string"),
///                     Map.entry("additionalProp3", "string")
///                 ))
///                 .build())
///             .resourceGroupName("testrg123")
///             .version("1")
///             .workspaceName("testworkspace")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const environmentSpecificationVersion = new azure_native.machinelearningservices.EnvironmentSpecificationVersion("environmentSpecificationVersion", {
///     name: "testEnvironment",
///     properties: {
///         condaFile: `channels:
/// - defaults
/// dependencies:
/// - python=3.7.7
/// name: my-env`,
///         description: "string",
///         docker: {
///             dockerSpecificationType: "Build",
///             dockerfile: "FROM myimage",
///         },
///         properties: {
///             additionalProp1: "string",
///             additionalProp2: "string",
///             additionalProp3: "string",
///         },
///         tags: {
///             additionalProp1: "string",
///             additionalProp2: "string",
///             additionalProp3: "string",
///         },
///     },
///     resourceGroupName: "testrg123",
///     version: "1",
///     workspaceName: "testworkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// environment_specification_version = azure_native.machinelearningservices.EnvironmentSpecificationVersion("environmentSpecificationVersion",
///     name="testEnvironment",
///     properties={
///         "conda_file": """channels:
/// - defaults
/// dependencies:
/// - python=3.7.7
/// name: my-env""",
///         "description": "string",
///         "docker": {
///             "docker_specification_type": "Build",
///             "dockerfile": "FROM myimage",
///         },
///         "properties": {
///             "additionalProp1": "string",
///             "additionalProp2": "string",
///             "additionalProp3": "string",
///         },
///         "tags": {
///             "additionalProp1": "string",
///             "additionalProp2": "string",
///             "additionalProp3": "string",
///         },
///     },
///     resource_group_name="testrg123",
///     version="1",
///     workspace_name="testworkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   environmentSpecificationVersion:
///     type: azure-native:machinelearningservices:EnvironmentSpecificationVersion
///     properties:
///       name: testEnvironment
///       properties:
///         condaFile: |-
///           channels:
///           - defaults
///           dependencies:
///           - python=3.7.7
///           name: my-env
///         description: string
///         docker:
///           dockerSpecificationType: Build
///           dockerfile: FROM myimage
///         properties:
///           additionalProp1: string
///           additionalProp2: string
///           additionalProp3: string
///         tags:
///           additionalProp1: string
///           additionalProp2: string
///           additionalProp3: string
///       resourceGroupName: testrg123
///       version: '1'
///       workspaceName: testworkspace
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:machinelearningservices:EnvironmentSpecificationVersion 1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/workspaces/{workspaceName}/environments/{name}/versions/{version}
/// ```
class EnvironmentSpecificationVersionMachinelearningservices extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// [Required] Additional attributes of the entity.
  late final pulumi.Output<EnvironmentSpecificationVersionResponse> properties;
  /// System data associated with resource provider
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EnvironmentSpecificationVersionMachinelearningservices].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvironmentSpecificationVersionMachinelearningservices]. {@macro pulumi_machinelearningservices_environment_specification_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvironmentSpecificationVersionMachinelearningservices(
    String name, {
    EnvironmentSpecificationVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:machinelearningservices:EnvironmentSpecificationVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<EnvironmentSpecificationVersionResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnvironmentSpecificationVersionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
