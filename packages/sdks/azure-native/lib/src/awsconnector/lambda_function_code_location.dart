import 'package:pulumi/pulumi.dart' as pulumi;
import 'lambda_function_code_location_args.dart';
import 'lambda_function_code_location_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### LambdaFunctionCodeLocations_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var lambdaFunctionCodeLocation = new AzureNative.AwsConnector.LambdaFunctionCodeLocation("lambdaFunctionCodeLocation", new()
///     {
///         Location = "qkuouoekvqfxgj",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.LambdaFunctionCodeLocationPropertiesArgs
///         {
///             Arn = "cavnxpszexpsxi",
///             AwsAccountId = "kddvcdwz",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsLambdaFunctionCodeLocationPropertiesArgs
///             {
///                 ImageUri = "vgxgdgxjcgxywrlgksntztsti",
///                 Location = "wntythncasjf",
///                 RepositoryType = "rokpwfiqhiulnmmyjxfwchgk",
///                 ResolvedImageUri = "forzmeqdjmd",
///             },
///             AwsRegion = "gpffqddhhsxbkcblgd",
///             AwsSourceSchema = "dqmxkbgxzzurnbdbrodipprola",
///             AwsTags =
///             {
///                 { "key6065", "ghgubugjmthvonixbfyqrkyg" },
///             },
///             PublicCloudConnectorsResourceId = "hqutrljrwdofyqxdprvsolekoxh",
///             PublicCloudResourceName = "zqervnldc",
///         },
///         ResourceGroupName = "rglambdaFunctionCodeLocation",
///         Tags =
///         {
///             { "key5879", "ddtmzkfuznyfoikgo" },
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
/// 		_, err := awsconnector.NewLambdaFunctionCodeLocation(ctx, "lambdaFunctionCodeLocation", &awsconnector.LambdaFunctionCodeLocationArgs{
/// 			Location: pulumi.String("qkuouoekvqfxgj"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.LambdaFunctionCodeLocationPropertiesArgs{
/// 				Arn:          pulumi.String("cavnxpszexpsxi"),
/// 				AwsAccountId: pulumi.String("kddvcdwz"),
/// 				AwsProperties: &awsconnector.AwsLambdaFunctionCodeLocationPropertiesArgs{
/// 					ImageUri:         pulumi.String("vgxgdgxjcgxywrlgksntztsti"),
/// 					Location:         pulumi.String("wntythncasjf"),
/// 					RepositoryType:   pulumi.String("rokpwfiqhiulnmmyjxfwchgk"),
/// 					ResolvedImageUri: pulumi.String("forzmeqdjmd"),
/// 				},
/// 				AwsRegion:       pulumi.String("gpffqddhhsxbkcblgd"),
/// 				AwsSourceSchema: pulumi.String("dqmxkbgxzzurnbdbrodipprola"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key6065": pulumi.String("ghgubugjmthvonixbfyqrkyg"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("hqutrljrwdofyqxdprvsolekoxh"),
/// 				PublicCloudResourceName:         pulumi.String("zqervnldc"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rglambdaFunctionCodeLocation"),
/// 			Tags: pulumi.StringMap{
/// 				"key5879": pulumi.String("ddtmzkfuznyfoikgo"),
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
/// resource "azure-native_awsconnector_lambdafunctioncodelocation" "lambdaFunctionCodeLocation" {
///   location = "qkuouoekvqfxgj"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "cavnxpszexpsxi"
///     aws_account_id = "kddvcdwz"
///     aws_properties = {
///       image_uri          = "vgxgdgxjcgxywrlgksntztsti"
///       location           = "wntythncasjf"
///       repository_type    = "rokpwfiqhiulnmmyjxfwchgk"
///       resolved_image_uri = "forzmeqdjmd"
///     }
///     aws_region        = "gpffqddhhsxbkcblgd"
///     aws_source_schema = "dqmxkbgxzzurnbdbrodipprola"
///     aws_tags = {
///       "key6065" = "ghgubugjmthvonixbfyqrkyg"
///     }
///     public_cloud_connectors_resource_id = "hqutrljrwdofyqxdprvsolekoxh"
///     public_cloud_resource_name          = "zqervnldc"
///   }
///   resource_group_name = "rglambdaFunctionCodeLocation"
///   tags = {
///     "key5879" = "ddtmzkfuznyfoikgo"
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
/// import com.pulumi.azurenative.awsconnector.LambdaFunctionCodeLocation;
/// import com.pulumi.azurenative.awsconnector.LambdaFunctionCodeLocationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.LambdaFunctionCodeLocationPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsLambdaFunctionCodeLocationPropertiesArgs;
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
///         var lambdaFunctionCodeLocation = new LambdaFunctionCodeLocation("lambdaFunctionCodeLocation", LambdaFunctionCodeLocationArgs.builder()
///             .location("qkuouoekvqfxgj")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(LambdaFunctionCodeLocationPropertiesArgs.builder()
///                 .arn("cavnxpszexpsxi")
///                 .awsAccountId("kddvcdwz")
///                 .awsProperties(AwsLambdaFunctionCodeLocationPropertiesArgs.builder()
///                     .imageUri("vgxgdgxjcgxywrlgksntztsti")
///                     .location("wntythncasjf")
///                     .repositoryType("rokpwfiqhiulnmmyjxfwchgk")
///                     .resolvedImageUri("forzmeqdjmd")
///                     .build())
///                 .awsRegion("gpffqddhhsxbkcblgd")
///                 .awsSourceSchema("dqmxkbgxzzurnbdbrodipprola")
///                 .awsTags(Map.of("key6065", "ghgubugjmthvonixbfyqrkyg"))
///                 .publicCloudConnectorsResourceId("hqutrljrwdofyqxdprvsolekoxh")
///                 .publicCloudResourceName("zqervnldc")
///                 .build())
///             .resourceGroupName("rglambdaFunctionCodeLocation")
///             .tags(Map.of("key5879", "ddtmzkfuznyfoikgo"))
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
/// const lambdaFunctionCodeLocation = new azure_native.awsconnector.LambdaFunctionCodeLocation("lambdaFunctionCodeLocation", {
///     location: "qkuouoekvqfxgj",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "cavnxpszexpsxi",
///         awsAccountId: "kddvcdwz",
///         awsProperties: {
///             imageUri: "vgxgdgxjcgxywrlgksntztsti",
///             location: "wntythncasjf",
///             repositoryType: "rokpwfiqhiulnmmyjxfwchgk",
///             resolvedImageUri: "forzmeqdjmd",
///         },
///         awsRegion: "gpffqddhhsxbkcblgd",
///         awsSourceSchema: "dqmxkbgxzzurnbdbrodipprola",
///         awsTags: {
///             key6065: "ghgubugjmthvonixbfyqrkyg",
///         },
///         publicCloudConnectorsResourceId: "hqutrljrwdofyqxdprvsolekoxh",
///         publicCloudResourceName: "zqervnldc",
///     },
///     resourceGroupName: "rglambdaFunctionCodeLocation",
///     tags: {
///         key5879: "ddtmzkfuznyfoikgo",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// lambda_function_code_location = azure_native.awsconnector.LambdaFunctionCodeLocation("lambdaFunctionCodeLocation",
///     location="qkuouoekvqfxgj",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "cavnxpszexpsxi",
///         "aws_account_id": "kddvcdwz",
///         "aws_properties": {
///             "image_uri": "vgxgdgxjcgxywrlgksntztsti",
///             "location": "wntythncasjf",
///             "repository_type": "rokpwfiqhiulnmmyjxfwchgk",
///             "resolved_image_uri": "forzmeqdjmd",
///         },
///         "aws_region": "gpffqddhhsxbkcblgd",
///         "aws_source_schema": "dqmxkbgxzzurnbdbrodipprola",
///         "aws_tags": {
///             "key6065": "ghgubugjmthvonixbfyqrkyg",
///         },
///         "public_cloud_connectors_resource_id": "hqutrljrwdofyqxdprvsolekoxh",
///         "public_cloud_resource_name": "zqervnldc",
///     },
///     resource_group_name="rglambdaFunctionCodeLocation",
///     tags={
///         "key5879": "ddtmzkfuznyfoikgo",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   lambdaFunctionCodeLocation:
///     type: azure-native:awsconnector:LambdaFunctionCodeLocation
///     properties:
///       location: qkuouoekvqfxgj
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: cavnxpszexpsxi
///         awsAccountId: kddvcdwz
///         awsProperties:
///           imageUri: vgxgdgxjcgxywrlgksntztsti
///           location: wntythncasjf
///           repositoryType: rokpwfiqhiulnmmyjxfwchgk
///           resolvedImageUri: forzmeqdjmd
///         awsRegion: gpffqddhhsxbkcblgd
///         awsSourceSchema: dqmxkbgxzzurnbdbrodipprola
///         awsTags:
///           key6065: ghgubugjmthvonixbfyqrkyg
///         publicCloudConnectorsResourceId: hqutrljrwdofyqxdprvsolekoxh
///         publicCloudResourceName: zqervnldc
///       resourceGroupName: rglambdaFunctionCodeLocation
///       tags:
///         key5879: ddtmzkfuznyfoikgo
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
/// $ pulumi import azure-native:awsconnector:LambdaFunctionCodeLocation qenfk /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/lambdaFunctionCodeLocations/{name}
/// ```
class LambdaFunctionCodeLocation extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<LambdaFunctionCodeLocationPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [LambdaFunctionCodeLocation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LambdaFunctionCodeLocation]. {@macro pulumi_awsconnector_lambda_function_code_location_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LambdaFunctionCodeLocation(
    String name, {
    LambdaFunctionCodeLocationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:LambdaFunctionCodeLocation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<LambdaFunctionCodeLocationPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LambdaFunctionCodeLocationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [LambdaFunctionCodeLocation] resource.
  LambdaFunctionCodeLocation.reference(String urn)
    : super(
        'azure-native:awsconnector:LambdaFunctionCodeLocation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<LambdaFunctionCodeLocationPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LambdaFunctionCodeLocationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
