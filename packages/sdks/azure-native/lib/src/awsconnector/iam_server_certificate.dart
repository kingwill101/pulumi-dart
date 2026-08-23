import 'package:pulumi/pulumi.dart' as pulumi;
import 'iam_server_certificate_args.dart';
import 'iam_server_certificate_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### IamServerCertificates_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var iamServerCertificate = new AzureNative.AwsConnector.IamServerCertificate("iamServerCertificate", new()
///     {
///         Location = "ddjdvyseqfbfufjoxr",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.IamServerCertificatePropertiesArgs
///         {
///             Arn = "fkbemnwycxjjjxwievb",
///             AwsAccountId = "egfew",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsIamServerCertificatePropertiesArgs
///             {
///                 Arn = "ahekoegi",
///                 CertificateBody = "fagqepujrwsvkhdrvofvmkderig",
///                 CertificateChain = "ozzjlnmjijy",
///                 Path = "qvvxpzaoshpkkvncguxmv",
///                 PrivateKey = "ynoaydpaju",
///                 ServerCertificateName = "yblyjjfteysombtxapaqjkrqo",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "ipoetrffzaxcntgqbdcuprhbn",
///                         Value = "jstuopgodfwmzigjbb",
///                     },
///                 },
///             },
///             AwsRegion = "gflixuzdblwuy",
///             AwsSourceSchema = "hlvxmkdmh",
///             AwsTags =
///             {
///                 { "key1989", "jwathlzongmwbilki" },
///             },
///             PublicCloudConnectorsResourceId = "iqnmafujozzlwfnhamvbhfjcuob",
///             PublicCloudResourceName = "g",
///         },
///         ResourceGroupName = "rgiamServerCertificate",
///         Tags =
///         {
///             { "key6646", "iu" },
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
/// 		_, err := awsconnector.NewIamServerCertificate(ctx, "iamServerCertificate", &awsconnector.IamServerCertificateArgs{
/// 			Location: pulumi.String("ddjdvyseqfbfufjoxr"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.IamServerCertificatePropertiesArgs{
/// 				Arn:          pulumi.String("fkbemnwycxjjjxwievb"),
/// 				AwsAccountId: pulumi.String("egfew"),
/// 				AwsProperties: &awsconnector.AwsIamServerCertificatePropertiesArgs{
/// 					Arn:                   pulumi.String("ahekoegi"),
/// 					CertificateBody:       pulumi.String("fagqepujrwsvkhdrvofvmkderig"),
/// 					CertificateChain:      pulumi.String("ozzjlnmjijy"),
/// 					Path:                  pulumi.String("qvvxpzaoshpkkvncguxmv"),
/// 					PrivateKey:            pulumi.String("ynoaydpaju"),
/// 					ServerCertificateName: pulumi.String("yblyjjfteysombtxapaqjkrqo"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("ipoetrffzaxcntgqbdcuprhbn"),
/// 							Value: pulumi.String("jstuopgodfwmzigjbb"),
/// 						},
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("gflixuzdblwuy"),
/// 				AwsSourceSchema: pulumi.String("hlvxmkdmh"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key1989": pulumi.String("jwathlzongmwbilki"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("iqnmafujozzlwfnhamvbhfjcuob"),
/// 				PublicCloudResourceName:         pulumi.String("g"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgiamServerCertificate"),
/// 			Tags: pulumi.StringMap{
/// 				"key6646": pulumi.String("iu"),
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
/// resource "azure-native_awsconnector_iamservercertificate" "iamServerCertificate" {
///   location = "ddjdvyseqfbfufjoxr"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "fkbemnwycxjjjxwievb"
///     aws_account_id = "egfew"
///     aws_properties = {
///       arn                     = "ahekoegi"
///       certificate_body        = "fagqepujrwsvkhdrvofvmkderig"
///       certificate_chain       = "ozzjlnmjijy"
///       path                    = "qvvxpzaoshpkkvncguxmv"
///       private_key             = "ynoaydpaju"
///       server_certificate_name = "yblyjjfteysombtxapaqjkrqo"
///       tags = [{
///         "key"   = "ipoetrffzaxcntgqbdcuprhbn"
///         "value" = "jstuopgodfwmzigjbb"
///       }]
///     }
///     aws_region        = "gflixuzdblwuy"
///     aws_source_schema = "hlvxmkdmh"
///     aws_tags = {
///       "key1989" = "jwathlzongmwbilki"
///     }
///     public_cloud_connectors_resource_id = "iqnmafujozzlwfnhamvbhfjcuob"
///     public_cloud_resource_name          = "g"
///   }
///   resource_group_name = "rgiamServerCertificate"
///   tags = {
///     "key6646" = "iu"
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
/// import com.pulumi.azurenative.awsconnector.IamServerCertificate;
/// import com.pulumi.azurenative.awsconnector.IamServerCertificateArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.IamServerCertificatePropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsIamServerCertificatePropertiesArgs;
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
///         var iamServerCertificate = new IamServerCertificate("iamServerCertificate", IamServerCertificateArgs.builder()
///             .location("ddjdvyseqfbfufjoxr")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(IamServerCertificatePropertiesArgs.builder()
///                 .arn("fkbemnwycxjjjxwievb")
///                 .awsAccountId("egfew")
///                 .awsProperties(AwsIamServerCertificatePropertiesArgs.builder()
///                     .arn("ahekoegi")
///                     .certificateBody("fagqepujrwsvkhdrvofvmkderig")
///                     .certificateChain("ozzjlnmjijy")
///                     .path("qvvxpzaoshpkkvncguxmv")
///                     .privateKey("ynoaydpaju")
///                     .serverCertificateName("yblyjjfteysombtxapaqjkrqo")
///                     .tags(TagArgs.builder()
///                         .key("ipoetrffzaxcntgqbdcuprhbn")
///                         .value("jstuopgodfwmzigjbb")
///                         .build())
///                     .build())
///                 .awsRegion("gflixuzdblwuy")
///                 .awsSourceSchema("hlvxmkdmh")
///                 .awsTags(Map.of("key1989", "jwathlzongmwbilki"))
///                 .publicCloudConnectorsResourceId("iqnmafujozzlwfnhamvbhfjcuob")
///                 .publicCloudResourceName("g")
///                 .build())
///             .resourceGroupName("rgiamServerCertificate")
///             .tags(Map.of("key6646", "iu"))
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
/// const iamServerCertificate = new azure_native.awsconnector.IamServerCertificate("iamServerCertificate", {
///     location: "ddjdvyseqfbfufjoxr",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "fkbemnwycxjjjxwievb",
///         awsAccountId: "egfew",
///         awsProperties: {
///             arn: "ahekoegi",
///             certificateBody: "fagqepujrwsvkhdrvofvmkderig",
///             certificateChain: "ozzjlnmjijy",
///             path: "qvvxpzaoshpkkvncguxmv",
///             privateKey: "ynoaydpaju",
///             serverCertificateName: "yblyjjfteysombtxapaqjkrqo",
///             tags: [{
///                 key: "ipoetrffzaxcntgqbdcuprhbn",
///                 value: "jstuopgodfwmzigjbb",
///             }],
///         },
///         awsRegion: "gflixuzdblwuy",
///         awsSourceSchema: "hlvxmkdmh",
///         awsTags: {
///             key1989: "jwathlzongmwbilki",
///         },
///         publicCloudConnectorsResourceId: "iqnmafujozzlwfnhamvbhfjcuob",
///         publicCloudResourceName: "g",
///     },
///     resourceGroupName: "rgiamServerCertificate",
///     tags: {
///         key6646: "iu",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// iam_server_certificate = azure_native.awsconnector.IamServerCertificate("iamServerCertificate",
///     location="ddjdvyseqfbfufjoxr",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "fkbemnwycxjjjxwievb",
///         "aws_account_id": "egfew",
///         "aws_properties": {
///             "arn": "ahekoegi",
///             "certificate_body": "fagqepujrwsvkhdrvofvmkderig",
///             "certificate_chain": "ozzjlnmjijy",
///             "path": "qvvxpzaoshpkkvncguxmv",
///             "private_key": "ynoaydpaju",
///             "server_certificate_name": "yblyjjfteysombtxapaqjkrqo",
///             "tags": [{
///                 "key": "ipoetrffzaxcntgqbdcuprhbn",
///                 "value": "jstuopgodfwmzigjbb",
///             }],
///         },
///         "aws_region": "gflixuzdblwuy",
///         "aws_source_schema": "hlvxmkdmh",
///         "aws_tags": {
///             "key1989": "jwathlzongmwbilki",
///         },
///         "public_cloud_connectors_resource_id": "iqnmafujozzlwfnhamvbhfjcuob",
///         "public_cloud_resource_name": "g",
///     },
///     resource_group_name="rgiamServerCertificate",
///     tags={
///         "key6646": "iu",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   iamServerCertificate:
///     type: azure-native:awsconnector:IamServerCertificate
///     properties:
///       location: ddjdvyseqfbfufjoxr
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: fkbemnwycxjjjxwievb
///         awsAccountId: egfew
///         awsProperties:
///           arn: ahekoegi
///           certificateBody: fagqepujrwsvkhdrvofvmkderig
///           certificateChain: ozzjlnmjijy
///           path: qvvxpzaoshpkkvncguxmv
///           privateKey: ynoaydpaju
///           serverCertificateName: yblyjjfteysombtxapaqjkrqo
///           tags:
///             - key: ipoetrffzaxcntgqbdcuprhbn
///               value: jstuopgodfwmzigjbb
///         awsRegion: gflixuzdblwuy
///         awsSourceSchema: hlvxmkdmh
///         awsTags:
///           key1989: jwathlzongmwbilki
///         publicCloudConnectorsResourceId: iqnmafujozzlwfnhamvbhfjcuob
///         publicCloudResourceName: g
///       resourceGroupName: rgiamServerCertificate
///       tags:
///         key6646: iu
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
/// $ pulumi import azure-native:awsconnector:IamServerCertificate o /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/iamServerCertificates/{name}
/// ```
class IamServerCertificate extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<IamServerCertificatePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [IamServerCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IamServerCertificate]. {@macro pulumi_awsconnector_iam_server_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IamServerCertificate(
    String name, {
    IamServerCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:IamServerCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<IamServerCertificatePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IamServerCertificatePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
