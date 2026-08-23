import 'package:pulumi/pulumi.dart' as pulumi;
import 'organizations_account_args.dart';
import 'organizations_account_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### OrganizationsAccounts_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var organizationsAccount = new AzureNative.AwsConnector.OrganizationsAccount("organizationsAccount", new()
///     {
///         Location = "wyzamnearzlajcvzhj",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.OrganizationsAccountPropertiesArgs
///         {
///             Arn = "zdirlutwidghhfrufpjhexxbsrfxwl",
///             AwsAccountId = "ggnntqdpbcdtbjxaiabsgxxmtunblo",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsOrganizationsAccountPropertiesArgs
///             {
///                 AccountId = "kkdjvhtsvtqybdxezywfojndmjpou",
///                 AccountName = "vegcsgzymnbxry",
///                 Arn = "ffkjxnnwpewiiudycadgtyrztehy",
///                 Email = "bwriakvcvyhklvulzwvlddeevj",
///                 JoinedMethod = AzureNative.AwsConnector.JoinedMethod.CREATED,
///                 JoinedTimestamp = "xdxxffzfzxgewxyavjim",
///                 ParentIds = new[]
///                 {
///                     "xxzonolej",
///                 },
///                 RoleName = "izpxv",
///                 Status = AzureNative.AwsConnector.Status.ACTIVE,
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "jwuqulmpbiwqxudtqfgrtnvxtbyxcb",
///                         Value = "esqhxwyrftlxbuab",
///                     },
///                 },
///             },
///             AwsRegion = "yvslwciyhnwwnxxrv",
///             AwsSourceSchema = "emcozgsikaryx",
///             AwsTags =
///             {
///                 { "key907", "gwpsscwhgavtczmdnje" },
///             },
///             PublicCloudConnectorsResourceId = "zbgkie",
///             PublicCloudResourceName = "tmmwrgytiyucnzokuiq",
///         },
///         ResourceGroupName = "rgorganizationsAccount",
///         Tags =
///         {
///             { "key9774", "vgzqosjmzoxfqujm" },
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
/// 		_, err := awsconnector.NewOrganizationsAccount(ctx, "organizationsAccount", &awsconnector.OrganizationsAccountArgs{
/// 			Location: pulumi.String("wyzamnearzlajcvzhj"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.OrganizationsAccountPropertiesArgs{
/// 				Arn:          pulumi.String("zdirlutwidghhfrufpjhexxbsrfxwl"),
/// 				AwsAccountId: pulumi.String("ggnntqdpbcdtbjxaiabsgxxmtunblo"),
/// 				AwsProperties: &awsconnector.AwsOrganizationsAccountPropertiesArgs{
/// 					AccountId:       pulumi.String("kkdjvhtsvtqybdxezywfojndmjpou"),
/// 					AccountName:     pulumi.String("vegcsgzymnbxry"),
/// 					Arn:             pulumi.String("ffkjxnnwpewiiudycadgtyrztehy"),
/// 					Email:           pulumi.String("bwriakvcvyhklvulzwvlddeevj"),
/// 					JoinedMethod:    pulumi.String(awsconnector.JoinedMethodCREATED),
/// 					JoinedTimestamp: pulumi.String("xdxxffzfzxgewxyavjim"),
/// 					ParentIds: pulumi.StringArray{
/// 						pulumi.String("xxzonolej"),
/// 					},
/// 					RoleName: pulumi.String("izpxv"),
/// 					Status:   pulumi.String(awsconnector.StatusACTIVE),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("jwuqulmpbiwqxudtqfgrtnvxtbyxcb"),
/// 							Value: pulumi.String("esqhxwyrftlxbuab"),
/// 						},
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("yvslwciyhnwwnxxrv"),
/// 				AwsSourceSchema: pulumi.String("emcozgsikaryx"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key907": pulumi.String("gwpsscwhgavtczmdnje"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("zbgkie"),
/// 				PublicCloudResourceName:         pulumi.String("tmmwrgytiyucnzokuiq"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgorganizationsAccount"),
/// 			Tags: pulumi.StringMap{
/// 				"key9774": pulumi.String("vgzqosjmzoxfqujm"),
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
/// resource "azure-native_awsconnector_organizationsaccount" "organizationsAccount" {
///   location = "wyzamnearzlajcvzhj"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "zdirlutwidghhfrufpjhexxbsrfxwl"
///     aws_account_id = "ggnntqdpbcdtbjxaiabsgxxmtunblo"
///     aws_properties = {
///       account_id       = "kkdjvhtsvtqybdxezywfojndmjpou"
///       account_name     = "vegcsgzymnbxry"
///       arn              = "ffkjxnnwpewiiudycadgtyrztehy"
///       email            = "bwriakvcvyhklvulzwvlddeevj"
///       joined_method    = "CREATED"
///       joined_timestamp = "xdxxffzfzxgewxyavjim"
///       parent_ids       = ["xxzonolej"]
///       role_name        = "izpxv"
///       status           = "ACTIVE"
///       tags = [{
///         "key"   = "jwuqulmpbiwqxudtqfgrtnvxtbyxcb"
///         "value" = "esqhxwyrftlxbuab"
///       }]
///     }
///     aws_region        = "yvslwciyhnwwnxxrv"
///     aws_source_schema = "emcozgsikaryx"
///     aws_tags = {
///       "key907" = "gwpsscwhgavtczmdnje"
///     }
///     public_cloud_connectors_resource_id = "zbgkie"
///     public_cloud_resource_name          = "tmmwrgytiyucnzokuiq"
///   }
///   resource_group_name = "rgorganizationsAccount"
///   tags = {
///     "key9774" = "vgzqosjmzoxfqujm"
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
/// import com.pulumi.azurenative.awsconnector.OrganizationsAccount;
/// import com.pulumi.azurenative.awsconnector.OrganizationsAccountArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.OrganizationsAccountPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsOrganizationsAccountPropertiesArgs;
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
///         var organizationsAccount = new OrganizationsAccount("organizationsAccount", OrganizationsAccountArgs.builder()
///             .location("wyzamnearzlajcvzhj")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(OrganizationsAccountPropertiesArgs.builder()
///                 .arn("zdirlutwidghhfrufpjhexxbsrfxwl")
///                 .awsAccountId("ggnntqdpbcdtbjxaiabsgxxmtunblo")
///                 .awsProperties(AwsOrganizationsAccountPropertiesArgs.builder()
///                     .accountId("kkdjvhtsvtqybdxezywfojndmjpou")
///                     .accountName("vegcsgzymnbxry")
///                     .arn("ffkjxnnwpewiiudycadgtyrztehy")
///                     .email("bwriakvcvyhklvulzwvlddeevj")
///                     .joinedMethod("CREATED")
///                     .joinedTimestamp("xdxxffzfzxgewxyavjim")
///                     .parentIds("xxzonolej")
///                     .roleName("izpxv")
///                     .status("ACTIVE")
///                     .tags(TagArgs.builder()
///                         .key("jwuqulmpbiwqxudtqfgrtnvxtbyxcb")
///                         .value("esqhxwyrftlxbuab")
///                         .build())
///                     .build())
///                 .awsRegion("yvslwciyhnwwnxxrv")
///                 .awsSourceSchema("emcozgsikaryx")
///                 .awsTags(Map.of("key907", "gwpsscwhgavtczmdnje"))
///                 .publicCloudConnectorsResourceId("zbgkie")
///                 .publicCloudResourceName("tmmwrgytiyucnzokuiq")
///                 .build())
///             .resourceGroupName("rgorganizationsAccount")
///             .tags(Map.of("key9774", "vgzqosjmzoxfqujm"))
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
/// const organizationsAccount = new azure_native.awsconnector.OrganizationsAccount("organizationsAccount", {
///     location: "wyzamnearzlajcvzhj",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "zdirlutwidghhfrufpjhexxbsrfxwl",
///         awsAccountId: "ggnntqdpbcdtbjxaiabsgxxmtunblo",
///         awsProperties: {
///             accountId: "kkdjvhtsvtqybdxezywfojndmjpou",
///             accountName: "vegcsgzymnbxry",
///             arn: "ffkjxnnwpewiiudycadgtyrztehy",
///             email: "bwriakvcvyhklvulzwvlddeevj",
///             joinedMethod: azure_native.awsconnector.JoinedMethod.CREATED,
///             joinedTimestamp: "xdxxffzfzxgewxyavjim",
///             parentIds: ["xxzonolej"],
///             roleName: "izpxv",
///             status: azure_native.awsconnector.Status.ACTIVE,
///             tags: [{
///                 key: "jwuqulmpbiwqxudtqfgrtnvxtbyxcb",
///                 value: "esqhxwyrftlxbuab",
///             }],
///         },
///         awsRegion: "yvslwciyhnwwnxxrv",
///         awsSourceSchema: "emcozgsikaryx",
///         awsTags: {
///             key907: "gwpsscwhgavtczmdnje",
///         },
///         publicCloudConnectorsResourceId: "zbgkie",
///         publicCloudResourceName: "tmmwrgytiyucnzokuiq",
///     },
///     resourceGroupName: "rgorganizationsAccount",
///     tags: {
///         key9774: "vgzqosjmzoxfqujm",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// organizations_account = azure_native.awsconnector.OrganizationsAccount("organizationsAccount",
///     location="wyzamnearzlajcvzhj",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "zdirlutwidghhfrufpjhexxbsrfxwl",
///         "aws_account_id": "ggnntqdpbcdtbjxaiabsgxxmtunblo",
///         "aws_properties": {
///             "account_id": "kkdjvhtsvtqybdxezywfojndmjpou",
///             "account_name": "vegcsgzymnbxry",
///             "arn": "ffkjxnnwpewiiudycadgtyrztehy",
///             "email": "bwriakvcvyhklvulzwvlddeevj",
///             "joined_method": azure_native.awsconnector.JoinedMethod.CREATED,
///             "joined_timestamp": "xdxxffzfzxgewxyavjim",
///             "parent_ids": ["xxzonolej"],
///             "role_name": "izpxv",
///             "status": azure_native.awsconnector.Status.ACTIVE,
///             "tags": [{
///                 "key": "jwuqulmpbiwqxudtqfgrtnvxtbyxcb",
///                 "value": "esqhxwyrftlxbuab",
///             }],
///         },
///         "aws_region": "yvslwciyhnwwnxxrv",
///         "aws_source_schema": "emcozgsikaryx",
///         "aws_tags": {
///             "key907": "gwpsscwhgavtczmdnje",
///         },
///         "public_cloud_connectors_resource_id": "zbgkie",
///         "public_cloud_resource_name": "tmmwrgytiyucnzokuiq",
///     },
///     resource_group_name="rgorganizationsAccount",
///     tags={
///         "key9774": "vgzqosjmzoxfqujm",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   organizationsAccount:
///     type: azure-native:awsconnector:OrganizationsAccount
///     properties:
///       location: wyzamnearzlajcvzhj
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: zdirlutwidghhfrufpjhexxbsrfxwl
///         awsAccountId: ggnntqdpbcdtbjxaiabsgxxmtunblo
///         awsProperties:
///           accountId: kkdjvhtsvtqybdxezywfojndmjpou
///           accountName: vegcsgzymnbxry
///           arn: ffkjxnnwpewiiudycadgtyrztehy
///           email: bwriakvcvyhklvulzwvlddeevj
///           joinedMethod: CREATED
///           joinedTimestamp: xdxxffzfzxgewxyavjim
///           parentIds:
///             - xxzonolej
///           roleName: izpxv
///           status: ACTIVE
///           tags:
///             - key: jwuqulmpbiwqxudtqfgrtnvxtbyxcb
///               value: esqhxwyrftlxbuab
///         awsRegion: yvslwciyhnwwnxxrv
///         awsSourceSchema: emcozgsikaryx
///         awsTags:
///           key907: gwpsscwhgavtczmdnje
///         publicCloudConnectorsResourceId: zbgkie
///         publicCloudResourceName: tmmwrgytiyucnzokuiq
///       resourceGroupName: rgorganizationsAccount
///       tags:
///         key9774: vgzqosjmzoxfqujm
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
/// $ pulumi import azure-native:awsconnector:OrganizationsAccount exyrlvjjmalphltdpztjlgart /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/organizationsAccounts/{name}
/// ```
class OrganizationsAccount extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<OrganizationsAccountPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [OrganizationsAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationsAccount]. {@macro pulumi_awsconnector_organizations_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationsAccount(
    String name, {
    OrganizationsAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:OrganizationsAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<OrganizationsAccountPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationsAccountPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
