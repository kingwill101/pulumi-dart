import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_service_configuration_recorder_status_args.dart';
import 'config_service_configuration_recorder_status_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ConfigServiceConfigurationRecorderStatuses_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var configServiceConfigurationRecorderStatus = new AzureNative.AwsConnector.ConfigServiceConfigurationRecorderStatus("configServiceConfigurationRecorderStatus", new()
///     {
///         Location = "aanagogcqgqikndwcsiwpf",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.ConfigServiceConfigurationRecorderStatusPropertiesArgs
///         {
///             Arn = "iwxslgken",
///             AwsAccountId = "dnnbcuuhaxys",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsConfigServiceConfigurationRecorderStatusPropertiesArgs
///             {
///                 LastErrorCode = "zvduytuuzcdxiwmlqur",
///                 LastErrorMessage = "qcopqdjuuwuwdvdjmupwgrnxux",
///                 LastStartTime = "2024-10-08T03:54:51.026Z",
///                 LastStatus = new AzureNative.AwsConnector.Inputs.RecorderStatusEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.RecorderStatus.Failure,
///                 },
///                 LastStatusChangeTime = "2024-10-08T03:54:51.038Z",
///                 LastStopTime = "2024-10-08T03:54:51.038Z",
///                 Name = "mvnralcjhhrhhczxctukeumhnhhsvs",
///                 Recording = true,
///             },
///             AwsRegion = "pffplccggyknjkyebtjepdzwbim",
///             AwsSourceSchema = "qprhkzdetwvsaznwugwruaned",
///             AwsTags =
///             {
///                 { "key2618", "igrrsqtvduurjhwftennerlrcmamr" },
///             },
///             PublicCloudConnectorsResourceId = "fzembqicafznmnrvzudikggimnls",
///             PublicCloudResourceName = "stvqbbbupeyrxdfrdlslkxbi",
///         },
///         ResourceGroupName = "rgconfigServiceConfigurationRecorderStatus",
///         Tags =
///         {
///             { "key333", "yypbuvwbxpiokolnuiiq" },
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
/// 		_, err := awsconnector.NewConfigServiceConfigurationRecorderStatus(ctx, "configServiceConfigurationRecorderStatus", &awsconnector.ConfigServiceConfigurationRecorderStatusArgs{
/// 			Location: pulumi.String("aanagogcqgqikndwcsiwpf"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.ConfigServiceConfigurationRecorderStatusPropertiesArgs{
/// 				Arn:          pulumi.String("iwxslgken"),
/// 				AwsAccountId: pulumi.String("dnnbcuuhaxys"),
/// 				AwsProperties: &awsconnector.AwsConfigServiceConfigurationRecorderStatusPropertiesArgs{
/// 					LastErrorCode:    pulumi.String("zvduytuuzcdxiwmlqur"),
/// 					LastErrorMessage: pulumi.String("qcopqdjuuwuwdvdjmupwgrnxux"),
/// 					LastStartTime:    pulumi.String("2024-10-08T03:54:51.026Z"),
/// 					LastStatus: &awsconnector.RecorderStatusEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.RecorderStatusFailure),
/// 					},
/// 					LastStatusChangeTime: pulumi.String("2024-10-08T03:54:51.038Z"),
/// 					LastStopTime:         pulumi.String("2024-10-08T03:54:51.038Z"),
/// 					Name:                 pulumi.String("mvnralcjhhrhhczxctukeumhnhhsvs"),
/// 					Recording:            pulumi.Bool(true),
/// 				},
/// 				AwsRegion:       pulumi.String("pffplccggyknjkyebtjepdzwbim"),
/// 				AwsSourceSchema: pulumi.String("qprhkzdetwvsaznwugwruaned"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key2618": pulumi.String("igrrsqtvduurjhwftennerlrcmamr"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("fzembqicafznmnrvzudikggimnls"),
/// 				PublicCloudResourceName:         pulumi.String("stvqbbbupeyrxdfrdlslkxbi"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgconfigServiceConfigurationRecorderStatus"),
/// 			Tags: pulumi.StringMap{
/// 				"key333": pulumi.String("yypbuvwbxpiokolnuiiq"),
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
/// resource "azure-native_awsconnector_configserviceconfigurationrecorderstatus" "configServiceConfigurationRecorderStatus" {
///   location = "aanagogcqgqikndwcsiwpf"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "iwxslgken"
///     aws_account_id = "dnnbcuuhaxys"
///     aws_properties = {
///       last_error_code    = "zvduytuuzcdxiwmlqur"
///       last_error_message = "qcopqdjuuwuwdvdjmupwgrnxux"
///       last_start_time    = "2024-10-08T03:54:51.026Z"
///       last_status = {
///         value = "Failure"
///       }
///       last_status_change_time = "2024-10-08T03:54:51.038Z"
///       last_stop_time          = "2024-10-08T03:54:51.038Z"
///       name                    = "mvnralcjhhrhhczxctukeumhnhhsvs"
///       recording               = true
///     }
///     aws_region        = "pffplccggyknjkyebtjepdzwbim"
///     aws_source_schema = "qprhkzdetwvsaznwugwruaned"
///     aws_tags = {
///       "key2618" = "igrrsqtvduurjhwftennerlrcmamr"
///     }
///     public_cloud_connectors_resource_id = "fzembqicafznmnrvzudikggimnls"
///     public_cloud_resource_name          = "stvqbbbupeyrxdfrdlslkxbi"
///   }
///   resource_group_name = "rgconfigServiceConfigurationRecorderStatus"
///   tags = {
///     "key333" = "yypbuvwbxpiokolnuiiq"
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
/// import com.pulumi.azurenative.awsconnector.ConfigServiceConfigurationRecorderStatus;
/// import com.pulumi.azurenative.awsconnector.ConfigServiceConfigurationRecorderStatusArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ConfigServiceConfigurationRecorderStatusPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsConfigServiceConfigurationRecorderStatusPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.RecorderStatusEnumValueArgs;
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
///         var configServiceConfigurationRecorderStatus = new ConfigServiceConfigurationRecorderStatus("configServiceConfigurationRecorderStatus", ConfigServiceConfigurationRecorderStatusArgs.builder()
///             .location("aanagogcqgqikndwcsiwpf")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(ConfigServiceConfigurationRecorderStatusPropertiesArgs.builder()
///                 .arn("iwxslgken")
///                 .awsAccountId("dnnbcuuhaxys")
///                 .awsProperties(AwsConfigServiceConfigurationRecorderStatusPropertiesArgs.builder()
///                     .lastErrorCode("zvduytuuzcdxiwmlqur")
///                     .lastErrorMessage("qcopqdjuuwuwdvdjmupwgrnxux")
///                     .lastStartTime("2024-10-08T03:54:51.026Z")
///                     .lastStatus(RecorderStatusEnumValueArgs.builder()
///                         .value("Failure")
///                         .build())
///                     .lastStatusChangeTime("2024-10-08T03:54:51.038Z")
///                     .lastStopTime("2024-10-08T03:54:51.038Z")
///                     .name("mvnralcjhhrhhczxctukeumhnhhsvs")
///                     .recording(true)
///                     .build())
///                 .awsRegion("pffplccggyknjkyebtjepdzwbim")
///                 .awsSourceSchema("qprhkzdetwvsaznwugwruaned")
///                 .awsTags(Map.of("key2618", "igrrsqtvduurjhwftennerlrcmamr"))
///                 .publicCloudConnectorsResourceId("fzembqicafznmnrvzudikggimnls")
///                 .publicCloudResourceName("stvqbbbupeyrxdfrdlslkxbi")
///                 .build())
///             .resourceGroupName("rgconfigServiceConfigurationRecorderStatus")
///             .tags(Map.of("key333", "yypbuvwbxpiokolnuiiq"))
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
/// const configServiceConfigurationRecorderStatus = new azure_native.awsconnector.ConfigServiceConfigurationRecorderStatus("configServiceConfigurationRecorderStatus", {
///     location: "aanagogcqgqikndwcsiwpf",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "iwxslgken",
///         awsAccountId: "dnnbcuuhaxys",
///         awsProperties: {
///             lastErrorCode: "zvduytuuzcdxiwmlqur",
///             lastErrorMessage: "qcopqdjuuwuwdvdjmupwgrnxux",
///             lastStartTime: "2024-10-08T03:54:51.026Z",
///             lastStatus: {
///                 value: azure_native.awsconnector.RecorderStatus.Failure,
///             },
///             lastStatusChangeTime: "2024-10-08T03:54:51.038Z",
///             lastStopTime: "2024-10-08T03:54:51.038Z",
///             name: "mvnralcjhhrhhczxctukeumhnhhsvs",
///             recording: true,
///         },
///         awsRegion: "pffplccggyknjkyebtjepdzwbim",
///         awsSourceSchema: "qprhkzdetwvsaznwugwruaned",
///         awsTags: {
///             key2618: "igrrsqtvduurjhwftennerlrcmamr",
///         },
///         publicCloudConnectorsResourceId: "fzembqicafznmnrvzudikggimnls",
///         publicCloudResourceName: "stvqbbbupeyrxdfrdlslkxbi",
///     },
///     resourceGroupName: "rgconfigServiceConfigurationRecorderStatus",
///     tags: {
///         key333: "yypbuvwbxpiokolnuiiq",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// config_service_configuration_recorder_status = azure_native.awsconnector.ConfigServiceConfigurationRecorderStatus("configServiceConfigurationRecorderStatus",
///     location="aanagogcqgqikndwcsiwpf",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "iwxslgken",
///         "aws_account_id": "dnnbcuuhaxys",
///         "aws_properties": {
///             "last_error_code": "zvduytuuzcdxiwmlqur",
///             "last_error_message": "qcopqdjuuwuwdvdjmupwgrnxux",
///             "last_start_time": "2024-10-08T03:54:51.026Z",
///             "last_status": {
///                 "value": azure_native.awsconnector.RecorderStatus.FAILURE,
///             },
///             "last_status_change_time": "2024-10-08T03:54:51.038Z",
///             "last_stop_time": "2024-10-08T03:54:51.038Z",
///             "name": "mvnralcjhhrhhczxctukeumhnhhsvs",
///             "recording": True,
///         },
///         "aws_region": "pffplccggyknjkyebtjepdzwbim",
///         "aws_source_schema": "qprhkzdetwvsaznwugwruaned",
///         "aws_tags": {
///             "key2618": "igrrsqtvduurjhwftennerlrcmamr",
///         },
///         "public_cloud_connectors_resource_id": "fzembqicafznmnrvzudikggimnls",
///         "public_cloud_resource_name": "stvqbbbupeyrxdfrdlslkxbi",
///     },
///     resource_group_name="rgconfigServiceConfigurationRecorderStatus",
///     tags={
///         "key333": "yypbuvwbxpiokolnuiiq",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   configServiceConfigurationRecorderStatus:
///     type: azure-native:awsconnector:ConfigServiceConfigurationRecorderStatus
///     properties:
///       location: aanagogcqgqikndwcsiwpf
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: iwxslgken
///         awsAccountId: dnnbcuuhaxys
///         awsProperties:
///           lastErrorCode: zvduytuuzcdxiwmlqur
///           lastErrorMessage: qcopqdjuuwuwdvdjmupwgrnxux
///           lastStartTime: 2024-10-08T03:54:51.026Z
///           lastStatus:
///             value: Failure
///           lastStatusChangeTime: 2024-10-08T03:54:51.038Z
///           lastStopTime: 2024-10-08T03:54:51.038Z
///           name: mvnralcjhhrhhczxctukeumhnhhsvs
///           recording: true
///         awsRegion: pffplccggyknjkyebtjepdzwbim
///         awsSourceSchema: qprhkzdetwvsaznwugwruaned
///         awsTags:
///           key2618: igrrsqtvduurjhwftennerlrcmamr
///         publicCloudConnectorsResourceId: fzembqicafznmnrvzudikggimnls
///         publicCloudResourceName: stvqbbbupeyrxdfrdlslkxbi
///       resourceGroupName: rgconfigServiceConfigurationRecorderStatus
///       tags:
///         key333: yypbuvwbxpiokolnuiiq
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
/// $ pulumi import azure-native:awsconnector:ConfigServiceConfigurationRecorderStatus eeydwxjrofsusc /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/configServiceConfigurationRecorderStatuses/{name}
/// ```
class ConfigServiceConfigurationRecorderStatus extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<ConfigServiceConfigurationRecorderStatusPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ConfigServiceConfigurationRecorderStatus].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConfigServiceConfigurationRecorderStatus]. {@macro pulumi_awsconnector_config_service_configuration_recorder_status_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConfigServiceConfigurationRecorderStatus(
    String name, {
    ConfigServiceConfigurationRecorderStatusArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:ConfigServiceConfigurationRecorderStatus',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ConfigServiceConfigurationRecorderStatusPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigServiceConfigurationRecorderStatusPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
