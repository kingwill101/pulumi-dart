import 'package:pulumi/pulumi.dart' as pulumi;
import 'redshift_cluster_parameter_group_args.dart';
import 'redshift_cluster_parameter_group_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RedshiftClusterParameterGroups_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var redshiftClusterParameterGroup = new AzureNative.AwsConnector.RedshiftClusterParameterGroup("redshiftClusterParameterGroup", new()
///     {
///         Location = "gskgxjliwptm",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.RedshiftClusterParameterGroupPropertiesArgs
///         {
///             Arn = "whliokkrefhwytv",
///             AwsAccountId = "fdljzalgig",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsRedshiftClusterParameterGroupPropertiesArgs
///             {
///                 Description = "gvl",
///                 ParameterGroupFamily = "bbhnqerzrhqtinntphvuim",
///                 ParameterGroupName = "tiqxhqigpmuckmnpgijvnpwzb",
///                 Parameters = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.ParameterArgs
///                     {
///                         ParameterName = "jxeucnajvjzv",
///                         ParameterValue = "ubxmwmoxeslbruenu",
///                     },
///                 },
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "ucdvfenzatoxmpdicwhztuvgtnku",
///                         Value = "qpznlj",
///                     },
///                 },
///             },
///             AwsRegion = "wrhyhrmwhdmlnjjbrl",
///             AwsSourceSchema = "nkdbqnqvsdnvogwatfxlubppr",
///             AwsTags =
///             {
///                 { "key6090", "vaqtqamdjobsgwecpvyxeerjrrxac" },
///             },
///             PublicCloudConnectorsResourceId = "nrs",
///             PublicCloudResourceName = "xnrwtxesebdfzrqiamebczhoyjbqeq",
///         },
///         ResourceGroupName = "rgredshiftClusterParameterGroup",
///         Tags =
///         {
///             { "key4322", "zjgvmwcimdtqwxhy" },
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
/// 		_, err := awsconnector.NewRedshiftClusterParameterGroup(ctx, "redshiftClusterParameterGroup", &awsconnector.RedshiftClusterParameterGroupArgs{
/// 			Location: pulumi.String("gskgxjliwptm"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.RedshiftClusterParameterGroupPropertiesArgs{
/// 				Arn:          pulumi.String("whliokkrefhwytv"),
/// 				AwsAccountId: pulumi.String("fdljzalgig"),
/// 				AwsProperties: &awsconnector.AwsRedshiftClusterParameterGroupPropertiesArgs{
/// 					Description:          pulumi.String("gvl"),
/// 					ParameterGroupFamily: pulumi.String("bbhnqerzrhqtinntphvuim"),
/// 					ParameterGroupName:   pulumi.String("tiqxhqigpmuckmnpgijvnpwzb"),
/// 					Parameters: awsconnector.ParameterArray{
/// 						&awsconnector.ParameterArgs{
/// 							ParameterName:  pulumi.String("jxeucnajvjzv"),
/// 							ParameterValue: pulumi.String("ubxmwmoxeslbruenu"),
/// 						},
/// 					},
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("ucdvfenzatoxmpdicwhztuvgtnku"),
/// 							Value: pulumi.String("qpznlj"),
/// 						},
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("wrhyhrmwhdmlnjjbrl"),
/// 				AwsSourceSchema: pulumi.String("nkdbqnqvsdnvogwatfxlubppr"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key6090": pulumi.String("vaqtqamdjobsgwecpvyxeerjrrxac"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("nrs"),
/// 				PublicCloudResourceName:         pulumi.String("xnrwtxesebdfzrqiamebczhoyjbqeq"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgredshiftClusterParameterGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"key4322": pulumi.String("zjgvmwcimdtqwxhy"),
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
/// resource "azure-native_awsconnector_redshiftclusterparametergroup" "redshiftClusterParameterGroup" {
///   location = "gskgxjliwptm"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "whliokkrefhwytv"
///     aws_account_id = "fdljzalgig"
///     aws_properties = {
///       description            = "gvl"
///       parameter_group_family = "bbhnqerzrhqtinntphvuim"
///       parameter_group_name   = "tiqxhqigpmuckmnpgijvnpwzb"
///       parameters = [{
///         "parameterName"  = "jxeucnajvjzv"
///         "parameterValue" = "ubxmwmoxeslbruenu"
///       }]
///       tags = [{
///         "key"   = "ucdvfenzatoxmpdicwhztuvgtnku"
///         "value" = "qpznlj"
///       }]
///     }
///     aws_region        = "wrhyhrmwhdmlnjjbrl"
///     aws_source_schema = "nkdbqnqvsdnvogwatfxlubppr"
///     aws_tags = {
///       "key6090" = "vaqtqamdjobsgwecpvyxeerjrrxac"
///     }
///     public_cloud_connectors_resource_id = "nrs"
///     public_cloud_resource_name          = "xnrwtxesebdfzrqiamebczhoyjbqeq"
///   }
///   resource_group_name = "rgredshiftClusterParameterGroup"
///   tags = {
///     "key4322" = "zjgvmwcimdtqwxhy"
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
/// import com.pulumi.azurenative.awsconnector.RedshiftClusterParameterGroup;
/// import com.pulumi.azurenative.awsconnector.RedshiftClusterParameterGroupArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.RedshiftClusterParameterGroupPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsRedshiftClusterParameterGroupPropertiesArgs;
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
///         var redshiftClusterParameterGroup = new RedshiftClusterParameterGroup("redshiftClusterParameterGroup", RedshiftClusterParameterGroupArgs.builder()
///             .location("gskgxjliwptm")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(RedshiftClusterParameterGroupPropertiesArgs.builder()
///                 .arn("whliokkrefhwytv")
///                 .awsAccountId("fdljzalgig")
///                 .awsProperties(AwsRedshiftClusterParameterGroupPropertiesArgs.builder()
///                     .description("gvl")
///                     .parameterGroupFamily("bbhnqerzrhqtinntphvuim")
///                     .parameterGroupName("tiqxhqigpmuckmnpgijvnpwzb")
///                     .parameters(ParameterArgs.builder()
///                         .parameterName("jxeucnajvjzv")
///                         .parameterValue("ubxmwmoxeslbruenu")
///                         .build())
///                     .tags(TagArgs.builder()
///                         .key("ucdvfenzatoxmpdicwhztuvgtnku")
///                         .value("qpznlj")
///                         .build())
///                     .build())
///                 .awsRegion("wrhyhrmwhdmlnjjbrl")
///                 .awsSourceSchema("nkdbqnqvsdnvogwatfxlubppr")
///                 .awsTags(Map.of("key6090", "vaqtqamdjobsgwecpvyxeerjrrxac"))
///                 .publicCloudConnectorsResourceId("nrs")
///                 .publicCloudResourceName("xnrwtxesebdfzrqiamebczhoyjbqeq")
///                 .build())
///             .resourceGroupName("rgredshiftClusterParameterGroup")
///             .tags(Map.of("key4322", "zjgvmwcimdtqwxhy"))
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
/// const redshiftClusterParameterGroup = new azure_native.awsconnector.RedshiftClusterParameterGroup("redshiftClusterParameterGroup", {
///     location: "gskgxjliwptm",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "whliokkrefhwytv",
///         awsAccountId: "fdljzalgig",
///         awsProperties: {
///             description: "gvl",
///             parameterGroupFamily: "bbhnqerzrhqtinntphvuim",
///             parameterGroupName: "tiqxhqigpmuckmnpgijvnpwzb",
///             parameters: [{
///                 parameterName: "jxeucnajvjzv",
///                 parameterValue: "ubxmwmoxeslbruenu",
///             }],
///             tags: [{
///                 key: "ucdvfenzatoxmpdicwhztuvgtnku",
///                 value: "qpznlj",
///             }],
///         },
///         awsRegion: "wrhyhrmwhdmlnjjbrl",
///         awsSourceSchema: "nkdbqnqvsdnvogwatfxlubppr",
///         awsTags: {
///             key6090: "vaqtqamdjobsgwecpvyxeerjrrxac",
///         },
///         publicCloudConnectorsResourceId: "nrs",
///         publicCloudResourceName: "xnrwtxesebdfzrqiamebczhoyjbqeq",
///     },
///     resourceGroupName: "rgredshiftClusterParameterGroup",
///     tags: {
///         key4322: "zjgvmwcimdtqwxhy",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// redshift_cluster_parameter_group = azure_native.awsconnector.RedshiftClusterParameterGroup("redshiftClusterParameterGroup",
///     location="gskgxjliwptm",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "whliokkrefhwytv",
///         "aws_account_id": "fdljzalgig",
///         "aws_properties": {
///             "description": "gvl",
///             "parameter_group_family": "bbhnqerzrhqtinntphvuim",
///             "parameter_group_name": "tiqxhqigpmuckmnpgijvnpwzb",
///             "parameters": [{
///                 "parameter_name": "jxeucnajvjzv",
///                 "parameter_value": "ubxmwmoxeslbruenu",
///             }],
///             "tags": [{
///                 "key": "ucdvfenzatoxmpdicwhztuvgtnku",
///                 "value": "qpznlj",
///             }],
///         },
///         "aws_region": "wrhyhrmwhdmlnjjbrl",
///         "aws_source_schema": "nkdbqnqvsdnvogwatfxlubppr",
///         "aws_tags": {
///             "key6090": "vaqtqamdjobsgwecpvyxeerjrrxac",
///         },
///         "public_cloud_connectors_resource_id": "nrs",
///         "public_cloud_resource_name": "xnrwtxesebdfzrqiamebczhoyjbqeq",
///     },
///     resource_group_name="rgredshiftClusterParameterGroup",
///     tags={
///         "key4322": "zjgvmwcimdtqwxhy",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   redshiftClusterParameterGroup:
///     type: azure-native:awsconnector:RedshiftClusterParameterGroup
///     properties:
///       location: gskgxjliwptm
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: whliokkrefhwytv
///         awsAccountId: fdljzalgig
///         awsProperties:
///           description: gvl
///           parameterGroupFamily: bbhnqerzrhqtinntphvuim
///           parameterGroupName: tiqxhqigpmuckmnpgijvnpwzb
///           parameters:
///             - parameterName: jxeucnajvjzv
///               parameterValue: ubxmwmoxeslbruenu
///           tags:
///             - key: ucdvfenzatoxmpdicwhztuvgtnku
///               value: qpznlj
///         awsRegion: wrhyhrmwhdmlnjjbrl
///         awsSourceSchema: nkdbqnqvsdnvogwatfxlubppr
///         awsTags:
///           key6090: vaqtqamdjobsgwecpvyxeerjrrxac
///         publicCloudConnectorsResourceId: nrs
///         publicCloudResourceName: xnrwtxesebdfzrqiamebczhoyjbqeq
///       resourceGroupName: rgredshiftClusterParameterGroup
///       tags:
///         key4322: zjgvmwcimdtqwxhy
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
/// $ pulumi import azure-native:awsconnector:RedshiftClusterParameterGroup jptweejzcgxaqbqtgwmij /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/redshiftClusterParameterGroups/{name}
/// ```
class RedshiftClusterParameterGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<RedshiftClusterParameterGroupPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RedshiftClusterParameterGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RedshiftClusterParameterGroup]. {@macro pulumi_awsconnector_redshift_cluster_parameter_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RedshiftClusterParameterGroup(
    String name, {
    RedshiftClusterParameterGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:RedshiftClusterParameterGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<RedshiftClusterParameterGroupPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RedshiftClusterParameterGroupPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
