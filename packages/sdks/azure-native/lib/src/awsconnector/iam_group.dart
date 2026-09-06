import 'package:pulumi/pulumi.dart' as pulumi;
import 'iam_group_args.dart';
import 'iam_group_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### IamGroups_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var iamGroup = new AzureNative.AwsConnector.IamGroup("iamGroup", new()
///     {
///         Location = "badqu",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.IamGroupPropertiesArgs
///         {
///             Arn = "yvnnjydmrptjbytuyca",
///             AwsAccountId = "obfwwcnhlgytlanolsfrdn",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsIamGroupPropertiesArgs
///             {
///                 Arn = "qaymkzqiwzdilzpmfapwpudc",
///                 GroupName = "zcmfl",
///                 ManagedPolicyArns = new[]
///                 {
///                     "uqek",
///                 },
///                 Path = "liuneeastp",
///                 Policies = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.PolicyArgs
///                     {
///                         PolicyDocument = null,
///                         PolicyName = "cokejufrpuszoopjjywwxopal",
///                     },
///                 },
///             },
///             AwsRegion = "uqzi",
///             AwsSourceSchema = "kprcuajdxtfckwviyxpajstzdjeb",
///             AwsTags =
///             {
///                 { "key9078", "mpcfehsyuyqdbvmijur" },
///             },
///             PublicCloudConnectorsResourceId = "fjfneaczmcscofgdjnxw",
///             PublicCloudResourceName = "hj",
///         },
///         ResourceGroupName = "rgiamGroup",
///         Tags =
///         {
///             { "key3844", "pzbfdnhacakyrfejqwafqqmbdjnpx" },
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
/// 		_, err := awsconnector.NewIamGroup(ctx, "iamGroup", &awsconnector.IamGroupArgs{
/// 			Location: pulumi.String("badqu"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.IamGroupPropertiesArgs{
/// 				Arn:          pulumi.String("yvnnjydmrptjbytuyca"),
/// 				AwsAccountId: pulumi.String("obfwwcnhlgytlanolsfrdn"),
/// 				AwsProperties: &awsconnector.AwsIamGroupPropertiesArgs{
/// 					Arn:       pulumi.String("qaymkzqiwzdilzpmfapwpudc"),
/// 					GroupName: pulumi.String("zcmfl"),
/// 					ManagedPolicyArns: pulumi.StringArray{
/// 						pulumi.String("uqek"),
/// 					},
/// 					Path: pulumi.String("liuneeastp"),
/// 					Policies: awsconnector.PolicyArray{
/// 						&awsconnector.PolicyArgs{
/// 							PolicyDocument: pulumi.Any(map[string]interface{}{}),
/// 							PolicyName:     pulumi.String("cokejufrpuszoopjjywwxopal"),
/// 						},
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("uqzi"),
/// 				AwsSourceSchema: pulumi.String("kprcuajdxtfckwviyxpajstzdjeb"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key9078": pulumi.String("mpcfehsyuyqdbvmijur"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("fjfneaczmcscofgdjnxw"),
/// 				PublicCloudResourceName:         pulumi.String("hj"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgiamGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"key3844": pulumi.String("pzbfdnhacakyrfejqwafqqmbdjnpx"),
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
/// resource "azure-native_awsconnector_iamgroup" "iamGroup" {
///   location = "badqu"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "yvnnjydmrptjbytuyca"
///     aws_account_id = "obfwwcnhlgytlanolsfrdn"
///     aws_properties = {
///       arn                 = "qaymkzqiwzdilzpmfapwpudc"
///       group_name          = "zcmfl"
///       managed_policy_arns = ["uqek"]
///       path                = "liuneeastp"
///       policies = [{
///         "policyDocument" = {}
///         "policyName"     = "cokejufrpuszoopjjywwxopal"
///       }]
///     }
///     aws_region        = "uqzi"
///     aws_source_schema = "kprcuajdxtfckwviyxpajstzdjeb"
///     aws_tags = {
///       "key9078" = "mpcfehsyuyqdbvmijur"
///     }
///     public_cloud_connectors_resource_id = "fjfneaczmcscofgdjnxw"
///     public_cloud_resource_name          = "hj"
///   }
///   resource_group_name = "rgiamGroup"
///   tags = {
///     "key3844" = "pzbfdnhacakyrfejqwafqqmbdjnpx"
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
/// import com.pulumi.azurenative.awsconnector.IamGroup;
/// import com.pulumi.azurenative.awsconnector.IamGroupArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.IamGroupPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsIamGroupPropertiesArgs;
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
///         var iamGroup = new IamGroup("iamGroup", IamGroupArgs.builder()
///             .location("badqu")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(IamGroupPropertiesArgs.builder()
///                 .arn("yvnnjydmrptjbytuyca")
///                 .awsAccountId("obfwwcnhlgytlanolsfrdn")
///                 .awsProperties(AwsIamGroupPropertiesArgs.builder()
///                     .arn("qaymkzqiwzdilzpmfapwpudc")
///                     .groupName("zcmfl")
///                     .managedPolicyArns("uqek")
///                     .path("liuneeastp")
///                     .policies(PolicyArgs.builder()
///                         .policyDocument(Map.ofEntries(
///                         ))
///                         .policyName("cokejufrpuszoopjjywwxopal")
///                         .build())
///                     .build())
///                 .awsRegion("uqzi")
///                 .awsSourceSchema("kprcuajdxtfckwviyxpajstzdjeb")
///                 .awsTags(Map.of("key9078", "mpcfehsyuyqdbvmijur"))
///                 .publicCloudConnectorsResourceId("fjfneaczmcscofgdjnxw")
///                 .publicCloudResourceName("hj")
///                 .build())
///             .resourceGroupName("rgiamGroup")
///             .tags(Map.of("key3844", "pzbfdnhacakyrfejqwafqqmbdjnpx"))
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
/// const iamGroup = new azure_native.awsconnector.IamGroup("iamGroup", {
///     location: "badqu",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "yvnnjydmrptjbytuyca",
///         awsAccountId: "obfwwcnhlgytlanolsfrdn",
///         awsProperties: {
///             arn: "qaymkzqiwzdilzpmfapwpudc",
///             groupName: "zcmfl",
///             managedPolicyArns: ["uqek"],
///             path: "liuneeastp",
///             policies: [{
///                 policyDocument: {},
///                 policyName: "cokejufrpuszoopjjywwxopal",
///             }],
///         },
///         awsRegion: "uqzi",
///         awsSourceSchema: "kprcuajdxtfckwviyxpajstzdjeb",
///         awsTags: {
///             key9078: "mpcfehsyuyqdbvmijur",
///         },
///         publicCloudConnectorsResourceId: "fjfneaczmcscofgdjnxw",
///         publicCloudResourceName: "hj",
///     },
///     resourceGroupName: "rgiamGroup",
///     tags: {
///         key3844: "pzbfdnhacakyrfejqwafqqmbdjnpx",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// iam_group = azure_native.awsconnector.IamGroup("iamGroup",
///     location="badqu",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "yvnnjydmrptjbytuyca",
///         "aws_account_id": "obfwwcnhlgytlanolsfrdn",
///         "aws_properties": {
///             "arn": "qaymkzqiwzdilzpmfapwpudc",
///             "group_name": "zcmfl",
///             "managed_policy_arns": ["uqek"],
///             "path": "liuneeastp",
///             "policies": [{
///                 "policy_document": {},
///                 "policy_name": "cokejufrpuszoopjjywwxopal",
///             }],
///         },
///         "aws_region": "uqzi",
///         "aws_source_schema": "kprcuajdxtfckwviyxpajstzdjeb",
///         "aws_tags": {
///             "key9078": "mpcfehsyuyqdbvmijur",
///         },
///         "public_cloud_connectors_resource_id": "fjfneaczmcscofgdjnxw",
///         "public_cloud_resource_name": "hj",
///     },
///     resource_group_name="rgiamGroup",
///     tags={
///         "key3844": "pzbfdnhacakyrfejqwafqqmbdjnpx",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   iamGroup:
///     type: azure-native:awsconnector:IamGroup
///     properties:
///       location: badqu
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: yvnnjydmrptjbytuyca
///         awsAccountId: obfwwcnhlgytlanolsfrdn
///         awsProperties:
///           arn: qaymkzqiwzdilzpmfapwpudc
///           groupName: zcmfl
///           managedPolicyArns:
///             - uqek
///           path: liuneeastp
///           policies:
///             - policyDocument: {}
///               policyName: cokejufrpuszoopjjywwxopal
///         awsRegion: uqzi
///         awsSourceSchema: kprcuajdxtfckwviyxpajstzdjeb
///         awsTags:
///           key9078: mpcfehsyuyqdbvmijur
///         publicCloudConnectorsResourceId: fjfneaczmcscofgdjnxw
///         publicCloudResourceName: hj
///       resourceGroupName: rgiamGroup
///       tags:
///         key3844: pzbfdnhacakyrfejqwafqqmbdjnpx
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
/// $ pulumi import azure-native:awsconnector:IamGroup erqrekmdrzpjiicenaylpbsim /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/iamGroups/{name}
/// ```
class IamGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<IamGroupPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [IamGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IamGroup]. {@macro pulumi_awsconnector_iam_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IamGroup(
    String name, {
    IamGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:IamGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<IamGroupPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IamGroupPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [IamGroup] resource.
  IamGroup.reference(String urn)
    : super(
        'azure-native:awsconnector:IamGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<IamGroupPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IamGroupPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
