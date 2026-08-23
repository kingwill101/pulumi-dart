import 'package:pulumi/pulumi.dart' as pulumi;
import 'sage_maker_notebook_instance_summary_args.dart';
import 'sage_maker_notebook_instance_summary_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SageMakerNotebookInstanceSummaries_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sageMakerNotebookInstanceSummary = new AzureNative.AwsConnector.SageMakerNotebookInstanceSummary("sageMakerNotebookInstanceSummary", new()
///     {
///         Location = "khdjmafoabcvhksslfjtzlyh",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.SageMakerNotebookInstanceSummaryPropertiesArgs
///         {
///             Arn = "ncvgnrtwmjxungpgrodvsy",
///             AwsAccountId = "ymlnxodvrwztwew",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsSageMakerNotebookInstanceSummaryPropertiesArgs
///             {
///                 AdditionalCodeRepositories = new[]
///                 {
///                     "pkjwtq",
///                 },
///                 CreationTime = "2024-10-08T03:50:00.672Z",
///                 DefaultCodeRepository = "edbiryeqsbvjcqmwygujvl",
///                 InstanceType = new AzureNative.AwsConnector.Inputs.InstanceTypeEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.InstanceType.MlC42xlarge,
///                 },
///                 LastModifiedTime = "2024-10-08T03:50:00.673Z",
///                 NotebookInstanceArn = "wxrcvukcvvtd",
///                 NotebookInstanceLifecycleConfigName = "t",
///                 NotebookInstanceName = "nwemhcydnbtwmti",
///                 NotebookInstanceStatus = new AzureNative.AwsConnector.Inputs.NotebookInstanceStatusEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.NotebookInstanceStatus.Deleting,
///                 },
///                 Url = "ricclxhpsojfujeolzbg",
///             },
///             AwsRegion = "oqykvfkrsmwkvszj",
///             AwsSourceSchema = "gqddonfcsn",
///             AwsTags =
///             {
///                 { "key4152", "dujjfkuxcm" },
///             },
///             PublicCloudConnectorsResourceId = "khlyjmgts",
///             PublicCloudResourceName = "ocd",
///         },
///         ResourceGroupName = "rgsageMakerNotebookInstanceSummary",
///         Tags =
///         {
///             { "key9470", "aluoxfdglqvvkktxeg" },
///         },
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
/// 	awsconnector "github.com/pulumi/pulumi-azure-native-sdk/awsconnector/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := awsconnector.NewSageMakerNotebookInstanceSummary(ctx, "sageMakerNotebookInstanceSummary", &awsconnector.SageMakerNotebookInstanceSummaryArgs{
/// 			Location: pulumi.String("khdjmafoabcvhksslfjtzlyh"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.SageMakerNotebookInstanceSummaryPropertiesArgs{
/// 				Arn:          pulumi.String("ncvgnrtwmjxungpgrodvsy"),
/// 				AwsAccountId: pulumi.String("ymlnxodvrwztwew"),
/// 				AwsProperties: &awsconnector.AwsSageMakerNotebookInstanceSummaryPropertiesArgs{
/// 					AdditionalCodeRepositories: pulumi.StringArray{
/// 						pulumi.String("pkjwtq"),
/// 					},
/// 					CreationTime:          pulumi.String("2024-10-08T03:50:00.672Z"),
/// 					DefaultCodeRepository: pulumi.String("edbiryeqsbvjcqmwygujvl"),
/// 					InstanceType: &awsconnector.InstanceTypeEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.InstanceTypeMlC42xlarge),
/// 					},
/// 					LastModifiedTime:                    pulumi.String("2024-10-08T03:50:00.673Z"),
/// 					NotebookInstanceArn:                 pulumi.String("wxrcvukcvvtd"),
/// 					NotebookInstanceLifecycleConfigName: pulumi.String("t"),
/// 					NotebookInstanceName:                pulumi.String("nwemhcydnbtwmti"),
/// 					NotebookInstanceStatus: &awsconnector.NotebookInstanceStatusEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.NotebookInstanceStatusDeleting),
/// 					},
/// 					Url: pulumi.String("ricclxhpsojfujeolzbg"),
/// 				},
/// 				AwsRegion:       pulumi.String("oqykvfkrsmwkvszj"),
/// 				AwsSourceSchema: pulumi.String("gqddonfcsn"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key4152": pulumi.String("dujjfkuxcm"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("khlyjmgts"),
/// 				PublicCloudResourceName:         pulumi.String("ocd"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgsageMakerNotebookInstanceSummary"),
/// 			Tags: pulumi.StringMap{
/// 				"key9470": pulumi.String("aluoxfdglqvvkktxeg"),
/// 			},
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
/// resource "azure-native_awsconnector_sagemakernotebookinstancesummary" "sageMakerNotebookInstanceSummary" {
///   location = "khdjmafoabcvhksslfjtzlyh"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "ncvgnrtwmjxungpgrodvsy"
///     aws_account_id = "ymlnxodvrwztwew"
///     aws_properties = {
///       additional_code_repositories = ["pkjwtq"]
///       creation_time                = "2024-10-08T03:50:00.672Z"
///       default_code_repository      = "edbiryeqsbvjcqmwygujvl"
///       instance_type = {
///         value = "ml.c4.2xlarge"
///       }
///       last_modified_time                      = "2024-10-08T03:50:00.673Z"
///       notebook_instance_arn                   = "wxrcvukcvvtd"
///       notebook_instance_lifecycle_config_name = "t"
///       notebook_instance_name                  = "nwemhcydnbtwmti"
///       notebook_instance_status = {
///         value = "Deleting"
///       }
///       url = "ricclxhpsojfujeolzbg"
///     }
///     aws_region        = "oqykvfkrsmwkvszj"
///     aws_source_schema = "gqddonfcsn"
///     aws_tags = {
///       "key4152" = "dujjfkuxcm"
///     }
///     public_cloud_connectors_resource_id = "khlyjmgts"
///     public_cloud_resource_name          = "ocd"
///   }
///   resource_group_name = "rgsageMakerNotebookInstanceSummary"
///   tags = {
///     "key9470" = "aluoxfdglqvvkktxeg"
///   }
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
/// import com.pulumi.azurenative.awsconnector.SageMakerNotebookInstanceSummary;
/// import com.pulumi.azurenative.awsconnector.SageMakerNotebookInstanceSummaryArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.SageMakerNotebookInstanceSummaryPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsSageMakerNotebookInstanceSummaryPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.InstanceTypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.NotebookInstanceStatusEnumValueArgs;
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
///         var sageMakerNotebookInstanceSummary = new SageMakerNotebookInstanceSummary("sageMakerNotebookInstanceSummary", SageMakerNotebookInstanceSummaryArgs.builder()
///             .location("khdjmafoabcvhksslfjtzlyh")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(SageMakerNotebookInstanceSummaryPropertiesArgs.builder()
///                 .arn("ncvgnrtwmjxungpgrodvsy")
///                 .awsAccountId("ymlnxodvrwztwew")
///                 .awsProperties(AwsSageMakerNotebookInstanceSummaryPropertiesArgs.builder()
///                     .additionalCodeRepositories("pkjwtq")
///                     .creationTime("2024-10-08T03:50:00.672Z")
///                     .defaultCodeRepository("edbiryeqsbvjcqmwygujvl")
///                     .instanceType(InstanceTypeEnumValueArgs.builder()
///                         .value("ml.c4.2xlarge")
///                         .build())
///                     .lastModifiedTime("2024-10-08T03:50:00.673Z")
///                     .notebookInstanceArn("wxrcvukcvvtd")
///                     .notebookInstanceLifecycleConfigName("t")
///                     .notebookInstanceName("nwemhcydnbtwmti")
///                     .notebookInstanceStatus(NotebookInstanceStatusEnumValueArgs.builder()
///                         .value("Deleting")
///                         .build())
///                     .url("ricclxhpsojfujeolzbg")
///                     .build())
///                 .awsRegion("oqykvfkrsmwkvszj")
///                 .awsSourceSchema("gqddonfcsn")
///                 .awsTags(Map.of("key4152", "dujjfkuxcm"))
///                 .publicCloudConnectorsResourceId("khlyjmgts")
///                 .publicCloudResourceName("ocd")
///                 .build())
///             .resourceGroupName("rgsageMakerNotebookInstanceSummary")
///             .tags(Map.of("key9470", "aluoxfdglqvvkktxeg"))
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
/// const sageMakerNotebookInstanceSummary = new azure_native.awsconnector.SageMakerNotebookInstanceSummary("sageMakerNotebookInstanceSummary", {
///     location: "khdjmafoabcvhksslfjtzlyh",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "ncvgnrtwmjxungpgrodvsy",
///         awsAccountId: "ymlnxodvrwztwew",
///         awsProperties: {
///             additionalCodeRepositories: ["pkjwtq"],
///             creationTime: "2024-10-08T03:50:00.672Z",
///             defaultCodeRepository: "edbiryeqsbvjcqmwygujvl",
///             instanceType: {
///                 value: azure_native.awsconnector.InstanceType.MlC42xlarge,
///             },
///             lastModifiedTime: "2024-10-08T03:50:00.673Z",
///             notebookInstanceArn: "wxrcvukcvvtd",
///             notebookInstanceLifecycleConfigName: "t",
///             notebookInstanceName: "nwemhcydnbtwmti",
///             notebookInstanceStatus: {
///                 value: azure_native.awsconnector.NotebookInstanceStatus.Deleting,
///             },
///             url: "ricclxhpsojfujeolzbg",
///         },
///         awsRegion: "oqykvfkrsmwkvszj",
///         awsSourceSchema: "gqddonfcsn",
///         awsTags: {
///             key4152: "dujjfkuxcm",
///         },
///         publicCloudConnectorsResourceId: "khlyjmgts",
///         publicCloudResourceName: "ocd",
///     },
///     resourceGroupName: "rgsageMakerNotebookInstanceSummary",
///     tags: {
///         key9470: "aluoxfdglqvvkktxeg",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sage_maker_notebook_instance_summary = azure_native.awsconnector.SageMakerNotebookInstanceSummary("sageMakerNotebookInstanceSummary",
///     location="khdjmafoabcvhksslfjtzlyh",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "ncvgnrtwmjxungpgrodvsy",
///         "aws_account_id": "ymlnxodvrwztwew",
///         "aws_properties": {
///             "additional_code_repositories": ["pkjwtq"],
///             "creation_time": "2024-10-08T03:50:00.672Z",
///             "default_code_repository": "edbiryeqsbvjcqmwygujvl",
///             "instance_type": {
///                 "value": azure_native.awsconnector.InstanceType.ML_C42XLARGE,
///             },
///             "last_modified_time": "2024-10-08T03:50:00.673Z",
///             "notebook_instance_arn": "wxrcvukcvvtd",
///             "notebook_instance_lifecycle_config_name": "t",
///             "notebook_instance_name": "nwemhcydnbtwmti",
///             "notebook_instance_status": {
///                 "value": azure_native.awsconnector.NotebookInstanceStatus.DELETING,
///             },
///             "url": "ricclxhpsojfujeolzbg",
///         },
///         "aws_region": "oqykvfkrsmwkvszj",
///         "aws_source_schema": "gqddonfcsn",
///         "aws_tags": {
///             "key4152": "dujjfkuxcm",
///         },
///         "public_cloud_connectors_resource_id": "khlyjmgts",
///         "public_cloud_resource_name": "ocd",
///     },
///     resource_group_name="rgsageMakerNotebookInstanceSummary",
///     tags={
///         "key9470": "aluoxfdglqvvkktxeg",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   sageMakerNotebookInstanceSummary:
///     type: azure-native:awsconnector:SageMakerNotebookInstanceSummary
///     properties:
///       location: khdjmafoabcvhksslfjtzlyh
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: ncvgnrtwmjxungpgrodvsy
///         awsAccountId: ymlnxodvrwztwew
///         awsProperties:
///           additionalCodeRepositories:
///             - pkjwtq
///           creationTime: 2024-10-08T03:50:00.672Z
///           defaultCodeRepository: edbiryeqsbvjcqmwygujvl
///           instanceType:
///             value: ml.c4.2xlarge
///           lastModifiedTime: 2024-10-08T03:50:00.673Z
///           notebookInstanceArn: wxrcvukcvvtd
///           notebookInstanceLifecycleConfigName: t
///           notebookInstanceName: nwemhcydnbtwmti
///           notebookInstanceStatus:
///             value: Deleting
///           url: ricclxhpsojfujeolzbg
///         awsRegion: oqykvfkrsmwkvszj
///         awsSourceSchema: gqddonfcsn
///         awsTags:
///           key4152: dujjfkuxcm
///         publicCloudConnectorsResourceId: khlyjmgts
///         publicCloudResourceName: ocd
///       resourceGroupName: rgsageMakerNotebookInstanceSummary
///       tags:
///         key9470: aluoxfdglqvvkktxeg
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
/// $ pulumi import azure-native:awsconnector:SageMakerNotebookInstanceSummary aoqcxtngqqormdennckxrrafoeh /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/sageMakerNotebookInstanceSummaries/{name}
/// ```
class SageMakerNotebookInstanceSummary extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<SageMakerNotebookInstanceSummaryPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SageMakerNotebookInstanceSummary].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SageMakerNotebookInstanceSummary]. {@macro pulumi_awsconnector_sage_maker_notebook_instance_summary_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SageMakerNotebookInstanceSummary(
    String name, {
    SageMakerNotebookInstanceSummaryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:SageMakerNotebookInstanceSummary',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SageMakerNotebookInstanceSummaryPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SageMakerNotebookInstanceSummaryPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
