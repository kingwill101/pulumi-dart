import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_formation_stack_args.dart';
import 'cloud_formation_stack_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CloudFormationStacks_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cloudFormationStack = new AzureNative.AwsConnector.CloudFormationStack("cloudFormationStack", new()
///     {
///         Location = "igidmxpchpipflxgxqkge",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.CloudFormationStackPropertiesArgs
///         {
///             Arn = "wnbcxhzurwtzqcoirs",
///             AwsAccountId = "yuzdhawgkrzzmppqjebmyzrqzsxbgh",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsCloudFormationStackPropertiesArgs
///             {
///                 Capabilities = new[]
///                 {
///                     AzureNative.AwsConnector.Capabilities.CAPABILITY_AUTO_EXPAND,
///                 },
///                 ChangeSetId = "diebgdscxgdrjl",
///                 CreationTime = "rbzmujrpza",
///                 Description = "qgthunuomcbskx",
///                 DisableRollback = true,
///                 EnableTerminationProtection = true,
///                 LastUpdateTime = "ziwluvridlkgt",
///                 NotificationARNs = new[]
///                 {
///                     "hiumjcobumu",
///                 },
///                 Outputs = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.OutputArgs
///                     {
///                         Description = "yr",
///                         ExportName = "inzgbtgxtlkmbsthsiqyaownydl",
///                         OutputKey = "oxvigtrakftzifxp",
///                         OutputValue = "xrkebm",
///                     },
///                 },
///                 Parameters =
///                 {
///                     { "key3924", "g" },
///                 },
///                 ParentId = "spfnpubjgnn",
///                 RoleARN = "chneost",
///                 RootId = "dm",
///                 StackId = "pfdvktglgjlp",
///                 StackName = "kcpmjgjmtil",
///                 StackPolicyURL = "azff",
///                 StackStatus = AzureNative.AwsConnector.StackStatus.CREATE_COMPLETE,
///                 StackStatusReason = "oashauqgm",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "xjabhkryhrdgshmztidyvkbzqw",
///                         Value = "xapmapwprakmhlboq",
///                     },
///                 },
///                 TemplateURL = "prpgfhggbaglqposmnlkc",
///                 TimeoutInMinutes = 21,
///             },
///             AwsRegion = "ovumxnjlsoffpzxyegazwgujni",
///             AwsSourceSchema = "ascbhyeewelekovixg",
///             AwsTags =
///             {
///                 { "key6002", "lkyagteqeoafj" },
///             },
///             PublicCloudConnectorsResourceId = "ccuizanjtbypcrcdmoelfyjkx",
///             PublicCloudResourceName = "vjnhdxpreaebeaxeqmrhfuro",
///         },
///         ResourceGroupName = "rgcloudFormationStack",
///         Tags =
///         {
///             { "key8740", "gebtpejhvwgd" },
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
/// 		_, err := awsconnector.NewCloudFormationStack(ctx, "cloudFormationStack", &awsconnector.CloudFormationStackArgs{
/// 			Location: pulumi.String("igidmxpchpipflxgxqkge"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.CloudFormationStackPropertiesArgs{
/// 				Arn:          pulumi.String("wnbcxhzurwtzqcoirs"),
/// 				AwsAccountId: pulumi.String("yuzdhawgkrzzmppqjebmyzrqzsxbgh"),
/// 				AwsProperties: &awsconnector.AwsCloudFormationStackPropertiesArgs{
/// 					Capabilities: pulumi.StringArray{
/// 						pulumi.String(awsconnector.Capabilities_CAPABILITY_AUTO_EXPAND),
/// 					},
/// 					ChangeSetId:                 pulumi.String("diebgdscxgdrjl"),
/// 					CreationTime:                pulumi.String("rbzmujrpza"),
/// 					Description:                 pulumi.String("qgthunuomcbskx"),
/// 					DisableRollback:             pulumi.Bool(true),
/// 					EnableTerminationProtection: pulumi.Bool(true),
/// 					LastUpdateTime:              pulumi.String("ziwluvridlkgt"),
/// 					NotificationARNs: pulumi.StringArray{
/// 						pulumi.String("hiumjcobumu"),
/// 					},
/// 					Outputs: awsconnector.OutputArray{
/// 						awsconnector.OutputArgs{
/// 							Description: pulumi.String("yr"),
/// 							ExportName:  pulumi.String("inzgbtgxtlkmbsthsiqyaownydl"),
/// 							OutputKey:   pulumi.String("oxvigtrakftzifxp"),
/// 							OutputValue: pulumi.String("xrkebm"),
/// 						},
/// 					},
/// 					Parameters: pulumi.StringMap{
/// 						"key3924": pulumi.String("g"),
/// 					},
/// 					ParentId:          pulumi.String("spfnpubjgnn"),
/// 					RoleARN:           pulumi.String("chneost"),
/// 					RootId:            pulumi.String("dm"),
/// 					StackId:           pulumi.String("pfdvktglgjlp"),
/// 					StackName:         pulumi.String("kcpmjgjmtil"),
/// 					StackPolicyURL:    pulumi.String("azff"),
/// 					StackStatus:       pulumi.String(awsconnector.StackStatus_CREATE_COMPLETE),
/// 					StackStatusReason: pulumi.String("oashauqgm"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("xjabhkryhrdgshmztidyvkbzqw"),
/// 							Value: pulumi.String("xapmapwprakmhlboq"),
/// 						},
/// 					},
/// 					TemplateURL:      pulumi.String("prpgfhggbaglqposmnlkc"),
/// 					TimeoutInMinutes: pulumi.Int(21),
/// 				},
/// 				AwsRegion:       pulumi.String("ovumxnjlsoffpzxyegazwgujni"),
/// 				AwsSourceSchema: pulumi.String("ascbhyeewelekovixg"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key6002": pulumi.String("lkyagteqeoafj"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("ccuizanjtbypcrcdmoelfyjkx"),
/// 				PublicCloudResourceName:         pulumi.String("vjnhdxpreaebeaxeqmrhfuro"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgcloudFormationStack"),
/// 			Tags: pulumi.StringMap{
/// 				"key8740": pulumi.String("gebtpejhvwgd"),
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
/// resource "azure-native_awsconnector_cloudformationstack" "cloudFormationStack" {
///   location = "igidmxpchpipflxgxqkge"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "wnbcxhzurwtzqcoirs"
///     aws_account_id = "yuzdhawgkrzzmppqjebmyzrqzsxbgh"
///     aws_properties = {
///       capabilities                  = ["CAPABILITY_AUTO_EXPAND"]
///       change_set_id                 = "diebgdscxgdrjl"
///       creation_time                 = "rbzmujrpza"
///       description                   = "qgthunuomcbskx"
///       disable_rollback              = true
///       enable_termination_protection = true
///       last_update_time              = "ziwluvridlkgt"
///       notification_ar_ns            = ["hiumjcobumu"]
///       outputs = [{
///         "description" = "yr"
///         "exportName"  = "inzgbtgxtlkmbsthsiqyaownydl"
///         "outputKey"   = "oxvigtrakftzifxp"
///         "outputValue" = "xrkebm"
///       }]
///       parameters = {
///         "key3924" = "g"
///       }
///       parent_id           = "spfnpubjgnn"
///       role_arn            = "chneost"
///       root_id             = "dm"
///       stack_id            = "pfdvktglgjlp"
///       stack_name          = "kcpmjgjmtil"
///       stack_policy_url    = "azff"
///       stack_status        = "CREATE_COMPLETE"
///       stack_status_reason = "oashauqgm"
///       tags = [{
///         "key"   = "xjabhkryhrdgshmztidyvkbzqw"
///         "value" = "xapmapwprakmhlboq"
///       }]
///       template_url       = "prpgfhggbaglqposmnlkc"
///       timeout_in_minutes = 21
///     }
///     aws_region        = "ovumxnjlsoffpzxyegazwgujni"
///     aws_source_schema = "ascbhyeewelekovixg"
///     aws_tags = {
///       "key6002" = "lkyagteqeoafj"
///     }
///     public_cloud_connectors_resource_id = "ccuizanjtbypcrcdmoelfyjkx"
///     public_cloud_resource_name          = "vjnhdxpreaebeaxeqmrhfuro"
///   }
///   resource_group_name = "rgcloudFormationStack"
///   tags = {
///     "key8740" = "gebtpejhvwgd"
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
/// import com.pulumi.azurenative.awsconnector.CloudFormationStack;
/// import com.pulumi.azurenative.awsconnector.CloudFormationStackArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.CloudFormationStackPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsCloudFormationStackPropertiesArgs;
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
///         var cloudFormationStack = new CloudFormationStack("cloudFormationStack", CloudFormationStackArgs.builder()
///             .location("igidmxpchpipflxgxqkge")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(CloudFormationStackPropertiesArgs.builder()
///                 .arn("wnbcxhzurwtzqcoirs")
///                 .awsAccountId("yuzdhawgkrzzmppqjebmyzrqzsxbgh")
///                 .awsProperties(AwsCloudFormationStackPropertiesArgs.builder()
///                     .capabilities("CAPABILITY_AUTO_EXPAND")
///                     .changeSetId("diebgdscxgdrjl")
///                     .creationTime("rbzmujrpza")
///                     .description("qgthunuomcbskx")
///                     .disableRollback(true)
///                     .enableTerminationProtection(true)
///                     .lastUpdateTime("ziwluvridlkgt")
///                     .notificationARNs("hiumjcobumu")
///                     .outputs(OutputArgs.builder()
///                         .description("yr")
///                         .exportName("inzgbtgxtlkmbsthsiqyaownydl")
///                         .outputKey("oxvigtrakftzifxp")
///                         .outputValue("xrkebm")
///                         .build())
///                     .parameters(Map.of("key3924", "g"))
///                     .parentId("spfnpubjgnn")
///                     .roleARN("chneost")
///                     .rootId("dm")
///                     .stackId("pfdvktglgjlp")
///                     .stackName("kcpmjgjmtil")
///                     .stackPolicyURL("azff")
///                     .stackStatus("CREATE_COMPLETE")
///                     .stackStatusReason("oashauqgm")
///                     .tags(TagArgs.builder()
///                         .key("xjabhkryhrdgshmztidyvkbzqw")
///                         .value("xapmapwprakmhlboq")
///                         .build())
///                     .templateURL("prpgfhggbaglqposmnlkc")
///                     .timeoutInMinutes(21)
///                     .build())
///                 .awsRegion("ovumxnjlsoffpzxyegazwgujni")
///                 .awsSourceSchema("ascbhyeewelekovixg")
///                 .awsTags(Map.of("key6002", "lkyagteqeoafj"))
///                 .publicCloudConnectorsResourceId("ccuizanjtbypcrcdmoelfyjkx")
///                 .publicCloudResourceName("vjnhdxpreaebeaxeqmrhfuro")
///                 .build())
///             .resourceGroupName("rgcloudFormationStack")
///             .tags(Map.of("key8740", "gebtpejhvwgd"))
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
/// const cloudFormationStack = new azure_native.awsconnector.CloudFormationStack("cloudFormationStack", {
///     location: "igidmxpchpipflxgxqkge",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "wnbcxhzurwtzqcoirs",
///         awsAccountId: "yuzdhawgkrzzmppqjebmyzrqzsxbgh",
///         awsProperties: {
///             capabilities: [azure_native.awsconnector.Capabilities.CAPABILITY_AUTO_EXPAND],
///             changeSetId: "diebgdscxgdrjl",
///             creationTime: "rbzmujrpza",
///             description: "qgthunuomcbskx",
///             disableRollback: true,
///             enableTerminationProtection: true,
///             lastUpdateTime: "ziwluvridlkgt",
///             notificationARNs: ["hiumjcobumu"],
///             outputs: [{
///                 description: "yr",
///                 exportName: "inzgbtgxtlkmbsthsiqyaownydl",
///                 outputKey: "oxvigtrakftzifxp",
///                 outputValue: "xrkebm",
///             }],
///             parameters: {
///                 key3924: "g",
///             },
///             parentId: "spfnpubjgnn",
///             roleARN: "chneost",
///             rootId: "dm",
///             stackId: "pfdvktglgjlp",
///             stackName: "kcpmjgjmtil",
///             stackPolicyURL: "azff",
///             stackStatus: azure_native.awsconnector.StackStatus.CREATE_COMPLETE,
///             stackStatusReason: "oashauqgm",
///             tags: [{
///                 key: "xjabhkryhrdgshmztidyvkbzqw",
///                 value: "xapmapwprakmhlboq",
///             }],
///             templateURL: "prpgfhggbaglqposmnlkc",
///             timeoutInMinutes: 21,
///         },
///         awsRegion: "ovumxnjlsoffpzxyegazwgujni",
///         awsSourceSchema: "ascbhyeewelekovixg",
///         awsTags: {
///             key6002: "lkyagteqeoafj",
///         },
///         publicCloudConnectorsResourceId: "ccuizanjtbypcrcdmoelfyjkx",
///         publicCloudResourceName: "vjnhdxpreaebeaxeqmrhfuro",
///     },
///     resourceGroupName: "rgcloudFormationStack",
///     tags: {
///         key8740: "gebtpejhvwgd",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cloud_formation_stack = azure_native.awsconnector.CloudFormationStack("cloudFormationStack",
///     location="igidmxpchpipflxgxqkge",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "wnbcxhzurwtzqcoirs",
///         "aws_account_id": "yuzdhawgkrzzmppqjebmyzrqzsxbgh",
///         "aws_properties": {
///             "capabilities": [azure_native.awsconnector.Capabilities.CAPABILIT_Y_AUT_O_EXPAND],
///             "change_set_id": "diebgdscxgdrjl",
///             "creation_time": "rbzmujrpza",
///             "description": "qgthunuomcbskx",
///             "disable_rollback": True,
///             "enable_termination_protection": True,
///             "last_update_time": "ziwluvridlkgt",
///             "notification_arns": ["hiumjcobumu"],
///             "outputs": [{
///                 "description": "yr",
///                 "export_name": "inzgbtgxtlkmbsthsiqyaownydl",
///                 "output_key": "oxvigtrakftzifxp",
///                 "output_value": "xrkebm",
///             }],
///             "parameters": {
///                 "key3924": "g",
///             },
///             "parent_id": "spfnpubjgnn",
///             "role_arn": "chneost",
///             "root_id": "dm",
///             "stack_id": "pfdvktglgjlp",
///             "stack_name": "kcpmjgjmtil",
///             "stack_policy_url": "azff",
///             "stack_status": azure_native.awsconnector.StackStatus.CREAT_E_COMPLETE,
///             "stack_status_reason": "oashauqgm",
///             "tags": [{
///                 "key": "xjabhkryhrdgshmztidyvkbzqw",
///                 "value": "xapmapwprakmhlboq",
///             }],
///             "template_url": "prpgfhggbaglqposmnlkc",
///             "timeout_in_minutes": 21,
///         },
///         "aws_region": "ovumxnjlsoffpzxyegazwgujni",
///         "aws_source_schema": "ascbhyeewelekovixg",
///         "aws_tags": {
///             "key6002": "lkyagteqeoafj",
///         },
///         "public_cloud_connectors_resource_id": "ccuizanjtbypcrcdmoelfyjkx",
///         "public_cloud_resource_name": "vjnhdxpreaebeaxeqmrhfuro",
///     },
///     resource_group_name="rgcloudFormationStack",
///     tags={
///         "key8740": "gebtpejhvwgd",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   cloudFormationStack:
///     type: azure-native:awsconnector:CloudFormationStack
///     properties:
///       location: igidmxpchpipflxgxqkge
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: wnbcxhzurwtzqcoirs
///         awsAccountId: yuzdhawgkrzzmppqjebmyzrqzsxbgh
///         awsProperties:
///           capabilities:
///             - CAPABILITY_AUTO_EXPAND
///           changeSetId: diebgdscxgdrjl
///           creationTime: rbzmujrpza
///           description: qgthunuomcbskx
///           disableRollback: true
///           enableTerminationProtection: true
///           lastUpdateTime: ziwluvridlkgt
///           notificationARNs:
///             - hiumjcobumu
///           outputs:
///             - description: yr
///               exportName: inzgbtgxtlkmbsthsiqyaownydl
///               outputKey: oxvigtrakftzifxp
///               outputValue: xrkebm
///           parameters:
///             key3924: g
///           parentId: spfnpubjgnn
///           roleARN: chneost
///           rootId: dm
///           stackId: pfdvktglgjlp
///           stackName: kcpmjgjmtil
///           stackPolicyURL: azff
///           stackStatus: CREATE_COMPLETE
///           stackStatusReason: oashauqgm
///           tags:
///             - key: xjabhkryhrdgshmztidyvkbzqw
///               value: xapmapwprakmhlboq
///           templateURL: prpgfhggbaglqposmnlkc
///           timeoutInMinutes: 21
///         awsRegion: ovumxnjlsoffpzxyegazwgujni
///         awsSourceSchema: ascbhyeewelekovixg
///         awsTags:
///           key6002: lkyagteqeoafj
///         publicCloudConnectorsResourceId: ccuizanjtbypcrcdmoelfyjkx
///         publicCloudResourceName: vjnhdxpreaebeaxeqmrhfuro
///       resourceGroupName: rgcloudFormationStack
///       tags:
///         key8740: gebtpejhvwgd
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
/// $ pulumi import azure-native:awsconnector:CloudFormationStack fkrujbsksjubfb /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/cloudFormationStacks/{name}
/// ```
class CloudFormationStack extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<CloudFormationStackPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [CloudFormationStack].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CloudFormationStack]. {@macro pulumi_awsconnector_cloud_formation_stack_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CloudFormationStack(
    String name, {
    CloudFormationStackArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:CloudFormationStack',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<CloudFormationStackPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CloudFormationStackPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
