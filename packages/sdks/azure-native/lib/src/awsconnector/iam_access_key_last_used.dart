import 'package:pulumi/pulumi.dart' as pulumi;
import 'iam_access_key_last_used_args.dart';
import 'iam_access_key_last_used_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### IamAccessKeyLastUseds_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var iamAccessKeyLastUsed = new AzureNative.AwsConnector.IamAccessKeyLastUsed("iamAccessKeyLastUsed", new()
///     {
///         Location = "rdt",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.IamAccessKeyLastUsedPropertiesArgs
///         {
///             Arn = "xfaoulngosrepqegvmfzqcmenfiwv",
///             AwsAccountId = "lturmpd",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsIamAccessKeyLastUsedPropertiesArgs
///             {
///                 LastUsedDate = "2024-10-08T03:48:57.755Z",
///                 Region = "av",
///                 ServiceName = "vhyurov",
///             },
///             AwsRegion = "epaxtviqtrqqnghkgfkqhuqee",
///             AwsSourceSchema = "enepzx",
///             AwsTags =
///             {
///                 { "key9162", "xrhekznmreqitxxw" },
///             },
///             PublicCloudConnectorsResourceId = "rwbbz",
///             PublicCloudResourceName = "cttx",
///         },
///         ResourceGroupName = "rgiamAccessKeyLastUsed",
///         Tags =
///         {
///             { "key2981", "xwkwghlklv" },
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
/// 		_, err := awsconnector.NewIamAccessKeyLastUsed(ctx, "iamAccessKeyLastUsed", &awsconnector.IamAccessKeyLastUsedArgs{
/// 			Location: pulumi.String("rdt"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.IamAccessKeyLastUsedPropertiesArgs{
/// 				Arn:          pulumi.String("xfaoulngosrepqegvmfzqcmenfiwv"),
/// 				AwsAccountId: pulumi.String("lturmpd"),
/// 				AwsProperties: &awsconnector.AwsIamAccessKeyLastUsedPropertiesArgs{
/// 					LastUsedDate: pulumi.String("2024-10-08T03:48:57.755Z"),
/// 					Region:       pulumi.String("av"),
/// 					ServiceName:  pulumi.String("vhyurov"),
/// 				},
/// 				AwsRegion:       pulumi.String("epaxtviqtrqqnghkgfkqhuqee"),
/// 				AwsSourceSchema: pulumi.String("enepzx"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key9162": pulumi.String("xrhekznmreqitxxw"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("rwbbz"),
/// 				PublicCloudResourceName:         pulumi.String("cttx"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgiamAccessKeyLastUsed"),
/// 			Tags: pulumi.StringMap{
/// 				"key2981": pulumi.String("xwkwghlklv"),
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
/// resource "azure-native_awsconnector_iamaccesskeylastused" "iamAccessKeyLastUsed" {
///   location = "rdt"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "xfaoulngosrepqegvmfzqcmenfiwv"
///     aws_account_id = "lturmpd"
///     aws_properties = {
///       last_used_date = "2024-10-08T03:48:57.755Z"
///       region         = "av"
///       service_name   = "vhyurov"
///     }
///     aws_region        = "epaxtviqtrqqnghkgfkqhuqee"
///     aws_source_schema = "enepzx"
///     aws_tags = {
///       "key9162" = "xrhekznmreqitxxw"
///     }
///     public_cloud_connectors_resource_id = "rwbbz"
///     public_cloud_resource_name          = "cttx"
///   }
///   resource_group_name = "rgiamAccessKeyLastUsed"
///   tags = {
///     "key2981" = "xwkwghlklv"
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
/// import com.pulumi.azurenative.awsconnector.IamAccessKeyLastUsed;
/// import com.pulumi.azurenative.awsconnector.IamAccessKeyLastUsedArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.IamAccessKeyLastUsedPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsIamAccessKeyLastUsedPropertiesArgs;
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
///         var iamAccessKeyLastUsed = new IamAccessKeyLastUsed("iamAccessKeyLastUsed", IamAccessKeyLastUsedArgs.builder()
///             .location("rdt")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(IamAccessKeyLastUsedPropertiesArgs.builder()
///                 .arn("xfaoulngosrepqegvmfzqcmenfiwv")
///                 .awsAccountId("lturmpd")
///                 .awsProperties(AwsIamAccessKeyLastUsedPropertiesArgs.builder()
///                     .lastUsedDate("2024-10-08T03:48:57.755Z")
///                     .region("av")
///                     .serviceName("vhyurov")
///                     .build())
///                 .awsRegion("epaxtviqtrqqnghkgfkqhuqee")
///                 .awsSourceSchema("enepzx")
///                 .awsTags(Map.of("key9162", "xrhekznmreqitxxw"))
///                 .publicCloudConnectorsResourceId("rwbbz")
///                 .publicCloudResourceName("cttx")
///                 .build())
///             .resourceGroupName("rgiamAccessKeyLastUsed")
///             .tags(Map.of("key2981", "xwkwghlklv"))
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
/// const iamAccessKeyLastUsed = new azure_native.awsconnector.IamAccessKeyLastUsed("iamAccessKeyLastUsed", {
///     location: "rdt",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "xfaoulngosrepqegvmfzqcmenfiwv",
///         awsAccountId: "lturmpd",
///         awsProperties: {
///             lastUsedDate: "2024-10-08T03:48:57.755Z",
///             region: "av",
///             serviceName: "vhyurov",
///         },
///         awsRegion: "epaxtviqtrqqnghkgfkqhuqee",
///         awsSourceSchema: "enepzx",
///         awsTags: {
///             key9162: "xrhekznmreqitxxw",
///         },
///         publicCloudConnectorsResourceId: "rwbbz",
///         publicCloudResourceName: "cttx",
///     },
///     resourceGroupName: "rgiamAccessKeyLastUsed",
///     tags: {
///         key2981: "xwkwghlklv",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// iam_access_key_last_used = azure_native.awsconnector.IamAccessKeyLastUsed("iamAccessKeyLastUsed",
///     location="rdt",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "xfaoulngosrepqegvmfzqcmenfiwv",
///         "aws_account_id": "lturmpd",
///         "aws_properties": {
///             "last_used_date": "2024-10-08T03:48:57.755Z",
///             "region": "av",
///             "service_name": "vhyurov",
///         },
///         "aws_region": "epaxtviqtrqqnghkgfkqhuqee",
///         "aws_source_schema": "enepzx",
///         "aws_tags": {
///             "key9162": "xrhekznmreqitxxw",
///         },
///         "public_cloud_connectors_resource_id": "rwbbz",
///         "public_cloud_resource_name": "cttx",
///     },
///     resource_group_name="rgiamAccessKeyLastUsed",
///     tags={
///         "key2981": "xwkwghlklv",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   iamAccessKeyLastUsed:
///     type: azure-native:awsconnector:IamAccessKeyLastUsed
///     properties:
///       location: rdt
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: xfaoulngosrepqegvmfzqcmenfiwv
///         awsAccountId: lturmpd
///         awsProperties:
///           lastUsedDate: 2024-10-08T03:48:57.755Z
///           region: av
///           serviceName: vhyurov
///         awsRegion: epaxtviqtrqqnghkgfkqhuqee
///         awsSourceSchema: enepzx
///         awsTags:
///           key9162: xrhekznmreqitxxw
///         publicCloudConnectorsResourceId: rwbbz
///         publicCloudResourceName: cttx
///       resourceGroupName: rgiamAccessKeyLastUsed
///       tags:
///         key2981: xwkwghlklv
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
/// $ pulumi import azure-native:awsconnector:IamAccessKeyLastUsed wtidcpjujjyhczp /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/iamAccessKeyLastUseds/{name}
/// ```
class IamAccessKeyLastUsed extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<IamAccessKeyLastUsedPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [IamAccessKeyLastUsed].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IamAccessKeyLastUsed]. {@macro pulumi_awsconnector_iam_access_key_last_used_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IamAccessKeyLastUsed(
    String name, {
    IamAccessKeyLastUsedArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:IamAccessKeyLastUsed',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<IamAccessKeyLastUsedPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IamAccessKeyLastUsedPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [IamAccessKeyLastUsed] resource.
  IamAccessKeyLastUsed.reference(String urn)
    : super(
        'azure-native:awsconnector:IamAccessKeyLastUsed',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<IamAccessKeyLastUsedPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IamAccessKeyLastUsedPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
