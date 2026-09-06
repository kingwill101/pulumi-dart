import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'waf_web_acl_summary_args.dart';
import 'waf_web_aclsummary_properties_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### WafWebAclSummaries_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var wafWebAclSummary = new AzureNative.AwsConnector.WafWebAclSummary("wafWebAclSummary", new()
///     {
///         Location = "bpposymcoxqcolyqmtfpvoh",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.WafWebACLSummaryPropertiesArgs
///         {
///             Arn = "gorpeccxrhf",
///             AwsAccountId = "ovompqprisse",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsWafWebACLSummaryPropertiesArgs
///             {
///                 Name = "rrwaevjnkowkxlccaw",
///                 WebACLId = "hh",
///             },
///             AwsRegion = "nnnmvzddsej",
///             AwsSourceSchema = "afgujkvjwspbbruhwbeji",
///             AwsTags =
///             {
///                 { "key8890", "fpvbbqxuwtqptqktmgp" },
///             },
///             PublicCloudConnectorsResourceId = "kzgpy",
///             PublicCloudResourceName = "lejvxofzybufrazktgotrowforlsrp",
///         },
///         ResourceGroupName = "rgwafWebACLSummary",
///         Tags =
///         {
///             { "key2706", "mdnvnlajj" },
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
/// 		_, err := awsconnector.NewWafWebAclSummary(ctx, "wafWebAclSummary", &awsconnector.WafWebAclSummaryArgs{
/// 			Location: pulumi.String("bpposymcoxqcolyqmtfpvoh"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.WafWebACLSummaryPropertiesArgs{
/// 				Arn:          pulumi.String("gorpeccxrhf"),
/// 				AwsAccountId: pulumi.String("ovompqprisse"),
/// 				AwsProperties: &awsconnector.AwsWafWebACLSummaryPropertiesArgs{
/// 					Name:     pulumi.String("rrwaevjnkowkxlccaw"),
/// 					WebACLId: pulumi.String("hh"),
/// 				},
/// 				AwsRegion:       pulumi.String("nnnmvzddsej"),
/// 				AwsSourceSchema: pulumi.String("afgujkvjwspbbruhwbeji"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key8890": pulumi.String("fpvbbqxuwtqptqktmgp"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("kzgpy"),
/// 				PublicCloudResourceName:         pulumi.String("lejvxofzybufrazktgotrowforlsrp"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgwafWebACLSummary"),
/// 			Tags: pulumi.StringMap{
/// 				"key2706": pulumi.String("mdnvnlajj"),
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
/// resource "azure-native_awsconnector_wafwebaclsummary" "wafWebAclSummary" {
///   location = "bpposymcoxqcolyqmtfpvoh"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "gorpeccxrhf"
///     aws_account_id = "ovompqprisse"
///     aws_properties = {
///       name       = "rrwaevjnkowkxlccaw"
///       web_acl_id = "hh"
///     }
///     aws_region        = "nnnmvzddsej"
///     aws_source_schema = "afgujkvjwspbbruhwbeji"
///     aws_tags = {
///       "key8890" = "fpvbbqxuwtqptqktmgp"
///     }
///     public_cloud_connectors_resource_id = "kzgpy"
///     public_cloud_resource_name          = "lejvxofzybufrazktgotrowforlsrp"
///   }
///   resource_group_name = "rgwafWebACLSummary"
///   tags = {
///     "key2706" = "mdnvnlajj"
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
/// import com.pulumi.azurenative.awsconnector.WafWebAclSummary;
/// import com.pulumi.azurenative.awsconnector.WafWebAclSummaryArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.WafWebACLSummaryPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsWafWebACLSummaryPropertiesArgs;
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
///         var wafWebAclSummary = new WafWebAclSummary("wafWebAclSummary", WafWebAclSummaryArgs.builder()
///             .location("bpposymcoxqcolyqmtfpvoh")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(WafWebACLSummaryPropertiesArgs.builder()
///                 .arn("gorpeccxrhf")
///                 .awsAccountId("ovompqprisse")
///                 .awsProperties(AwsWafWebACLSummaryPropertiesArgs.builder()
///                     .name("rrwaevjnkowkxlccaw")
///                     .webACLId("hh")
///                     .build())
///                 .awsRegion("nnnmvzddsej")
///                 .awsSourceSchema("afgujkvjwspbbruhwbeji")
///                 .awsTags(Map.of("key8890", "fpvbbqxuwtqptqktmgp"))
///                 .publicCloudConnectorsResourceId("kzgpy")
///                 .publicCloudResourceName("lejvxofzybufrazktgotrowforlsrp")
///                 .build())
///             .resourceGroupName("rgwafWebACLSummary")
///             .tags(Map.of("key2706", "mdnvnlajj"))
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
/// const wafWebAclSummary = new azure_native.awsconnector.WafWebAclSummary("wafWebAclSummary", {
///     location: "bpposymcoxqcolyqmtfpvoh",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "gorpeccxrhf",
///         awsAccountId: "ovompqprisse",
///         awsProperties: {
///             name: "rrwaevjnkowkxlccaw",
///             webACLId: "hh",
///         },
///         awsRegion: "nnnmvzddsej",
///         awsSourceSchema: "afgujkvjwspbbruhwbeji",
///         awsTags: {
///             key8890: "fpvbbqxuwtqptqktmgp",
///         },
///         publicCloudConnectorsResourceId: "kzgpy",
///         publicCloudResourceName: "lejvxofzybufrazktgotrowforlsrp",
///     },
///     resourceGroupName: "rgwafWebACLSummary",
///     tags: {
///         key2706: "mdnvnlajj",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// waf_web_acl_summary = azure_native.awsconnector.WafWebAclSummary("wafWebAclSummary",
///     location="bpposymcoxqcolyqmtfpvoh",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "gorpeccxrhf",
///         "aws_account_id": "ovompqprisse",
///         "aws_properties": {
///             "name": "rrwaevjnkowkxlccaw",
///             "web_acl_id": "hh",
///         },
///         "aws_region": "nnnmvzddsej",
///         "aws_source_schema": "afgujkvjwspbbruhwbeji",
///         "aws_tags": {
///             "key8890": "fpvbbqxuwtqptqktmgp",
///         },
///         "public_cloud_connectors_resource_id": "kzgpy",
///         "public_cloud_resource_name": "lejvxofzybufrazktgotrowforlsrp",
///     },
///     resource_group_name="rgwafWebACLSummary",
///     tags={
///         "key2706": "mdnvnlajj",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   wafWebAclSummary:
///     type: azure-native:awsconnector:WafWebAclSummary
///     properties:
///       location: bpposymcoxqcolyqmtfpvoh
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: gorpeccxrhf
///         awsAccountId: ovompqprisse
///         awsProperties:
///           name: rrwaevjnkowkxlccaw
///           webACLId: hh
///         awsRegion: nnnmvzddsej
///         awsSourceSchema: afgujkvjwspbbruhwbeji
///         awsTags:
///           key8890: fpvbbqxuwtqptqktmgp
///         publicCloudConnectorsResourceId: kzgpy
///         publicCloudResourceName: lejvxofzybufrazktgotrowforlsrp
///       resourceGroupName: rgwafWebACLSummary
///       tags:
///         key2706: mdnvnlajj
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
/// $ pulumi import azure-native:awsconnector:WafWebAclSummary mbdbeqqvxgemhnzmbstpqijqumpudg /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/wafWebACLSummaries/{name}
/// ```
class WafWebAclSummary extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<WafWebACLSummaryPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WafWebAclSummary].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WafWebAclSummary]. {@macro pulumi_awsconnector_waf_web_acl_summary_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WafWebAclSummary(
    String name, {
    WafWebAclSummaryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:WafWebAclSummary',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<WafWebACLSummaryPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WafWebACLSummaryPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [WafWebAclSummary] resource.
  WafWebAclSummary.reference(String urn)
    : super(
        'azure-native:awsconnector:WafWebAclSummary',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<WafWebACLSummaryPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WafWebACLSummaryPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
