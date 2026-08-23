import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssm_parameter_args.dart';
import 'ssm_parameter_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SsmParameters_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ssmParameter = new AzureNative.AwsConnector.SsmParameter("ssmParameter", new()
///     {
///         Location = "ymzdygzdzd",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.SsmParameterPropertiesArgs
///         {
///             Arn = "rzxpagnscd",
///             AwsAccountId = "kxxdlwjrdytmfznuxkd",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsSsmParameterPropertiesArgs
///             {
///                 AllowedPattern = "fzyaodp",
///                 DataType = AzureNative.AwsConnector.DataType.AwsEc2Image,
///                 Description = "aygihzeaxvodxejsnmnkp",
///                 Name = "wvvx",
///                 Policies = "ahuep",
///                 Tier = AzureNative.AwsConnector.Tier.Advanced,
///                 Type = AzureNative.AwsConnector.Type.String,
///                 Value = "wecofehml",
///             },
///             AwsRegion = "ujrrnxtayjeezffngymhkfhtrgjvpz",
///             AwsSourceSchema = "yuexfxhmpunhdtxzdrkz",
///             AwsTags =
///             {
///                 { "key8903", "buyg" },
///             },
///             PublicCloudConnectorsResourceId = "mhesebimtvrlvvbkiswfalddqhilrp",
///             PublicCloudResourceName = "sdtc",
///         },
///         ResourceGroupName = "rgssmParameter",
///         Tags =
///         {
///             { "key8492", "wklhptyp" },
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
/// 		_, err := awsconnector.NewSsmParameter(ctx, "ssmParameter", &awsconnector.SsmParameterArgs{
/// 			Location: pulumi.String("ymzdygzdzd"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.SsmParameterPropertiesArgs{
/// 				Arn:          pulumi.String("rzxpagnscd"),
/// 				AwsAccountId: pulumi.String("kxxdlwjrdytmfznuxkd"),
/// 				AwsProperties: &awsconnector.AwsSsmParameterPropertiesArgs{
/// 					AllowedPattern: pulumi.String("fzyaodp"),
/// 					DataType:       pulumi.String(awsconnector.DataTypeAwsEc2Image),
/// 					Description:    pulumi.String("aygihzeaxvodxejsnmnkp"),
/// 					Name:           pulumi.String("wvvx"),
/// 					Policies:       pulumi.String("ahuep"),
/// 					Tier:           pulumi.String(awsconnector.TierAdvanced),
/// 					Type:           pulumi.String(awsconnector.TypeString),
/// 					Value:          pulumi.String("wecofehml"),
/// 				},
/// 				AwsRegion:       pulumi.String("ujrrnxtayjeezffngymhkfhtrgjvpz"),
/// 				AwsSourceSchema: pulumi.String("yuexfxhmpunhdtxzdrkz"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key8903": pulumi.String("buyg"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("mhesebimtvrlvvbkiswfalddqhilrp"),
/// 				PublicCloudResourceName:         pulumi.String("sdtc"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgssmParameter"),
/// 			Tags: pulumi.StringMap{
/// 				"key8492": pulumi.String("wklhptyp"),
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
/// resource "azure-native_awsconnector_ssmparameter" "ssmParameter" {
///   location = "ymzdygzdzd"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "rzxpagnscd"
///     aws_account_id = "kxxdlwjrdytmfznuxkd"
///     aws_properties = {
///       allowed_pattern = "fzyaodp"
///       data_type       = "aws:ec2:image"
///       description     = "aygihzeaxvodxejsnmnkp"
///       name            = "wvvx"
///       policies        = "ahuep"
///       tier            = "Advanced"
///       type            = "String"
///       value           = "wecofehml"
///     }
///     aws_region        = "ujrrnxtayjeezffngymhkfhtrgjvpz"
///     aws_source_schema = "yuexfxhmpunhdtxzdrkz"
///     aws_tags = {
///       "key8903" = "buyg"
///     }
///     public_cloud_connectors_resource_id = "mhesebimtvrlvvbkiswfalddqhilrp"
///     public_cloud_resource_name          = "sdtc"
///   }
///   resource_group_name = "rgssmParameter"
///   tags = {
///     "key8492" = "wklhptyp"
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
/// import com.pulumi.azurenative.awsconnector.SsmParameter;
/// import com.pulumi.azurenative.awsconnector.SsmParameterArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.SsmParameterPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsSsmParameterPropertiesArgs;
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
///         var ssmParameter = new SsmParameter("ssmParameter", SsmParameterArgs.builder()
///             .location("ymzdygzdzd")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(SsmParameterPropertiesArgs.builder()
///                 .arn("rzxpagnscd")
///                 .awsAccountId("kxxdlwjrdytmfznuxkd")
///                 .awsProperties(AwsSsmParameterPropertiesArgs.builder()
///                     .allowedPattern("fzyaodp")
///                     .dataType("aws:ec2:image")
///                     .description("aygihzeaxvodxejsnmnkp")
///                     .name("wvvx")
///                     .policies("ahuep")
///                     .tier("Advanced")
///                     .type("String")
///                     .value("wecofehml")
///                     .build())
///                 .awsRegion("ujrrnxtayjeezffngymhkfhtrgjvpz")
///                 .awsSourceSchema("yuexfxhmpunhdtxzdrkz")
///                 .awsTags(Map.of("key8903", "buyg"))
///                 .publicCloudConnectorsResourceId("mhesebimtvrlvvbkiswfalddqhilrp")
///                 .publicCloudResourceName("sdtc")
///                 .build())
///             .resourceGroupName("rgssmParameter")
///             .tags(Map.of("key8492", "wklhptyp"))
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
/// const ssmParameter = new azure_native.awsconnector.SsmParameter("ssmParameter", {
///     location: "ymzdygzdzd",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "rzxpagnscd",
///         awsAccountId: "kxxdlwjrdytmfznuxkd",
///         awsProperties: {
///             allowedPattern: "fzyaodp",
///             dataType: azure_native.awsconnector.DataType.AwsEc2Image,
///             description: "aygihzeaxvodxejsnmnkp",
///             name: "wvvx",
///             policies: "ahuep",
///             tier: azure_native.awsconnector.Tier.Advanced,
///             type: azure_native.awsconnector.Type.String,
///             value: "wecofehml",
///         },
///         awsRegion: "ujrrnxtayjeezffngymhkfhtrgjvpz",
///         awsSourceSchema: "yuexfxhmpunhdtxzdrkz",
///         awsTags: {
///             key8903: "buyg",
///         },
///         publicCloudConnectorsResourceId: "mhesebimtvrlvvbkiswfalddqhilrp",
///         publicCloudResourceName: "sdtc",
///     },
///     resourceGroupName: "rgssmParameter",
///     tags: {
///         key8492: "wklhptyp",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ssm_parameter = azure_native.awsconnector.SsmParameter("ssmParameter",
///     location="ymzdygzdzd",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "rzxpagnscd",
///         "aws_account_id": "kxxdlwjrdytmfznuxkd",
///         "aws_properties": {
///             "allowed_pattern": "fzyaodp",
///             "data_type": azure_native.awsconnector.DataType.AWS_EC2_IMAGE,
///             "description": "aygihzeaxvodxejsnmnkp",
///             "name": "wvvx",
///             "policies": "ahuep",
///             "tier": azure_native.awsconnector.Tier.ADVANCED,
///             "type": azure_native.awsconnector.Type.STRING,
///             "value": "wecofehml",
///         },
///         "aws_region": "ujrrnxtayjeezffngymhkfhtrgjvpz",
///         "aws_source_schema": "yuexfxhmpunhdtxzdrkz",
///         "aws_tags": {
///             "key8903": "buyg",
///         },
///         "public_cloud_connectors_resource_id": "mhesebimtvrlvvbkiswfalddqhilrp",
///         "public_cloud_resource_name": "sdtc",
///     },
///     resource_group_name="rgssmParameter",
///     tags={
///         "key8492": "wklhptyp",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   ssmParameter:
///     type: azure-native:awsconnector:SsmParameter
///     properties:
///       location: ymzdygzdzd
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: rzxpagnscd
///         awsAccountId: kxxdlwjrdytmfznuxkd
///         awsProperties:
///           allowedPattern: fzyaodp
///           dataType: aws:ec2:image
///           description: aygihzeaxvodxejsnmnkp
///           name: wvvx
///           policies: ahuep
///           tier: Advanced
///           type: String
///           value: wecofehml
///         awsRegion: ujrrnxtayjeezffngymhkfhtrgjvpz
///         awsSourceSchema: yuexfxhmpunhdtxzdrkz
///         awsTags:
///           key8903: buyg
///         publicCloudConnectorsResourceId: mhesebimtvrlvvbkiswfalddqhilrp
///         publicCloudResourceName: sdtc
///       resourceGroupName: rgssmParameter
///       tags:
///         key8492: wklhptyp
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
/// $ pulumi import azure-native:awsconnector:SsmParameter bmsrpoibrmixexpusksmj /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/ssmParameters/{name}
/// ```
class SsmParameter extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<SsmParameterPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SsmParameter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SsmParameter]. {@macro pulumi_awsconnector_ssm_parameter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SsmParameter(
    String name, {
    SsmParameterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:SsmParameter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SsmParameterPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SsmParameterPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
