import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_beanstalk_configuration_template_args.dart';
import 'elastic_beanstalk_configuration_template_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ElasticBeanstalkConfigurationTemplates_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var elasticBeanstalkConfigurationTemplate = new AzureNative.AwsConnector.ElasticBeanstalkConfigurationTemplate("elasticBeanstalkConfigurationTemplate", new()
///     {
///         Location = "zzrrrcfibirqbvvfobbhmdfw",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.ElasticBeanstalkConfigurationTemplatePropertiesArgs
///         {
///             Arn = "jnsnkdqnxzjvxlitgjtzledfqpwd",
///             AwsAccountId = "eedsjtwxrqaahfnsjwvrxnzerudq",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsElasticBeanstalkConfigurationTemplatePropertiesArgs
///             {
///                 ApplicationName = "cectxkagk",
///                 Description = "f",
///                 EnvironmentId = "irk",
///                 OptionSettings = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.ConfigurationOptionSettingArgs
///                     {
///                         Namespace = "wqnwnaqljiuphwrslzv",
///                         OptionName = "jutnzi",
///                         ResourceName = "cxxafxqqeda",
///                         Value = "auojwoarknbok",
///                     },
///                 },
///                 PlatformArn = "shxv",
///                 SolutionStackName = "ytiftttvorpjlkspzoqxnv",
///                 SourceConfiguration = new AzureNative.AwsConnector.Inputs.SourceConfigurationArgs
///                 {
///                     ApplicationName = "gxvqqvuzcufyvzeguns",
///                     TemplateName = "eajnqnevlyqrtelgeur",
///                 },
///                 TemplateName = "fjixtzihey",
///             },
///             AwsRegion = "timidysdqvjb",
///             AwsSourceSchema = "ehzbquzqlgoysykmpkmfu",
///             AwsTags =
///             {
///                 { "key1871", "ndxlqvxztqkkkqewenirmqdtxweey" },
///             },
///             PublicCloudConnectorsResourceId = "ezxdkcckcqzvdvfjkioqer",
///             PublicCloudResourceName = "lgdolpeaabdfynczxxux",
///         },
///         ResourceGroupName = "rgelasticBeanstalkConfigurationTemplate",
///         Tags =
///         {
///             { "key9826", "pcgafzfic" },
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
/// 		_, err := awsconnector.NewElasticBeanstalkConfigurationTemplate(ctx, "elasticBeanstalkConfigurationTemplate", &awsconnector.ElasticBeanstalkConfigurationTemplateArgs{
/// 			Location: pulumi.String("zzrrrcfibirqbvvfobbhmdfw"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.ElasticBeanstalkConfigurationTemplatePropertiesArgs{
/// 				Arn:          pulumi.String("jnsnkdqnxzjvxlitgjtzledfqpwd"),
/// 				AwsAccountId: pulumi.String("eedsjtwxrqaahfnsjwvrxnzerudq"),
/// 				AwsProperties: &awsconnector.AwsElasticBeanstalkConfigurationTemplatePropertiesArgs{
/// 					ApplicationName: pulumi.String("cectxkagk"),
/// 					Description:     pulumi.String("f"),
/// 					EnvironmentId:   pulumi.String("irk"),
/// 					OptionSettings: awsconnector.ConfigurationOptionSettingArray{
/// 						&awsconnector.ConfigurationOptionSettingArgs{
/// 							Namespace:    pulumi.String("wqnwnaqljiuphwrslzv"),
/// 							OptionName:   pulumi.String("jutnzi"),
/// 							ResourceName: pulumi.String("cxxafxqqeda"),
/// 							Value:        pulumi.String("auojwoarknbok"),
/// 						},
/// 					},
/// 					PlatformArn:       pulumi.String("shxv"),
/// 					SolutionStackName: pulumi.String("ytiftttvorpjlkspzoqxnv"),
/// 					SourceConfiguration: &awsconnector.SourceConfigurationArgs{
/// 						ApplicationName: pulumi.String("gxvqqvuzcufyvzeguns"),
/// 						TemplateName:    pulumi.String("eajnqnevlyqrtelgeur"),
/// 					},
/// 					TemplateName: pulumi.String("fjixtzihey"),
/// 				},
/// 				AwsRegion:       pulumi.String("timidysdqvjb"),
/// 				AwsSourceSchema: pulumi.String("ehzbquzqlgoysykmpkmfu"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key1871": pulumi.String("ndxlqvxztqkkkqewenirmqdtxweey"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("ezxdkcckcqzvdvfjkioqer"),
/// 				PublicCloudResourceName:         pulumi.String("lgdolpeaabdfynczxxux"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgelasticBeanstalkConfigurationTemplate"),
/// 			Tags: pulumi.StringMap{
/// 				"key9826": pulumi.String("pcgafzfic"),
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
/// resource "azure-native_awsconnector_elasticbeanstalkconfigurationtemplate" "elasticBeanstalkConfigurationTemplate" {
///   location = "zzrrrcfibirqbvvfobbhmdfw"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "jnsnkdqnxzjvxlitgjtzledfqpwd"
///     aws_account_id = "eedsjtwxrqaahfnsjwvrxnzerudq"
///     aws_properties = {
///       application_name = "cectxkagk"
///       description      = "f"
///       environment_id   = "irk"
///       option_settings = [{
///         "namespace"    = "wqnwnaqljiuphwrslzv"
///         "optionName"   = "jutnzi"
///         "resourceName" = "cxxafxqqeda"
///         "value"        = "auojwoarknbok"
///       }]
///       platform_arn        = "shxv"
///       solution_stack_name = "ytiftttvorpjlkspzoqxnv"
///       source_configuration = {
///         application_name = "gxvqqvuzcufyvzeguns"
///         template_name    = "eajnqnevlyqrtelgeur"
///       }
///       template_name = "fjixtzihey"
///     }
///     aws_region        = "timidysdqvjb"
///     aws_source_schema = "ehzbquzqlgoysykmpkmfu"
///     aws_tags = {
///       "key1871" = "ndxlqvxztqkkkqewenirmqdtxweey"
///     }
///     public_cloud_connectors_resource_id = "ezxdkcckcqzvdvfjkioqer"
///     public_cloud_resource_name          = "lgdolpeaabdfynczxxux"
///   }
///   resource_group_name = "rgelasticBeanstalkConfigurationTemplate"
///   tags = {
///     "key9826" = "pcgafzfic"
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
/// import com.pulumi.azurenative.awsconnector.ElasticBeanstalkConfigurationTemplate;
/// import com.pulumi.azurenative.awsconnector.ElasticBeanstalkConfigurationTemplateArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ElasticBeanstalkConfigurationTemplatePropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsElasticBeanstalkConfigurationTemplatePropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.SourceConfigurationArgs;
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
///         var elasticBeanstalkConfigurationTemplate = new ElasticBeanstalkConfigurationTemplate("elasticBeanstalkConfigurationTemplate", ElasticBeanstalkConfigurationTemplateArgs.builder()
///             .location("zzrrrcfibirqbvvfobbhmdfw")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(ElasticBeanstalkConfigurationTemplatePropertiesArgs.builder()
///                 .arn("jnsnkdqnxzjvxlitgjtzledfqpwd")
///                 .awsAccountId("eedsjtwxrqaahfnsjwvrxnzerudq")
///                 .awsProperties(AwsElasticBeanstalkConfigurationTemplatePropertiesArgs.builder()
///                     .applicationName("cectxkagk")
///                     .description("f")
///                     .environmentId("irk")
///                     .optionSettings(ConfigurationOptionSettingArgs.builder()
///                         .namespace("wqnwnaqljiuphwrslzv")
///                         .optionName("jutnzi")
///                         .resourceName("cxxafxqqeda")
///                         .value("auojwoarknbok")
///                         .build())
///                     .platformArn("shxv")
///                     .solutionStackName("ytiftttvorpjlkspzoqxnv")
///                     .sourceConfiguration(SourceConfigurationArgs.builder()
///                         .applicationName("gxvqqvuzcufyvzeguns")
///                         .templateName("eajnqnevlyqrtelgeur")
///                         .build())
///                     .templateName("fjixtzihey")
///                     .build())
///                 .awsRegion("timidysdqvjb")
///                 .awsSourceSchema("ehzbquzqlgoysykmpkmfu")
///                 .awsTags(Map.of("key1871", "ndxlqvxztqkkkqewenirmqdtxweey"))
///                 .publicCloudConnectorsResourceId("ezxdkcckcqzvdvfjkioqer")
///                 .publicCloudResourceName("lgdolpeaabdfynczxxux")
///                 .build())
///             .resourceGroupName("rgelasticBeanstalkConfigurationTemplate")
///             .tags(Map.of("key9826", "pcgafzfic"))
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
/// const elasticBeanstalkConfigurationTemplate = new azure_native.awsconnector.ElasticBeanstalkConfigurationTemplate("elasticBeanstalkConfigurationTemplate", {
///     location: "zzrrrcfibirqbvvfobbhmdfw",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "jnsnkdqnxzjvxlitgjtzledfqpwd",
///         awsAccountId: "eedsjtwxrqaahfnsjwvrxnzerudq",
///         awsProperties: {
///             applicationName: "cectxkagk",
///             description: "f",
///             environmentId: "irk",
///             optionSettings: [{
///                 namespace: "wqnwnaqljiuphwrslzv",
///                 optionName: "jutnzi",
///                 resourceName: "cxxafxqqeda",
///                 value: "auojwoarknbok",
///             }],
///             platformArn: "shxv",
///             solutionStackName: "ytiftttvorpjlkspzoqxnv",
///             sourceConfiguration: {
///                 applicationName: "gxvqqvuzcufyvzeguns",
///                 templateName: "eajnqnevlyqrtelgeur",
///             },
///             templateName: "fjixtzihey",
///         },
///         awsRegion: "timidysdqvjb",
///         awsSourceSchema: "ehzbquzqlgoysykmpkmfu",
///         awsTags: {
///             key1871: "ndxlqvxztqkkkqewenirmqdtxweey",
///         },
///         publicCloudConnectorsResourceId: "ezxdkcckcqzvdvfjkioqer",
///         publicCloudResourceName: "lgdolpeaabdfynczxxux",
///     },
///     resourceGroupName: "rgelasticBeanstalkConfigurationTemplate",
///     tags: {
///         key9826: "pcgafzfic",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// elastic_beanstalk_configuration_template = azure_native.awsconnector.ElasticBeanstalkConfigurationTemplate("elasticBeanstalkConfigurationTemplate",
///     location="zzrrrcfibirqbvvfobbhmdfw",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "jnsnkdqnxzjvxlitgjtzledfqpwd",
///         "aws_account_id": "eedsjtwxrqaahfnsjwvrxnzerudq",
///         "aws_properties": {
///             "application_name": "cectxkagk",
///             "description": "f",
///             "environment_id": "irk",
///             "option_settings": [{
///                 "namespace": "wqnwnaqljiuphwrslzv",
///                 "option_name": "jutnzi",
///                 "resource_name": "cxxafxqqeda",
///                 "value": "auojwoarknbok",
///             }],
///             "platform_arn": "shxv",
///             "solution_stack_name": "ytiftttvorpjlkspzoqxnv",
///             "source_configuration": {
///                 "application_name": "gxvqqvuzcufyvzeguns",
///                 "template_name": "eajnqnevlyqrtelgeur",
///             },
///             "template_name": "fjixtzihey",
///         },
///         "aws_region": "timidysdqvjb",
///         "aws_source_schema": "ehzbquzqlgoysykmpkmfu",
///         "aws_tags": {
///             "key1871": "ndxlqvxztqkkkqewenirmqdtxweey",
///         },
///         "public_cloud_connectors_resource_id": "ezxdkcckcqzvdvfjkioqer",
///         "public_cloud_resource_name": "lgdolpeaabdfynczxxux",
///     },
///     resource_group_name="rgelasticBeanstalkConfigurationTemplate",
///     tags={
///         "key9826": "pcgafzfic",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   elasticBeanstalkConfigurationTemplate:
///     type: azure-native:awsconnector:ElasticBeanstalkConfigurationTemplate
///     properties:
///       location: zzrrrcfibirqbvvfobbhmdfw
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: jnsnkdqnxzjvxlitgjtzledfqpwd
///         awsAccountId: eedsjtwxrqaahfnsjwvrxnzerudq
///         awsProperties:
///           applicationName: cectxkagk
///           description: f
///           environmentId: irk
///           optionSettings:
///             - namespace: wqnwnaqljiuphwrslzv
///               optionName: jutnzi
///               resourceName: cxxafxqqeda
///               value: auojwoarknbok
///           platformArn: shxv
///           solutionStackName: ytiftttvorpjlkspzoqxnv
///           sourceConfiguration:
///             applicationName: gxvqqvuzcufyvzeguns
///             templateName: eajnqnevlyqrtelgeur
///           templateName: fjixtzihey
///         awsRegion: timidysdqvjb
///         awsSourceSchema: ehzbquzqlgoysykmpkmfu
///         awsTags:
///           key1871: ndxlqvxztqkkkqewenirmqdtxweey
///         publicCloudConnectorsResourceId: ezxdkcckcqzvdvfjkioqer
///         publicCloudResourceName: lgdolpeaabdfynczxxux
///       resourceGroupName: rgelasticBeanstalkConfigurationTemplate
///       tags:
///         key9826: pcgafzfic
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
/// $ pulumi import azure-native:awsconnector:ElasticBeanstalkConfigurationTemplate eirksxoglhtshdstawe /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/elasticBeanstalkConfigurationTemplates/{name}
/// ```
class ElasticBeanstalkConfigurationTemplate extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<ElasticBeanstalkConfigurationTemplatePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ElasticBeanstalkConfigurationTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ElasticBeanstalkConfigurationTemplate]. {@macro pulumi_awsconnector_elastic_beanstalk_configuration_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ElasticBeanstalkConfigurationTemplate(
    String name, {
    ElasticBeanstalkConfigurationTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:ElasticBeanstalkConfigurationTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ElasticBeanstalkConfigurationTemplatePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ElasticBeanstalkConfigurationTemplatePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ElasticBeanstalkConfigurationTemplate] resource.
  ElasticBeanstalkConfigurationTemplate.reference(String urn)
    : super(
        'azure-native:awsconnector:ElasticBeanstalkConfigurationTemplate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ElasticBeanstalkConfigurationTemplatePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ElasticBeanstalkConfigurationTemplatePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
