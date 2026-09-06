import 'package:pulumi/pulumi.dart' as pulumi;
import 'efs_mount_target_args.dart';
import 'efs_mount_target_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### EfsMountTargets_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var efsMountTarget = new AzureNative.AwsConnector.EfsMountTarget("efsMountTarget", new()
///     {
///         Location = "xaybj",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.EfsMountTargetPropertiesArgs
///         {
///             Arn = "dtpqhenvexdxqcqscosxk",
///             AwsAccountId = "iwvssztfldgfir",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsEfsMountTargetPropertiesArgs
///             {
///                 FileSystemId = "yyzhtbwsscfcaxuvdvmswchhxapky",
///                 Id = "micgyhibjdexozpicbfsmpclu",
///                 IpAddress = "unspxdyqhrhlkstzmdrd",
///                 SecurityGroups = new[]
///                 {
///                     "zxkzjhcwszqzfeogafiaub",
///                 },
///                 SubnetId = "xbeontn",
///             },
///             AwsRegion = "lyvbqubwsgdvarrauygfhw",
///             AwsSourceSchema = "gpkfqbbpywdedvyabzy",
///             AwsTags =
///             {
///                 { "key5226", "lkjysnbiwwydewimdnpt" },
///             },
///             PublicCloudConnectorsResourceId = "rwszhgqustirkxkbk",
///             PublicCloudResourceName = "bezmotdonashggkeobrc",
///         },
///         ResourceGroupName = "rgefsMountTarget",
///         Tags =
///         {
///             { "key3687", "zubuxs" },
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
/// 		_, err := awsconnector.NewEfsMountTarget(ctx, "efsMountTarget", &awsconnector.EfsMountTargetArgs{
/// 			Location: pulumi.String("xaybj"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.EfsMountTargetPropertiesArgs{
/// 				Arn:          pulumi.String("dtpqhenvexdxqcqscosxk"),
/// 				AwsAccountId: pulumi.String("iwvssztfldgfir"),
/// 				AwsProperties: &awsconnector.AwsEfsMountTargetPropertiesArgs{
/// 					FileSystemId: pulumi.String("yyzhtbwsscfcaxuvdvmswchhxapky"),
/// 					Id:           pulumi.String("micgyhibjdexozpicbfsmpclu"),
/// 					IpAddress:    pulumi.String("unspxdyqhrhlkstzmdrd"),
/// 					SecurityGroups: pulumi.StringArray{
/// 						pulumi.String("zxkzjhcwszqzfeogafiaub"),
/// 					},
/// 					SubnetId: pulumi.String("xbeontn"),
/// 				},
/// 				AwsRegion:       pulumi.String("lyvbqubwsgdvarrauygfhw"),
/// 				AwsSourceSchema: pulumi.String("gpkfqbbpywdedvyabzy"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key5226": pulumi.String("lkjysnbiwwydewimdnpt"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("rwszhgqustirkxkbk"),
/// 				PublicCloudResourceName:         pulumi.String("bezmotdonashggkeobrc"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgefsMountTarget"),
/// 			Tags: pulumi.StringMap{
/// 				"key3687": pulumi.String("zubuxs"),
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
/// resource "azure-native_awsconnector_efsmounttarget" "efsMountTarget" {
///   location = "xaybj"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "dtpqhenvexdxqcqscosxk"
///     aws_account_id = "iwvssztfldgfir"
///     aws_properties = {
///       file_system_id  = "yyzhtbwsscfcaxuvdvmswchhxapky"
///       id              = "micgyhibjdexozpicbfsmpclu"
///       ip_address      = "unspxdyqhrhlkstzmdrd"
///       security_groups = ["zxkzjhcwszqzfeogafiaub"]
///       subnet_id       = "xbeontn"
///     }
///     aws_region        = "lyvbqubwsgdvarrauygfhw"
///     aws_source_schema = "gpkfqbbpywdedvyabzy"
///     aws_tags = {
///       "key5226" = "lkjysnbiwwydewimdnpt"
///     }
///     public_cloud_connectors_resource_id = "rwszhgqustirkxkbk"
///     public_cloud_resource_name          = "bezmotdonashggkeobrc"
///   }
///   resource_group_name = "rgefsMountTarget"
///   tags = {
///     "key3687" = "zubuxs"
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
/// import com.pulumi.azurenative.awsconnector.EfsMountTarget;
/// import com.pulumi.azurenative.awsconnector.EfsMountTargetArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.EfsMountTargetPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsEfsMountTargetPropertiesArgs;
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
///         var efsMountTarget = new EfsMountTarget("efsMountTarget", EfsMountTargetArgs.builder()
///             .location("xaybj")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(EfsMountTargetPropertiesArgs.builder()
///                 .arn("dtpqhenvexdxqcqscosxk")
///                 .awsAccountId("iwvssztfldgfir")
///                 .awsProperties(AwsEfsMountTargetPropertiesArgs.builder()
///                     .fileSystemId("yyzhtbwsscfcaxuvdvmswchhxapky")
///                     .id("micgyhibjdexozpicbfsmpclu")
///                     .ipAddress("unspxdyqhrhlkstzmdrd")
///                     .securityGroups("zxkzjhcwszqzfeogafiaub")
///                     .subnetId("xbeontn")
///                     .build())
///                 .awsRegion("lyvbqubwsgdvarrauygfhw")
///                 .awsSourceSchema("gpkfqbbpywdedvyabzy")
///                 .awsTags(Map.of("key5226", "lkjysnbiwwydewimdnpt"))
///                 .publicCloudConnectorsResourceId("rwszhgqustirkxkbk")
///                 .publicCloudResourceName("bezmotdonashggkeobrc")
///                 .build())
///             .resourceGroupName("rgefsMountTarget")
///             .tags(Map.of("key3687", "zubuxs"))
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
/// const efsMountTarget = new azure_native.awsconnector.EfsMountTarget("efsMountTarget", {
///     location: "xaybj",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "dtpqhenvexdxqcqscosxk",
///         awsAccountId: "iwvssztfldgfir",
///         awsProperties: {
///             fileSystemId: "yyzhtbwsscfcaxuvdvmswchhxapky",
///             id: "micgyhibjdexozpicbfsmpclu",
///             ipAddress: "unspxdyqhrhlkstzmdrd",
///             securityGroups: ["zxkzjhcwszqzfeogafiaub"],
///             subnetId: "xbeontn",
///         },
///         awsRegion: "lyvbqubwsgdvarrauygfhw",
///         awsSourceSchema: "gpkfqbbpywdedvyabzy",
///         awsTags: {
///             key5226: "lkjysnbiwwydewimdnpt",
///         },
///         publicCloudConnectorsResourceId: "rwszhgqustirkxkbk",
///         publicCloudResourceName: "bezmotdonashggkeobrc",
///     },
///     resourceGroupName: "rgefsMountTarget",
///     tags: {
///         key3687: "zubuxs",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// efs_mount_target = azure_native.awsconnector.EfsMountTarget("efsMountTarget",
///     location="xaybj",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "dtpqhenvexdxqcqscosxk",
///         "aws_account_id": "iwvssztfldgfir",
///         "aws_properties": {
///             "file_system_id": "yyzhtbwsscfcaxuvdvmswchhxapky",
///             "id": "micgyhibjdexozpicbfsmpclu",
///             "ip_address": "unspxdyqhrhlkstzmdrd",
///             "security_groups": ["zxkzjhcwszqzfeogafiaub"],
///             "subnet_id": "xbeontn",
///         },
///         "aws_region": "lyvbqubwsgdvarrauygfhw",
///         "aws_source_schema": "gpkfqbbpywdedvyabzy",
///         "aws_tags": {
///             "key5226": "lkjysnbiwwydewimdnpt",
///         },
///         "public_cloud_connectors_resource_id": "rwszhgqustirkxkbk",
///         "public_cloud_resource_name": "bezmotdonashggkeobrc",
///     },
///     resource_group_name="rgefsMountTarget",
///     tags={
///         "key3687": "zubuxs",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   efsMountTarget:
///     type: azure-native:awsconnector:EfsMountTarget
///     properties:
///       location: xaybj
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: dtpqhenvexdxqcqscosxk
///         awsAccountId: iwvssztfldgfir
///         awsProperties:
///           fileSystemId: yyzhtbwsscfcaxuvdvmswchhxapky
///           id: micgyhibjdexozpicbfsmpclu
///           ipAddress: unspxdyqhrhlkstzmdrd
///           securityGroups:
///             - zxkzjhcwszqzfeogafiaub
///           subnetId: xbeontn
///         awsRegion: lyvbqubwsgdvarrauygfhw
///         awsSourceSchema: gpkfqbbpywdedvyabzy
///         awsTags:
///           key5226: lkjysnbiwwydewimdnpt
///         publicCloudConnectorsResourceId: rwszhgqustirkxkbk
///         publicCloudResourceName: bezmotdonashggkeobrc
///       resourceGroupName: rgefsMountTarget
///       tags:
///         key3687: zubuxs
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
/// $ pulumi import azure-native:awsconnector:EfsMountTarget vnjlwafk /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/efsMountTargets/{name}
/// ```
class EfsMountTarget extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<EfsMountTargetPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EfsMountTarget].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EfsMountTarget]. {@macro pulumi_awsconnector_efs_mount_target_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EfsMountTarget(
    String name, {
    EfsMountTargetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:EfsMountTarget',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<EfsMountTargetPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EfsMountTargetPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [EfsMountTarget] resource.
  EfsMountTarget.reference(String urn)
    : super(
        'azure-native:awsconnector:EfsMountTarget',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<EfsMountTargetPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EfsMountTargetPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
