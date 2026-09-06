import 'package:pulumi/pulumi.dart' as pulumi;
import 'iam_policy_version_args.dart';
import 'iam_policy_version_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### IamPolicyVersions_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var iamPolicyVersion = new AzureNative.AwsConnector.IamPolicyVersion("iamPolicyVersion", new()
///     {
///         Location = "wtyx",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.IamPolicyVersionPropertiesArgs
///         {
///             Arn = "mszogqxtswvseqggugfxstkwivx",
///             AwsAccountId = "xiv",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsIamPolicyVersionPropertiesArgs
///             {
///                 CreateDate = "2024-10-08T03:54:21.310Z",
///                 Document = "bpzfzhilykgroobhu",
///                 IsDefaultVersion = true,
///                 VersionId = "mjxbhpksrctdbegeyhrsyveoyre",
///             },
///             AwsRegion = "bhdamksbkmvjl",
///             AwsSourceSchema = "ljldtynekavvptoqhcvqdklc",
///             AwsTags =
///             {
///                 { "key2871", "ejkpbbvnwx" },
///             },
///             PublicCloudConnectorsResourceId = "hqotja",
///             PublicCloudResourceName = "mphznssuferlzunnbjbl",
///         },
///         ResourceGroupName = "rgiamPolicyVersion",
///         Tags =
///         {
///             { "key6034", "pkrkyrharhnjqfubytfj" },
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
/// 		_, err := awsconnector.NewIamPolicyVersion(ctx, "iamPolicyVersion", &awsconnector.IamPolicyVersionArgs{
/// 			Location: pulumi.String("wtyx"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.IamPolicyVersionPropertiesArgs{
/// 				Arn:          pulumi.String("mszogqxtswvseqggugfxstkwivx"),
/// 				AwsAccountId: pulumi.String("xiv"),
/// 				AwsProperties: &awsconnector.AwsIamPolicyVersionPropertiesArgs{
/// 					CreateDate:       pulumi.String("2024-10-08T03:54:21.310Z"),
/// 					Document:         pulumi.String("bpzfzhilykgroobhu"),
/// 					IsDefaultVersion: pulumi.Bool(true),
/// 					VersionId:        pulumi.String("mjxbhpksrctdbegeyhrsyveoyre"),
/// 				},
/// 				AwsRegion:       pulumi.String("bhdamksbkmvjl"),
/// 				AwsSourceSchema: pulumi.String("ljldtynekavvptoqhcvqdklc"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key2871": pulumi.String("ejkpbbvnwx"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("hqotja"),
/// 				PublicCloudResourceName:         pulumi.String("mphznssuferlzunnbjbl"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgiamPolicyVersion"),
/// 			Tags: pulumi.StringMap{
/// 				"key6034": pulumi.String("pkrkyrharhnjqfubytfj"),
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
/// resource "azure-native_awsconnector_iampolicyversion" "iamPolicyVersion" {
///   location = "wtyx"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "mszogqxtswvseqggugfxstkwivx"
///     aws_account_id = "xiv"
///     aws_properties = {
///       create_date        = "2024-10-08T03:54:21.310Z"
///       document           = "bpzfzhilykgroobhu"
///       is_default_version = true
///       version_id         = "mjxbhpksrctdbegeyhrsyveoyre"
///     }
///     aws_region        = "bhdamksbkmvjl"
///     aws_source_schema = "ljldtynekavvptoqhcvqdklc"
///     aws_tags = {
///       "key2871" = "ejkpbbvnwx"
///     }
///     public_cloud_connectors_resource_id = "hqotja"
///     public_cloud_resource_name          = "mphznssuferlzunnbjbl"
///   }
///   resource_group_name = "rgiamPolicyVersion"
///   tags = {
///     "key6034" = "pkrkyrharhnjqfubytfj"
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
/// import com.pulumi.azurenative.awsconnector.IamPolicyVersion;
/// import com.pulumi.azurenative.awsconnector.IamPolicyVersionArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.IamPolicyVersionPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsIamPolicyVersionPropertiesArgs;
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
///         var iamPolicyVersion = new IamPolicyVersion("iamPolicyVersion", IamPolicyVersionArgs.builder()
///             .location("wtyx")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(IamPolicyVersionPropertiesArgs.builder()
///                 .arn("mszogqxtswvseqggugfxstkwivx")
///                 .awsAccountId("xiv")
///                 .awsProperties(AwsIamPolicyVersionPropertiesArgs.builder()
///                     .createDate("2024-10-08T03:54:21.310Z")
///                     .document("bpzfzhilykgroobhu")
///                     .isDefaultVersion(true)
///                     .versionId("mjxbhpksrctdbegeyhrsyveoyre")
///                     .build())
///                 .awsRegion("bhdamksbkmvjl")
///                 .awsSourceSchema("ljldtynekavvptoqhcvqdklc")
///                 .awsTags(Map.of("key2871", "ejkpbbvnwx"))
///                 .publicCloudConnectorsResourceId("hqotja")
///                 .publicCloudResourceName("mphznssuferlzunnbjbl")
///                 .build())
///             .resourceGroupName("rgiamPolicyVersion")
///             .tags(Map.of("key6034", "pkrkyrharhnjqfubytfj"))
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
/// const iamPolicyVersion = new azure_native.awsconnector.IamPolicyVersion("iamPolicyVersion", {
///     location: "wtyx",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "mszogqxtswvseqggugfxstkwivx",
///         awsAccountId: "xiv",
///         awsProperties: {
///             createDate: "2024-10-08T03:54:21.310Z",
///             document: "bpzfzhilykgroobhu",
///             isDefaultVersion: true,
///             versionId: "mjxbhpksrctdbegeyhrsyveoyre",
///         },
///         awsRegion: "bhdamksbkmvjl",
///         awsSourceSchema: "ljldtynekavvptoqhcvqdklc",
///         awsTags: {
///             key2871: "ejkpbbvnwx",
///         },
///         publicCloudConnectorsResourceId: "hqotja",
///         publicCloudResourceName: "mphznssuferlzunnbjbl",
///     },
///     resourceGroupName: "rgiamPolicyVersion",
///     tags: {
///         key6034: "pkrkyrharhnjqfubytfj",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// iam_policy_version = azure_native.awsconnector.IamPolicyVersion("iamPolicyVersion",
///     location="wtyx",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "mszogqxtswvseqggugfxstkwivx",
///         "aws_account_id": "xiv",
///         "aws_properties": {
///             "create_date": "2024-10-08T03:54:21.310Z",
///             "document": "bpzfzhilykgroobhu",
///             "is_default_version": True,
///             "version_id": "mjxbhpksrctdbegeyhrsyveoyre",
///         },
///         "aws_region": "bhdamksbkmvjl",
///         "aws_source_schema": "ljldtynekavvptoqhcvqdklc",
///         "aws_tags": {
///             "key2871": "ejkpbbvnwx",
///         },
///         "public_cloud_connectors_resource_id": "hqotja",
///         "public_cloud_resource_name": "mphznssuferlzunnbjbl",
///     },
///     resource_group_name="rgiamPolicyVersion",
///     tags={
///         "key6034": "pkrkyrharhnjqfubytfj",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   iamPolicyVersion:
///     type: azure-native:awsconnector:IamPolicyVersion
///     properties:
///       location: wtyx
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: mszogqxtswvseqggugfxstkwivx
///         awsAccountId: xiv
///         awsProperties:
///           createDate: 2024-10-08T03:54:21.310Z
///           document: bpzfzhilykgroobhu
///           isDefaultVersion: true
///           versionId: mjxbhpksrctdbegeyhrsyveoyre
///         awsRegion: bhdamksbkmvjl
///         awsSourceSchema: ljldtynekavvptoqhcvqdklc
///         awsTags:
///           key2871: ejkpbbvnwx
///         publicCloudConnectorsResourceId: hqotja
///         publicCloudResourceName: mphznssuferlzunnbjbl
///       resourceGroupName: rgiamPolicyVersion
///       tags:
///         key6034: pkrkyrharhnjqfubytfj
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
/// $ pulumi import azure-native:awsconnector:IamPolicyVersion pxmszonagtyamfsohnjjijhi /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/iamPolicyVersions/{name}
/// ```
class IamPolicyVersion extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<IamPolicyVersionPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [IamPolicyVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IamPolicyVersion]. {@macro pulumi_awsconnector_iam_policy_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IamPolicyVersion(
    String name, {
    IamPolicyVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:IamPolicyVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<IamPolicyVersionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IamPolicyVersionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [IamPolicyVersion] resource.
  IamPolicyVersion.reference(String urn)
    : super(
        'azure-native:awsconnector:IamPolicyVersion',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<IamPolicyVersionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IamPolicyVersionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
