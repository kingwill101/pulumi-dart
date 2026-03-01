import 'package:pulumi/pulumi.dart' as pulumi;
import 'iam_mfa_device_args.dart';
import 'iam_mfadevice_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### IamMfaDevices_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var iamMfaDevice = new AzureNative.AwsConnector.IamMfaDevice("iamMfaDevice", new()
///     {
///         Location = "ytpxpjmmspx",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.IamMFADevicePropertiesArgs
///         {
///             Arn = "hbymjvsaxodse",
///             AwsAccountId = "tdapkqeuuvrrasue",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsIamMFADevicePropertiesArgs
///             {
///                 EnableDate = "2024-10-08T03:50:03.364Z",
///                 SerialNumber = "ifphqcwiounuuootrnmxmm",
///                 UserName = "jyjbnteckbccmmhbxjdk",
///             },
///             AwsRegion = "uwyckzldxxj",
///             AwsSourceSchema = "ibnflrkwkaswdrsmaqtegtnky",
///             AwsTags =
///             {
///                 { "key581", "oqgcieddjmzl" },
///             },
///             PublicCloudConnectorsResourceId = "jmcknwcktcj",
///             PublicCloudResourceName = "vexrvwqtzdijlzwecmljscwepj",
///         },
///         ResourceGroupName = "rgiamMFADevice",
///         Tags =
///         {
///             { "key9234", "eygqwhelmjvwcvgkzgfg" },
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
/// 		_, err := awsconnector.NewIamMfaDevice(ctx, "iamMfaDevice", &awsconnector.IamMfaDeviceArgs{
/// 			Location: pulumi.String("ytpxpjmmspx"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.IamMFADevicePropertiesArgs{
/// 				Arn:          pulumi.String("hbymjvsaxodse"),
/// 				AwsAccountId: pulumi.String("tdapkqeuuvrrasue"),
/// 				AwsProperties: &awsconnector.AwsIamMFADevicePropertiesArgs{
/// 					EnableDate:   pulumi.String("2024-10-08T03:50:03.364Z"),
/// 					SerialNumber: pulumi.String("ifphqcwiounuuootrnmxmm"),
/// 					UserName:     pulumi.String("jyjbnteckbccmmhbxjdk"),
/// 				},
/// 				AwsRegion:       pulumi.String("uwyckzldxxj"),
/// 				AwsSourceSchema: pulumi.String("ibnflrkwkaswdrsmaqtegtnky"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key581": pulumi.String("oqgcieddjmzl"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("jmcknwcktcj"),
/// 				PublicCloudResourceName:         pulumi.String("vexrvwqtzdijlzwecmljscwepj"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgiamMFADevice"),
/// 			Tags: pulumi.StringMap{
/// 				"key9234": pulumi.String("eygqwhelmjvwcvgkzgfg"),
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
/// import com.pulumi.azurenative.awsconnector.IamMfaDevice;
/// import com.pulumi.azurenative.awsconnector.IamMfaDeviceArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.IamMFADevicePropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsIamMFADevicePropertiesArgs;
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
///         var iamMfaDevice = new IamMfaDevice("iamMfaDevice", IamMfaDeviceArgs.builder()
///             .location("ytpxpjmmspx")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(IamMFADevicePropertiesArgs.builder()
///                 .arn("hbymjvsaxodse")
///                 .awsAccountId("tdapkqeuuvrrasue")
///                 .awsProperties(AwsIamMFADevicePropertiesArgs.builder()
///                     .enableDate("2024-10-08T03:50:03.364Z")
///                     .serialNumber("ifphqcwiounuuootrnmxmm")
///                     .userName("jyjbnteckbccmmhbxjdk")
///                     .build())
///                 .awsRegion("uwyckzldxxj")
///                 .awsSourceSchema("ibnflrkwkaswdrsmaqtegtnky")
///                 .awsTags(Map.of("key581", "oqgcieddjmzl"))
///                 .publicCloudConnectorsResourceId("jmcknwcktcj")
///                 .publicCloudResourceName("vexrvwqtzdijlzwecmljscwepj")
///                 .build())
///             .resourceGroupName("rgiamMFADevice")
///             .tags(Map.of("key9234", "eygqwhelmjvwcvgkzgfg"))
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
/// const iamMfaDevice = new azure_native.awsconnector.IamMfaDevice("iamMfaDevice", {
///     location: "ytpxpjmmspx",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "hbymjvsaxodse",
///         awsAccountId: "tdapkqeuuvrrasue",
///         awsProperties: {
///             enableDate: "2024-10-08T03:50:03.364Z",
///             serialNumber: "ifphqcwiounuuootrnmxmm",
///             userName: "jyjbnteckbccmmhbxjdk",
///         },
///         awsRegion: "uwyckzldxxj",
///         awsSourceSchema: "ibnflrkwkaswdrsmaqtegtnky",
///         awsTags: {
///             key581: "oqgcieddjmzl",
///         },
///         publicCloudConnectorsResourceId: "jmcknwcktcj",
///         publicCloudResourceName: "vexrvwqtzdijlzwecmljscwepj",
///     },
///     resourceGroupName: "rgiamMFADevice",
///     tags: {
///         key9234: "eygqwhelmjvwcvgkzgfg",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// iam_mfa_device = azure_native.awsconnector.IamMfaDevice("iamMfaDevice",
///     location="ytpxpjmmspx",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "hbymjvsaxodse",
///         "aws_account_id": "tdapkqeuuvrrasue",
///         "aws_properties": {
///             "enable_date": "2024-10-08T03:50:03.364Z",
///             "serial_number": "ifphqcwiounuuootrnmxmm",
///             "user_name": "jyjbnteckbccmmhbxjdk",
///         },
///         "aws_region": "uwyckzldxxj",
///         "aws_source_schema": "ibnflrkwkaswdrsmaqtegtnky",
///         "aws_tags": {
///             "key581": "oqgcieddjmzl",
///         },
///         "public_cloud_connectors_resource_id": "jmcknwcktcj",
///         "public_cloud_resource_name": "vexrvwqtzdijlzwecmljscwepj",
///     },
///     resource_group_name="rgiamMFADevice",
///     tags={
///         "key9234": "eygqwhelmjvwcvgkzgfg",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   iamMfaDevice:
///     type: azure-native:awsconnector:IamMfaDevice
///     properties:
///       location: ytpxpjmmspx
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: hbymjvsaxodse
///         awsAccountId: tdapkqeuuvrrasue
///         awsProperties:
///           enableDate: 2024-10-08T03:50:03.364Z
///           serialNumber: ifphqcwiounuuootrnmxmm
///           userName: jyjbnteckbccmmhbxjdk
///         awsRegion: uwyckzldxxj
///         awsSourceSchema: ibnflrkwkaswdrsmaqtegtnky
///         awsTags:
///           key581: oqgcieddjmzl
///         publicCloudConnectorsResourceId: jmcknwcktcj
///         publicCloudResourceName: vexrvwqtzdijlzwecmljscwepj
///       resourceGroupName: rgiamMFADevice
///       tags:
///         key9234: eygqwhelmjvwcvgkzgfg
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
/// $ pulumi import azure-native:awsconnector:IamMfaDevice qaldgupkvxgpdkyumguetuizqtcgy /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/iamMFADevices/{name}
/// ```
class IamMfaDevice extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<IamMFADevicePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [IamMfaDevice].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IamMfaDevice]. {@macro pulumi_awsconnector_iam_mfa_device_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IamMfaDevice(
    String name, {
    IamMfaDeviceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:IamMfaDevice',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<IamMFADevicePropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
