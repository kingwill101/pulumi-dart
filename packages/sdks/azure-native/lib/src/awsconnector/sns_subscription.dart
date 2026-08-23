import 'package:pulumi/pulumi.dart' as pulumi;
import 'sns_subscription_args.dart';
import 'sns_subscription_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SnsSubscriptions_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var snsSubscription = new AzureNative.AwsConnector.SnsSubscription("snsSubscription", new()
///     {
///         Location = "rteaofwy",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.SnsSubscriptionPropertiesArgs
///         {
///             Arn = "gnkqmddvoxalgskfwispx",
///             AwsAccountId = "jehvmisbfwgnpihgfrkslaee",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsSnsSubscriptionPropertiesArgs
///             {
///                 Endpoint = "ydbnfs",
///                 Owner = "vhrbkplsbvszhibsvziz",
///                 Protocol = "lcsebez",
///                 SubscriptionArn = "bis",
///                 TopicArn = "pdwndjemgtmwwnyvtjmveblsyq",
///             },
///             AwsRegion = "bkkaopxcwtfmxemxuilfhllcsixga",
///             AwsSourceSchema = "ikrkjsw",
///             AwsTags =
///             {
///                 { "key588", "kxpglwugby" },
///             },
///             PublicCloudConnectorsResourceId = "zokwlgincdzvjml",
///             PublicCloudResourceName = "si",
///         },
///         ResourceGroupName = "rgsnsSubscription",
///         Tags =
///         {
///             { "key2041", "mkbmrvjtiukeqzysrvoebyiqojttw" },
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
/// 		_, err := awsconnector.NewSnsSubscription(ctx, "snsSubscription", &awsconnector.SnsSubscriptionArgs{
/// 			Location: pulumi.String("rteaofwy"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.SnsSubscriptionPropertiesArgs{
/// 				Arn:          pulumi.String("gnkqmddvoxalgskfwispx"),
/// 				AwsAccountId: pulumi.String("jehvmisbfwgnpihgfrkslaee"),
/// 				AwsProperties: &awsconnector.AwsSnsSubscriptionPropertiesArgs{
/// 					Endpoint:        pulumi.String("ydbnfs"),
/// 					Owner:           pulumi.String("vhrbkplsbvszhibsvziz"),
/// 					Protocol:        pulumi.String("lcsebez"),
/// 					SubscriptionArn: pulumi.String("bis"),
/// 					TopicArn:        pulumi.String("pdwndjemgtmwwnyvtjmveblsyq"),
/// 				},
/// 				AwsRegion:       pulumi.String("bkkaopxcwtfmxemxuilfhllcsixga"),
/// 				AwsSourceSchema: pulumi.String("ikrkjsw"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key588": pulumi.String("kxpglwugby"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("zokwlgincdzvjml"),
/// 				PublicCloudResourceName:         pulumi.String("si"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgsnsSubscription"),
/// 			Tags: pulumi.StringMap{
/// 				"key2041": pulumi.String("mkbmrvjtiukeqzysrvoebyiqojttw"),
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
/// resource "azure-native_awsconnector_snssubscription" "snsSubscription" {
///   location = "rteaofwy"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "gnkqmddvoxalgskfwispx"
///     aws_account_id = "jehvmisbfwgnpihgfrkslaee"
///     aws_properties = {
///       endpoint         = "ydbnfs"
///       owner            = "vhrbkplsbvszhibsvziz"
///       protocol         = "lcsebez"
///       subscription_arn = "bis"
///       topic_arn        = "pdwndjemgtmwwnyvtjmveblsyq"
///     }
///     aws_region        = "bkkaopxcwtfmxemxuilfhllcsixga"
///     aws_source_schema = "ikrkjsw"
///     aws_tags = {
///       "key588" = "kxpglwugby"
///     }
///     public_cloud_connectors_resource_id = "zokwlgincdzvjml"
///     public_cloud_resource_name          = "si"
///   }
///   resource_group_name = "rgsnsSubscription"
///   tags = {
///     "key2041" = "mkbmrvjtiukeqzysrvoebyiqojttw"
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
/// import com.pulumi.azurenative.awsconnector.SnsSubscription;
/// import com.pulumi.azurenative.awsconnector.SnsSubscriptionArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.SnsSubscriptionPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsSnsSubscriptionPropertiesArgs;
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
///         var snsSubscription = new SnsSubscription("snsSubscription", SnsSubscriptionArgs.builder()
///             .location("rteaofwy")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(SnsSubscriptionPropertiesArgs.builder()
///                 .arn("gnkqmddvoxalgskfwispx")
///                 .awsAccountId("jehvmisbfwgnpihgfrkslaee")
///                 .awsProperties(AwsSnsSubscriptionPropertiesArgs.builder()
///                     .endpoint("ydbnfs")
///                     .owner("vhrbkplsbvszhibsvziz")
///                     .protocol("lcsebez")
///                     .subscriptionArn("bis")
///                     .topicArn("pdwndjemgtmwwnyvtjmveblsyq")
///                     .build())
///                 .awsRegion("bkkaopxcwtfmxemxuilfhllcsixga")
///                 .awsSourceSchema("ikrkjsw")
///                 .awsTags(Map.of("key588", "kxpglwugby"))
///                 .publicCloudConnectorsResourceId("zokwlgincdzvjml")
///                 .publicCloudResourceName("si")
///                 .build())
///             .resourceGroupName("rgsnsSubscription")
///             .tags(Map.of("key2041", "mkbmrvjtiukeqzysrvoebyiqojttw"))
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
/// const snsSubscription = new azure_native.awsconnector.SnsSubscription("snsSubscription", {
///     location: "rteaofwy",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "gnkqmddvoxalgskfwispx",
///         awsAccountId: "jehvmisbfwgnpihgfrkslaee",
///         awsProperties: {
///             endpoint: "ydbnfs",
///             owner: "vhrbkplsbvszhibsvziz",
///             protocol: "lcsebez",
///             subscriptionArn: "bis",
///             topicArn: "pdwndjemgtmwwnyvtjmveblsyq",
///         },
///         awsRegion: "bkkaopxcwtfmxemxuilfhllcsixga",
///         awsSourceSchema: "ikrkjsw",
///         awsTags: {
///             key588: "kxpglwugby",
///         },
///         publicCloudConnectorsResourceId: "zokwlgincdzvjml",
///         publicCloudResourceName: "si",
///     },
///     resourceGroupName: "rgsnsSubscription",
///     tags: {
///         key2041: "mkbmrvjtiukeqzysrvoebyiqojttw",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sns_subscription = azure_native.awsconnector.SnsSubscription("snsSubscription",
///     location="rteaofwy",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "gnkqmddvoxalgskfwispx",
///         "aws_account_id": "jehvmisbfwgnpihgfrkslaee",
///         "aws_properties": {
///             "endpoint": "ydbnfs",
///             "owner": "vhrbkplsbvszhibsvziz",
///             "protocol": "lcsebez",
///             "subscription_arn": "bis",
///             "topic_arn": "pdwndjemgtmwwnyvtjmveblsyq",
///         },
///         "aws_region": "bkkaopxcwtfmxemxuilfhllcsixga",
///         "aws_source_schema": "ikrkjsw",
///         "aws_tags": {
///             "key588": "kxpglwugby",
///         },
///         "public_cloud_connectors_resource_id": "zokwlgincdzvjml",
///         "public_cloud_resource_name": "si",
///     },
///     resource_group_name="rgsnsSubscription",
///     tags={
///         "key2041": "mkbmrvjtiukeqzysrvoebyiqojttw",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   snsSubscription:
///     type: azure-native:awsconnector:SnsSubscription
///     properties:
///       location: rteaofwy
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: gnkqmddvoxalgskfwispx
///         awsAccountId: jehvmisbfwgnpihgfrkslaee
///         awsProperties:
///           endpoint: ydbnfs
///           owner: vhrbkplsbvszhibsvziz
///           protocol: lcsebez
///           subscriptionArn: bis
///           topicArn: pdwndjemgtmwwnyvtjmveblsyq
///         awsRegion: bkkaopxcwtfmxemxuilfhllcsixga
///         awsSourceSchema: ikrkjsw
///         awsTags:
///           key588: kxpglwugby
///         publicCloudConnectorsResourceId: zokwlgincdzvjml
///         publicCloudResourceName: si
///       resourceGroupName: rgsnsSubscription
///       tags:
///         key2041: mkbmrvjtiukeqzysrvoebyiqojttw
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
/// $ pulumi import azure-native:awsconnector:SnsSubscription pltgggiqpp /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/snsSubscriptions/{name}
/// ```
class SnsSubscription extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<SnsSubscriptionPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SnsSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SnsSubscription]. {@macro pulumi_awsconnector_sns_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SnsSubscription(
    String name, {
    SnsSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:SnsSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SnsSubscriptionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnsSubscriptionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
