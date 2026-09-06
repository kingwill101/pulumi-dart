import 'package:pulumi/pulumi.dart' as pulumi;
import 'organizations_organization_args.dart';
import 'organizations_organization_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### OrganizationsOrganizations_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var organizationsOrganization = new AzureNative.AwsConnector.OrganizationsOrganization("organizationsOrganization", new()
///     {
///         Location = "fnzfxrkfm",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.OrganizationsOrganizationPropertiesArgs
///         {
///             Arn = "zitrzzdipihyovymdibklklp",
///             AwsAccountId = "jusgdaxywgsswam",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsOrganizationsOrganizationPropertiesArgs
///             {
///                 Arn = "fzkwsgtciqziilbltckzwq",
///                 FeatureSet = AzureNative.AwsConnector.FeatureSet.ALL,
///                 Id = "tqnrsqnzkqywpecutoxisdogfsu",
///                 ManagementAccountArn = "aobzot",
///                 ManagementAccountEmail = "vvcketnvinjxxhqabioa",
///                 ManagementAccountId = "bvkksaokvmucejmtqhlwqoiuluet",
///                 RootId = "jtmupzgyvqhoiag",
///             },
///             AwsRegion = "gogfumxcpzmqfcpynwlbjhjax",
///             AwsSourceSchema = "pdqllbj",
///             AwsTags =
///             {
///                 { "key8866", "zzxfaowxlvuuzuc" },
///             },
///             PublicCloudConnectorsResourceId = "xdnn",
///             PublicCloudResourceName = "vvwkbodgowhbhletjswxg",
///         },
///         ResourceGroupName = "rgorganizationsOrganization",
///         Tags =
///         {
///             { "key6745", "seperqgwgodhrcsengozvpmpqcp" },
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
/// 		_, err := awsconnector.NewOrganizationsOrganization(ctx, "organizationsOrganization", &awsconnector.OrganizationsOrganizationArgs{
/// 			Location: pulumi.String("fnzfxrkfm"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.OrganizationsOrganizationPropertiesArgs{
/// 				Arn:          pulumi.String("zitrzzdipihyovymdibklklp"),
/// 				AwsAccountId: pulumi.String("jusgdaxywgsswam"),
/// 				AwsProperties: &awsconnector.AwsOrganizationsOrganizationPropertiesArgs{
/// 					Arn:                    pulumi.String("fzkwsgtciqziilbltckzwq"),
/// 					FeatureSet:             pulumi.String(awsconnector.FeatureSetALL),
/// 					Id:                     pulumi.String("tqnrsqnzkqywpecutoxisdogfsu"),
/// 					ManagementAccountArn:   pulumi.String("aobzot"),
/// 					ManagementAccountEmail: pulumi.String("vvcketnvinjxxhqabioa"),
/// 					ManagementAccountId:    pulumi.String("bvkksaokvmucejmtqhlwqoiuluet"),
/// 					RootId:                 pulumi.String("jtmupzgyvqhoiag"),
/// 				},
/// 				AwsRegion:       pulumi.String("gogfumxcpzmqfcpynwlbjhjax"),
/// 				AwsSourceSchema: pulumi.String("pdqllbj"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key8866": pulumi.String("zzxfaowxlvuuzuc"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("xdnn"),
/// 				PublicCloudResourceName:         pulumi.String("vvwkbodgowhbhletjswxg"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgorganizationsOrganization"),
/// 			Tags: pulumi.StringMap{
/// 				"key6745": pulumi.String("seperqgwgodhrcsengozvpmpqcp"),
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
/// resource "azure-native_awsconnector_organizationsorganization" "organizationsOrganization" {
///   location = "fnzfxrkfm"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "zitrzzdipihyovymdibklklp"
///     aws_account_id = "jusgdaxywgsswam"
///     aws_properties = {
///       arn                      = "fzkwsgtciqziilbltckzwq"
///       feature_set              = "ALL"
///       id                       = "tqnrsqnzkqywpecutoxisdogfsu"
///       management_account_arn   = "aobzot"
///       management_account_email = "vvcketnvinjxxhqabioa"
///       management_account_id    = "bvkksaokvmucejmtqhlwqoiuluet"
///       root_id                  = "jtmupzgyvqhoiag"
///     }
///     aws_region        = "gogfumxcpzmqfcpynwlbjhjax"
///     aws_source_schema = "pdqllbj"
///     aws_tags = {
///       "key8866" = "zzxfaowxlvuuzuc"
///     }
///     public_cloud_connectors_resource_id = "xdnn"
///     public_cloud_resource_name          = "vvwkbodgowhbhletjswxg"
///   }
///   resource_group_name = "rgorganizationsOrganization"
///   tags = {
///     "key6745" = "seperqgwgodhrcsengozvpmpqcp"
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
/// import com.pulumi.azurenative.awsconnector.OrganizationsOrganization;
/// import com.pulumi.azurenative.awsconnector.OrganizationsOrganizationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.OrganizationsOrganizationPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsOrganizationsOrganizationPropertiesArgs;
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
///         var organizationsOrganization = new OrganizationsOrganization("organizationsOrganization", OrganizationsOrganizationArgs.builder()
///             .location("fnzfxrkfm")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(OrganizationsOrganizationPropertiesArgs.builder()
///                 .arn("zitrzzdipihyovymdibklklp")
///                 .awsAccountId("jusgdaxywgsswam")
///                 .awsProperties(AwsOrganizationsOrganizationPropertiesArgs.builder()
///                     .arn("fzkwsgtciqziilbltckzwq")
///                     .featureSet("ALL")
///                     .id("tqnrsqnzkqywpecutoxisdogfsu")
///                     .managementAccountArn("aobzot")
///                     .managementAccountEmail("vvcketnvinjxxhqabioa")
///                     .managementAccountId("bvkksaokvmucejmtqhlwqoiuluet")
///                     .rootId("jtmupzgyvqhoiag")
///                     .build())
///                 .awsRegion("gogfumxcpzmqfcpynwlbjhjax")
///                 .awsSourceSchema("pdqllbj")
///                 .awsTags(Map.of("key8866", "zzxfaowxlvuuzuc"))
///                 .publicCloudConnectorsResourceId("xdnn")
///                 .publicCloudResourceName("vvwkbodgowhbhletjswxg")
///                 .build())
///             .resourceGroupName("rgorganizationsOrganization")
///             .tags(Map.of("key6745", "seperqgwgodhrcsengozvpmpqcp"))
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
/// const organizationsOrganization = new azure_native.awsconnector.OrganizationsOrganization("organizationsOrganization", {
///     location: "fnzfxrkfm",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "zitrzzdipihyovymdibklklp",
///         awsAccountId: "jusgdaxywgsswam",
///         awsProperties: {
///             arn: "fzkwsgtciqziilbltckzwq",
///             featureSet: azure_native.awsconnector.FeatureSet.ALL,
///             id: "tqnrsqnzkqywpecutoxisdogfsu",
///             managementAccountArn: "aobzot",
///             managementAccountEmail: "vvcketnvinjxxhqabioa",
///             managementAccountId: "bvkksaokvmucejmtqhlwqoiuluet",
///             rootId: "jtmupzgyvqhoiag",
///         },
///         awsRegion: "gogfumxcpzmqfcpynwlbjhjax",
///         awsSourceSchema: "pdqllbj",
///         awsTags: {
///             key8866: "zzxfaowxlvuuzuc",
///         },
///         publicCloudConnectorsResourceId: "xdnn",
///         publicCloudResourceName: "vvwkbodgowhbhletjswxg",
///     },
///     resourceGroupName: "rgorganizationsOrganization",
///     tags: {
///         key6745: "seperqgwgodhrcsengozvpmpqcp",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// organizations_organization = azure_native.awsconnector.OrganizationsOrganization("organizationsOrganization",
///     location="fnzfxrkfm",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "zitrzzdipihyovymdibklklp",
///         "aws_account_id": "jusgdaxywgsswam",
///         "aws_properties": {
///             "arn": "fzkwsgtciqziilbltckzwq",
///             "feature_set": azure_native.awsconnector.FeatureSet.ALL,
///             "id": "tqnrsqnzkqywpecutoxisdogfsu",
///             "management_account_arn": "aobzot",
///             "management_account_email": "vvcketnvinjxxhqabioa",
///             "management_account_id": "bvkksaokvmucejmtqhlwqoiuluet",
///             "root_id": "jtmupzgyvqhoiag",
///         },
///         "aws_region": "gogfumxcpzmqfcpynwlbjhjax",
///         "aws_source_schema": "pdqllbj",
///         "aws_tags": {
///             "key8866": "zzxfaowxlvuuzuc",
///         },
///         "public_cloud_connectors_resource_id": "xdnn",
///         "public_cloud_resource_name": "vvwkbodgowhbhletjswxg",
///     },
///     resource_group_name="rgorganizationsOrganization",
///     tags={
///         "key6745": "seperqgwgodhrcsengozvpmpqcp",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   organizationsOrganization:
///     type: azure-native:awsconnector:OrganizationsOrganization
///     properties:
///       location: fnzfxrkfm
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: zitrzzdipihyovymdibklklp
///         awsAccountId: jusgdaxywgsswam
///         awsProperties:
///           arn: fzkwsgtciqziilbltckzwq
///           featureSet: ALL
///           id: tqnrsqnzkqywpecutoxisdogfsu
///           managementAccountArn: aobzot
///           managementAccountEmail: vvcketnvinjxxhqabioa
///           managementAccountId: bvkksaokvmucejmtqhlwqoiuluet
///           rootId: jtmupzgyvqhoiag
///         awsRegion: gogfumxcpzmqfcpynwlbjhjax
///         awsSourceSchema: pdqllbj
///         awsTags:
///           key8866: zzxfaowxlvuuzuc
///         publicCloudConnectorsResourceId: xdnn
///         publicCloudResourceName: vvwkbodgowhbhletjswxg
///       resourceGroupName: rgorganizationsOrganization
///       tags:
///         key6745: seperqgwgodhrcsengozvpmpqcp
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
/// $ pulumi import azure-native:awsconnector:OrganizationsOrganization ydamgdjqobm /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/organizationsOrganizations/{name}
/// ```
class OrganizationsOrganization extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<OrganizationsOrganizationPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [OrganizationsOrganization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationsOrganization]. {@macro pulumi_awsconnector_organizations_organization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationsOrganization(
    String name, {
    OrganizationsOrganizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:OrganizationsOrganization',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<OrganizationsOrganizationPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationsOrganizationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [OrganizationsOrganization] resource.
  OrganizationsOrganization.reference(String urn)
    : super(
        'azure-native:awsconnector:OrganizationsOrganization',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<OrganizationsOrganizationPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationsOrganizationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
