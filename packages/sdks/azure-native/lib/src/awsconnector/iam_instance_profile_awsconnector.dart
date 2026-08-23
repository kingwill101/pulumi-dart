import 'package:pulumi/pulumi.dart' as pulumi;
import 'iam_instance_profile_args.dart';
import 'iam_instance_profile_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### IamInstanceProfiles_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var iamInstanceProfile = new AzureNative.AwsConnector.IamInstanceProfile("iamInstanceProfile", new()
///     {
///         Location = "unn",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.IamInstanceProfilePropertiesArgs
///         {
///             Arn = "djpzkfxattxqgrwdgl",
///             AwsAccountId = "zhhymhiivdmwoidycnqdtzarowwjm",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsIamInstanceProfilePropertiesArgs
///             {
///                 Arn = "xfilqplkerenzrkykjnnoj",
///                 InstanceProfileName = "ccstflwsxmpatrvscwxoukagqblzt",
///                 Path = "edfwubhvvye",
///                 Roles = new[]
///                 {
///                     "nrvsijvbwdodraufvsxmbcbnm",
///                 },
///             },
///             AwsRegion = "dwnkitebqhhqjrkjjlhtjryvhsuz",
///             AwsSourceSchema = "vitibwpeaozvgjcibxrqodn",
///             AwsTags =
///             {
///                 { "key3394", "akkxrjgu" },
///             },
///             PublicCloudConnectorsResourceId = "opbcrtwimfuirxph",
///             PublicCloudResourceName = "qbxqhspttfymekhofojyqu",
///         },
///         ResourceGroupName = "rgiamInstanceProfile",
///         Tags =
///         {
///             { "key6049", "bwwujf" },
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
/// 		_, err := awsconnector.NewIamInstanceProfile(ctx, "iamInstanceProfile", &awsconnector.IamInstanceProfileArgs{
/// 			Location: pulumi.String("unn"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.IamInstanceProfilePropertiesArgs{
/// 				Arn:          pulumi.String("djpzkfxattxqgrwdgl"),
/// 				AwsAccountId: pulumi.String("zhhymhiivdmwoidycnqdtzarowwjm"),
/// 				AwsProperties: &awsconnector.AwsIamInstanceProfilePropertiesArgs{
/// 					Arn:                 pulumi.String("xfilqplkerenzrkykjnnoj"),
/// 					InstanceProfileName: pulumi.String("ccstflwsxmpatrvscwxoukagqblzt"),
/// 					Path:                pulumi.String("edfwubhvvye"),
/// 					Roles: pulumi.StringArray{
/// 						pulumi.String("nrvsijvbwdodraufvsxmbcbnm"),
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("dwnkitebqhhqjrkjjlhtjryvhsuz"),
/// 				AwsSourceSchema: pulumi.String("vitibwpeaozvgjcibxrqodn"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key3394": pulumi.String("akkxrjgu"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("opbcrtwimfuirxph"),
/// 				PublicCloudResourceName:         pulumi.String("qbxqhspttfymekhofojyqu"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgiamInstanceProfile"),
/// 			Tags: pulumi.StringMap{
/// 				"key6049": pulumi.String("bwwujf"),
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
/// resource "azure-native_awsconnector_iaminstanceprofile" "iamInstanceProfile" {
///   location = "unn"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "djpzkfxattxqgrwdgl"
///     aws_account_id = "zhhymhiivdmwoidycnqdtzarowwjm"
///     aws_properties = {
///       arn                   = "xfilqplkerenzrkykjnnoj"
///       instance_profile_name = "ccstflwsxmpatrvscwxoukagqblzt"
///       path                  = "edfwubhvvye"
///       roles                 = ["nrvsijvbwdodraufvsxmbcbnm"]
///     }
///     aws_region        = "dwnkitebqhhqjrkjjlhtjryvhsuz"
///     aws_source_schema = "vitibwpeaozvgjcibxrqodn"
///     aws_tags = {
///       "key3394" = "akkxrjgu"
///     }
///     public_cloud_connectors_resource_id = "opbcrtwimfuirxph"
///     public_cloud_resource_name          = "qbxqhspttfymekhofojyqu"
///   }
///   resource_group_name = "rgiamInstanceProfile"
///   tags = {
///     "key6049" = "bwwujf"
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
/// import com.pulumi.azurenative.awsconnector.IamInstanceProfile;
/// import com.pulumi.azurenative.awsconnector.IamInstanceProfileArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.IamInstanceProfilePropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsIamInstanceProfilePropertiesArgs;
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
///         var iamInstanceProfile = new IamInstanceProfile("iamInstanceProfile", IamInstanceProfileArgs.builder()
///             .location("unn")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(IamInstanceProfilePropertiesArgs.builder()
///                 .arn("djpzkfxattxqgrwdgl")
///                 .awsAccountId("zhhymhiivdmwoidycnqdtzarowwjm")
///                 .awsProperties(AwsIamInstanceProfilePropertiesArgs.builder()
///                     .arn("xfilqplkerenzrkykjnnoj")
///                     .instanceProfileName("ccstflwsxmpatrvscwxoukagqblzt")
///                     .path("edfwubhvvye")
///                     .roles("nrvsijvbwdodraufvsxmbcbnm")
///                     .build())
///                 .awsRegion("dwnkitebqhhqjrkjjlhtjryvhsuz")
///                 .awsSourceSchema("vitibwpeaozvgjcibxrqodn")
///                 .awsTags(Map.of("key3394", "akkxrjgu"))
///                 .publicCloudConnectorsResourceId("opbcrtwimfuirxph")
///                 .publicCloudResourceName("qbxqhspttfymekhofojyqu")
///                 .build())
///             .resourceGroupName("rgiamInstanceProfile")
///             .tags(Map.of("key6049", "bwwujf"))
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
/// const iamInstanceProfile = new azure_native.awsconnector.IamInstanceProfile("iamInstanceProfile", {
///     location: "unn",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "djpzkfxattxqgrwdgl",
///         awsAccountId: "zhhymhiivdmwoidycnqdtzarowwjm",
///         awsProperties: {
///             arn: "xfilqplkerenzrkykjnnoj",
///             instanceProfileName: "ccstflwsxmpatrvscwxoukagqblzt",
///             path: "edfwubhvvye",
///             roles: ["nrvsijvbwdodraufvsxmbcbnm"],
///         },
///         awsRegion: "dwnkitebqhhqjrkjjlhtjryvhsuz",
///         awsSourceSchema: "vitibwpeaozvgjcibxrqodn",
///         awsTags: {
///             key3394: "akkxrjgu",
///         },
///         publicCloudConnectorsResourceId: "opbcrtwimfuirxph",
///         publicCloudResourceName: "qbxqhspttfymekhofojyqu",
///     },
///     resourceGroupName: "rgiamInstanceProfile",
///     tags: {
///         key6049: "bwwujf",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// iam_instance_profile = azure_native.awsconnector.IamInstanceProfile("iamInstanceProfile",
///     location="unn",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "djpzkfxattxqgrwdgl",
///         "aws_account_id": "zhhymhiivdmwoidycnqdtzarowwjm",
///         "aws_properties": {
///             "arn": "xfilqplkerenzrkykjnnoj",
///             "instance_profile_name": "ccstflwsxmpatrvscwxoukagqblzt",
///             "path": "edfwubhvvye",
///             "roles": ["nrvsijvbwdodraufvsxmbcbnm"],
///         },
///         "aws_region": "dwnkitebqhhqjrkjjlhtjryvhsuz",
///         "aws_source_schema": "vitibwpeaozvgjcibxrqodn",
///         "aws_tags": {
///             "key3394": "akkxrjgu",
///         },
///         "public_cloud_connectors_resource_id": "opbcrtwimfuirxph",
///         "public_cloud_resource_name": "qbxqhspttfymekhofojyqu",
///     },
///     resource_group_name="rgiamInstanceProfile",
///     tags={
///         "key6049": "bwwujf",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   iamInstanceProfile:
///     type: azure-native:awsconnector:IamInstanceProfile
///     properties:
///       location: unn
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: djpzkfxattxqgrwdgl
///         awsAccountId: zhhymhiivdmwoidycnqdtzarowwjm
///         awsProperties:
///           arn: xfilqplkerenzrkykjnnoj
///           instanceProfileName: ccstflwsxmpatrvscwxoukagqblzt
///           path: edfwubhvvye
///           roles:
///             - nrvsijvbwdodraufvsxmbcbnm
///         awsRegion: dwnkitebqhhqjrkjjlhtjryvhsuz
///         awsSourceSchema: vitibwpeaozvgjcibxrqodn
///         awsTags:
///           key3394: akkxrjgu
///         publicCloudConnectorsResourceId: opbcrtwimfuirxph
///         publicCloudResourceName: qbxqhspttfymekhofojyqu
///       resourceGroupName: rgiamInstanceProfile
///       tags:
///         key6049: bwwujf
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
/// $ pulumi import azure-native:awsconnector:IamInstanceProfile ynmvegpjcmemaimgdnca /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/iamInstanceProfiles/{name}
/// ```
class IamInstanceProfileAwsconnector extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<IamInstanceProfilePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [IamInstanceProfileAwsconnector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IamInstanceProfileAwsconnector]. {@macro pulumi_awsconnector_iam_instance_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IamInstanceProfileAwsconnector(
    String name, {
    IamInstanceProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:IamInstanceProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<IamInstanceProfilePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IamInstanceProfilePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
