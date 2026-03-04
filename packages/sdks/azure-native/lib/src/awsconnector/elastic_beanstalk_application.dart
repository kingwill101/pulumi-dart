import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_beanstalk_application_args.dart';
import 'elastic_beanstalk_application_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ElasticBeanstalkApplications_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var elasticBeanstalkApplication = new AzureNative.AwsConnector.ElasticBeanstalkApplication("elasticBeanstalkApplication", new()
///     {
///         Location = "iiedtydxzeyayiwanytnqwn",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.ElasticBeanstalkApplicationPropertiesArgs
///         {
///             Arn = "yautrhxbrmk",
///             AwsAccountId = "xrjnzzimbdnoqnbzpppxas",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsElasticBeanstalkApplicationPropertiesArgs
///             {
///                 ApplicationName = "lrxgvxoicfhhixebp",
///                 Description = "a",
///                 ResourceLifecycleConfig = new AzureNative.AwsConnector.Inputs.ApplicationResourceLifecycleConfigArgs
///                 {
///                     ServiceRole = "buibidzp",
///                     VersionLifecycleConfig = new AzureNative.AwsConnector.Inputs.ApplicationVersionLifecycleConfigArgs
///                     {
///                         MaxAgeRule = new AzureNative.AwsConnector.Inputs.MaxAgeRuleArgs
///                         {
///                             DeleteSourceFromS3 = true,
///                             Enabled = true,
///                             MaxAgeInDays = 5,
///                         },
///                         MaxCountRule = new AzureNative.AwsConnector.Inputs.MaxCountRuleArgs
///                         {
///                             DeleteSourceFromS3 = true,
///                             Enabled = true,
///                             MaxCount = 14,
///                         },
///                     },
///                 },
///             },
///             AwsRegion = "wxoiinzpqpanl",
///             AwsSourceSchema = "or",
///             AwsTags =
///             {
///                 { "key4469", "wyj" },
///             },
///             PublicCloudConnectorsResourceId = "echppxwpbpqnasbem",
///             PublicCloudResourceName = "nkyqyjvezjhltbpdnnxr",
///         },
///         ResourceGroupName = "rgelasticBeanstalkApplication",
///         Tags =
///         {
///             { "key8088", "wwicspxekbelocgqyxjqadlctp" },
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
/// 		_, err := awsconnector.NewElasticBeanstalkApplication(ctx, "elasticBeanstalkApplication", &awsconnector.ElasticBeanstalkApplicationArgs{
/// 			Location: pulumi.String("iiedtydxzeyayiwanytnqwn"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.ElasticBeanstalkApplicationPropertiesArgs{
/// 				Arn:          pulumi.String("yautrhxbrmk"),
/// 				AwsAccountId: pulumi.String("xrjnzzimbdnoqnbzpppxas"),
/// 				AwsProperties: &awsconnector.AwsElasticBeanstalkApplicationPropertiesArgs{
/// 					ApplicationName: pulumi.String("lrxgvxoicfhhixebp"),
/// 					Description:     pulumi.String("a"),
/// 					ResourceLifecycleConfig: &awsconnector.ApplicationResourceLifecycleConfigArgs{
/// 						ServiceRole: pulumi.String("buibidzp"),
/// 						VersionLifecycleConfig: &awsconnector.ApplicationVersionLifecycleConfigArgs{
/// 							MaxAgeRule: &awsconnector.MaxAgeRuleArgs{
/// 								DeleteSourceFromS3: pulumi.Bool(true),
/// 								Enabled:            pulumi.Bool(true),
/// 								MaxAgeInDays:       pulumi.Int(5),
/// 							},
/// 							MaxCountRule: &awsconnector.MaxCountRuleArgs{
/// 								DeleteSourceFromS3: pulumi.Bool(true),
/// 								Enabled:            pulumi.Bool(true),
/// 								MaxCount:           pulumi.Int(14),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("wxoiinzpqpanl"),
/// 				AwsSourceSchema: pulumi.String("or"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key4469": pulumi.String("wyj"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("echppxwpbpqnasbem"),
/// 				PublicCloudResourceName:         pulumi.String("nkyqyjvezjhltbpdnnxr"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgelasticBeanstalkApplication"),
/// 			Tags: pulumi.StringMap{
/// 				"key8088": pulumi.String("wwicspxekbelocgqyxjqadlctp"),
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
/// import com.pulumi.azurenative.awsconnector.ElasticBeanstalkApplication;
/// import com.pulumi.azurenative.awsconnector.ElasticBeanstalkApplicationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ElasticBeanstalkApplicationPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsElasticBeanstalkApplicationPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ApplicationResourceLifecycleConfigArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ApplicationVersionLifecycleConfigArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.MaxAgeRuleArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.MaxCountRuleArgs;
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
///         var elasticBeanstalkApplication = new ElasticBeanstalkApplication("elasticBeanstalkApplication", ElasticBeanstalkApplicationArgs.builder()
///             .location("iiedtydxzeyayiwanytnqwn")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(ElasticBeanstalkApplicationPropertiesArgs.builder()
///                 .arn("yautrhxbrmk")
///                 .awsAccountId("xrjnzzimbdnoqnbzpppxas")
///                 .awsProperties(AwsElasticBeanstalkApplicationPropertiesArgs.builder()
///                     .applicationName("lrxgvxoicfhhixebp")
///                     .description("a")
///                     .resourceLifecycleConfig(ApplicationResourceLifecycleConfigArgs.builder()
///                         .serviceRole("buibidzp")
///                         .versionLifecycleConfig(ApplicationVersionLifecycleConfigArgs.builder()
///                             .maxAgeRule(MaxAgeRuleArgs.builder()
///                                 .deleteSourceFromS3(true)
///                                 .enabled(true)
///                                 .maxAgeInDays(5)
///                                 .build())
///                             .maxCountRule(MaxCountRuleArgs.builder()
///                                 .deleteSourceFromS3(true)
///                                 .enabled(true)
///                                 .maxCount(14)
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .awsRegion("wxoiinzpqpanl")
///                 .awsSourceSchema("or")
///                 .awsTags(Map.of("key4469", "wyj"))
///                 .publicCloudConnectorsResourceId("echppxwpbpqnasbem")
///                 .publicCloudResourceName("nkyqyjvezjhltbpdnnxr")
///                 .build())
///             .resourceGroupName("rgelasticBeanstalkApplication")
///             .tags(Map.of("key8088", "wwicspxekbelocgqyxjqadlctp"))
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
/// const elasticBeanstalkApplication = new azure_native.awsconnector.ElasticBeanstalkApplication("elasticBeanstalkApplication", {
///     location: "iiedtydxzeyayiwanytnqwn",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "yautrhxbrmk",
///         awsAccountId: "xrjnzzimbdnoqnbzpppxas",
///         awsProperties: {
///             applicationName: "lrxgvxoicfhhixebp",
///             description: "a",
///             resourceLifecycleConfig: {
///                 serviceRole: "buibidzp",
///                 versionLifecycleConfig: {
///                     maxAgeRule: {
///                         deleteSourceFromS3: true,
///                         enabled: true,
///                         maxAgeInDays: 5,
///                     },
///                     maxCountRule: {
///                         deleteSourceFromS3: true,
///                         enabled: true,
///                         maxCount: 14,
///                     },
///                 },
///             },
///         },
///         awsRegion: "wxoiinzpqpanl",
///         awsSourceSchema: "or",
///         awsTags: {
///             key4469: "wyj",
///         },
///         publicCloudConnectorsResourceId: "echppxwpbpqnasbem",
///         publicCloudResourceName: "nkyqyjvezjhltbpdnnxr",
///     },
///     resourceGroupName: "rgelasticBeanstalkApplication",
///     tags: {
///         key8088: "wwicspxekbelocgqyxjqadlctp",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// elastic_beanstalk_application = azure_native.awsconnector.ElasticBeanstalkApplication("elasticBeanstalkApplication",
///     location="iiedtydxzeyayiwanytnqwn",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "yautrhxbrmk",
///         "aws_account_id": "xrjnzzimbdnoqnbzpppxas",
///         "aws_properties": {
///             "application_name": "lrxgvxoicfhhixebp",
///             "description": "a",
///             "resource_lifecycle_config": {
///                 "service_role": "buibidzp",
///                 "version_lifecycle_config": {
///                     "max_age_rule": {
///                         "delete_source_from_s3": True,
///                         "enabled": True,
///                         "max_age_in_days": 5,
///                     },
///                     "max_count_rule": {
///                         "delete_source_from_s3": True,
///                         "enabled": True,
///                         "max_count": 14,
///                     },
///                 },
///             },
///         },
///         "aws_region": "wxoiinzpqpanl",
///         "aws_source_schema": "or",
///         "aws_tags": {
///             "key4469": "wyj",
///         },
///         "public_cloud_connectors_resource_id": "echppxwpbpqnasbem",
///         "public_cloud_resource_name": "nkyqyjvezjhltbpdnnxr",
///     },
///     resource_group_name="rgelasticBeanstalkApplication",
///     tags={
///         "key8088": "wwicspxekbelocgqyxjqadlctp",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   elasticBeanstalkApplication:
///     type: azure-native:awsconnector:ElasticBeanstalkApplication
///     properties:
///       location: iiedtydxzeyayiwanytnqwn
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: yautrhxbrmk
///         awsAccountId: xrjnzzimbdnoqnbzpppxas
///         awsProperties:
///           applicationName: lrxgvxoicfhhixebp
///           description: a
///           resourceLifecycleConfig:
///             serviceRole: buibidzp
///             versionLifecycleConfig:
///               maxAgeRule:
///                 deleteSourceFromS3: true
///                 enabled: true
///                 maxAgeInDays: 5
///               maxCountRule:
///                 deleteSourceFromS3: true
///                 enabled: true
///                 maxCount: 14
///         awsRegion: wxoiinzpqpanl
///         awsSourceSchema: or
///         awsTags:
///           key4469: wyj
///         publicCloudConnectorsResourceId: echppxwpbpqnasbem
///         publicCloudResourceName: nkyqyjvezjhltbpdnnxr
///       resourceGroupName: rgelasticBeanstalkApplication
///       tags:
///         key8088: wwicspxekbelocgqyxjqadlctp
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
/// $ pulumi import azure-native:awsconnector:ElasticBeanstalkApplication zp /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/elasticBeanstalkApplications/{name}
/// ```
class ElasticBeanstalkApplication extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<ElasticBeanstalkApplicationPropertiesResponse>
  properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ElasticBeanstalkApplication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ElasticBeanstalkApplication]. {@macro pulumi_awsconnector_elastic_beanstalk_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ElasticBeanstalkApplication(
    String name, {
    ElasticBeanstalkApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:awsconnector:ElasticBeanstalkApplication',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ElasticBeanstalkApplicationPropertiesResponse>(
      'properties',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
