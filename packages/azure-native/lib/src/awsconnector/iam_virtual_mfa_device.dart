import 'package:pulumi/pulumi.dart' as pulumi;
import 'iam_virtual_mfa_device_args.dart';
import 'iam_virtual_mfadevice_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### IamVirtualMfaDevices_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var iamVirtualMfaDevice = new AzureNative.AwsConnector.IamVirtualMfaDevice("iamVirtualMfaDevice", new()
///     {
///         Location = "ixkqwzfnsthfshdlvsvh",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.IamVirtualMFADevicePropertiesArgs
///         {
///             Arn = "soptozsivfaghgr",
///             AwsAccountId = "deoktff",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsIamVirtualMFADevicePropertiesArgs
///             {
///                 Path = "iuiajbhehzagt",
///                 SerialNumber = "zbsulwrnmmhdwuelwbybavq",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "imskkztsfijhjvvp",
///                         Value = "kpmtbersaovhycdipca",
///                     },
///                 },
///                 Users = new[]
///                 {
///                     "pzktvxysprnhhivbnuuutllcomxp",
///                 },
///                 VirtualMfaDeviceName = "m",
///             },
///             AwsRegion = "h",
///             AwsSourceSchema = "iotqvkkgxaoeewgxegimnri",
///             AwsTags =
///             {
///                 { "key1965", "rgngzs" },
///             },
///             PublicCloudConnectorsResourceId = "chegzvubkwsrhocspiedvdrzuhkjo",
///             PublicCloudResourceName = "uktgscbqvuprtkj",
///         },
///         ResourceGroupName = "rgiamVirtualMFADevice",
///         Tags =
///         {
///             { "key2474", "za" },
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
/// 		_, err := awsconnector.NewIamVirtualMfaDevice(ctx, "iamVirtualMfaDevice", &awsconnector.IamVirtualMfaDeviceArgs{
/// 			Location: pulumi.String("ixkqwzfnsthfshdlvsvh"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.IamVirtualMFADevicePropertiesArgs{
/// 				Arn:          pulumi.String("soptozsivfaghgr"),
/// 				AwsAccountId: pulumi.String("deoktff"),
/// 				AwsProperties: &awsconnector.AwsIamVirtualMFADevicePropertiesArgs{
/// 					Path:         pulumi.String("iuiajbhehzagt"),
/// 					SerialNumber: pulumi.String("zbsulwrnmmhdwuelwbybavq"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("imskkztsfijhjvvp"),
/// 							Value: pulumi.String("kpmtbersaovhycdipca"),
/// 						},
/// 					},
/// 					Users: pulumi.StringArray{
/// 						pulumi.String("pzktvxysprnhhivbnuuutllcomxp"),
/// 					},
/// 					VirtualMfaDeviceName: pulumi.String("m"),
/// 				},
/// 				AwsRegion:       pulumi.String("h"),
/// 				AwsSourceSchema: pulumi.String("iotqvkkgxaoeewgxegimnri"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key1965": pulumi.String("rgngzs"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("chegzvubkwsrhocspiedvdrzuhkjo"),
/// 				PublicCloudResourceName:         pulumi.String("uktgscbqvuprtkj"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgiamVirtualMFADevice"),
/// 			Tags: pulumi.StringMap{
/// 				"key2474": pulumi.String("za"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.awsconnector.IamVirtualMfaDevice;
/// import com.pulumi.azurenative.awsconnector.IamVirtualMfaDeviceArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.IamVirtualMFADevicePropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsIamVirtualMFADevicePropertiesArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var iamVirtualMfaDevice = new IamVirtualMfaDevice("iamVirtualMfaDevice", IamVirtualMfaDeviceArgs.builder()
///             .location("ixkqwzfnsthfshdlvsvh")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(IamVirtualMFADevicePropertiesArgs.builder()
///                 .arn("soptozsivfaghgr")
///                 .awsAccountId("deoktff")
///                 .awsProperties(AwsIamVirtualMFADevicePropertiesArgs.builder()
///                     .path("iuiajbhehzagt")
///                     .serialNumber("zbsulwrnmmhdwuelwbybavq")
///                     .tags(TagArgs.builder()
///                         .key("imskkztsfijhjvvp")
///                         .value("kpmtbersaovhycdipca")
///                         .build())
///                     .users("pzktvxysprnhhivbnuuutllcomxp")
///                     .virtualMfaDeviceName("m")
///                     .build())
///                 .awsRegion("h")
///                 .awsSourceSchema("iotqvkkgxaoeewgxegimnri")
///                 .awsTags(Map.of("key1965", "rgngzs"))
///                 .publicCloudConnectorsResourceId("chegzvubkwsrhocspiedvdrzuhkjo")
///                 .publicCloudResourceName("uktgscbqvuprtkj")
///                 .build())
///             .resourceGroupName("rgiamVirtualMFADevice")
///             .tags(Map.of("key2474", "za"))
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
/// const iamVirtualMfaDevice = new azure_native.awsconnector.IamVirtualMfaDevice("iamVirtualMfaDevice", {
///     location: "ixkqwzfnsthfshdlvsvh",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "soptozsivfaghgr",
///         awsAccountId: "deoktff",
///         awsProperties: {
///             path: "iuiajbhehzagt",
///             serialNumber: "zbsulwrnmmhdwuelwbybavq",
///             tags: [{
///                 key: "imskkztsfijhjvvp",
///                 value: "kpmtbersaovhycdipca",
///             }],
///             users: ["pzktvxysprnhhivbnuuutllcomxp"],
///             virtualMfaDeviceName: "m",
///         },
///         awsRegion: "h",
///         awsSourceSchema: "iotqvkkgxaoeewgxegimnri",
///         awsTags: {
///             key1965: "rgngzs",
///         },
///         publicCloudConnectorsResourceId: "chegzvubkwsrhocspiedvdrzuhkjo",
///         publicCloudResourceName: "uktgscbqvuprtkj",
///     },
///     resourceGroupName: "rgiamVirtualMFADevice",
///     tags: {
///         key2474: "za",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// iam_virtual_mfa_device = azure_native.awsconnector.IamVirtualMfaDevice("iamVirtualMfaDevice",
///     location="ixkqwzfnsthfshdlvsvh",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "soptozsivfaghgr",
///         "aws_account_id": "deoktff",
///         "aws_properties": {
///             "path": "iuiajbhehzagt",
///             "serial_number": "zbsulwrnmmhdwuelwbybavq",
///             "tags": [{
///                 "key": "imskkztsfijhjvvp",
///                 "value": "kpmtbersaovhycdipca",
///             }],
///             "users": ["pzktvxysprnhhivbnuuutllcomxp"],
///             "virtual_mfa_device_name": "m",
///         },
///         "aws_region": "h",
///         "aws_source_schema": "iotqvkkgxaoeewgxegimnri",
///         "aws_tags": {
///             "key1965": "rgngzs",
///         },
///         "public_cloud_connectors_resource_id": "chegzvubkwsrhocspiedvdrzuhkjo",
///         "public_cloud_resource_name": "uktgscbqvuprtkj",
///     },
///     resource_group_name="rgiamVirtualMFADevice",
///     tags={
///         "key2474": "za",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   iamVirtualMfaDevice:
///     type: azure-native:awsconnector:IamVirtualMfaDevice
///     properties:
///       location: ixkqwzfnsthfshdlvsvh
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: soptozsivfaghgr
///         awsAccountId: deoktff
///         awsProperties:
///           path: iuiajbhehzagt
///           serialNumber: zbsulwrnmmhdwuelwbybavq
///           tags:
///             - key: imskkztsfijhjvvp
///               value: kpmtbersaovhycdipca
///           users:
///             - pzktvxysprnhhivbnuuutllcomxp
///           virtualMfaDeviceName: m
///         awsRegion: h
///         awsSourceSchema: iotqvkkgxaoeewgxegimnri
///         awsTags:
///           key1965: rgngzs
///         publicCloudConnectorsResourceId: chegzvubkwsrhocspiedvdrzuhkjo
///         publicCloudResourceName: uktgscbqvuprtkj
///       resourceGroupName: rgiamVirtualMFADevice
///       tags:
///         key2474: za
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
/// $ pulumi import azure-native:awsconnector:IamVirtualMfaDevice uceacdsk /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/iamVirtualMFADevices/{name}
/// ```
class IamVirtualMfaDevice extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<IamVirtualMFADevicePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [IamVirtualMfaDevice].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IamVirtualMfaDevice]. {@macro pulumi_awsconnector_iam_virtual_mfa_device_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IamVirtualMfaDevice(
    String name, {
    IamVirtualMfaDeviceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:IamVirtualMfaDevice',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<IamVirtualMFADevicePropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
