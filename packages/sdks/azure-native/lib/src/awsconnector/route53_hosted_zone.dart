import 'package:pulumi/pulumi.dart' as pulumi;
import 'route53_hosted_zone_args.dart';
import 'route53_hosted_zone_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Route53HostedZones_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var route53HostedZone = new AzureNative.AwsConnector.Route53HostedZone("route53HostedZone", new()
///     {
///         Location = "fohhkmxasqynkojwigmrzyhydfpdrd",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.Route53HostedZonePropertiesArgs
///         {
///             Arn = "vohjyzjtvd",
///             AwsAccountId = "rcvmulzibfebvzgooms",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsRoute53HostedZonePropertiesArgs
///             {
///                 HostedZoneConfig = new AzureNative.AwsConnector.Inputs.HostedZoneConfigArgs
///                 {
///                     Comment = "vanhfd",
///                 },
///                 HostedZoneTags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.HostedZoneTagArgs
///                     {
///                         Key = "zvuvccszzjwkmfojvfbtxuchpvxcy",
///                         Value = "ptsrmgayfujrfvjwyxoi",
///                     },
///                 },
///                 Id = "dwezucqqxsyhynebuyflyc",
///                 Name = "koqhelfps",
///                 NameServers = new[]
///                 {
///                     "qizlbjltglpbdpxcsriu",
///                 },
///                 QueryLoggingConfig = new AzureNative.AwsConnector.Inputs.QueryLoggingConfigArgs
///                 {
///                     CloudWatchLogsLogGroupArn = "magynetpgpdveymgnonjicfoxzxfp",
///                 },
///                 VpCs = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.VPCArgs
///                     {
///                         VpcId = "nxfxsb",
///                         VpcRegion = "y",
///                     },
///                 },
///             },
///             AwsRegion = "nthjzqxrrqsducmjudhrcdiqioy",
///             AwsSourceSchema = "a",
///             AwsTags =
///             {
///                 { "key625", "we" },
///             },
///             PublicCloudConnectorsResourceId = "qugbrritrvssrcwtib",
///             PublicCloudResourceName = "edufxpyvryjxbnwulifcrwuezu",
///         },
///         ResourceGroupName = "rgroute53HostedZone",
///         Tags =
///         {
///             { "key8226", "nxab" },
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
/// 		_, err := awsconnector.NewRoute53HostedZone(ctx, "route53HostedZone", &awsconnector.Route53HostedZoneArgs{
/// 			Location: pulumi.String("fohhkmxasqynkojwigmrzyhydfpdrd"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.Route53HostedZonePropertiesArgs{
/// 				Arn:          pulumi.String("vohjyzjtvd"),
/// 				AwsAccountId: pulumi.String("rcvmulzibfebvzgooms"),
/// 				AwsProperties: &awsconnector.AwsRoute53HostedZonePropertiesArgs{
/// 					HostedZoneConfig: &awsconnector.HostedZoneConfigArgs{
/// 						Comment: pulumi.String("vanhfd"),
/// 					},
/// 					HostedZoneTags: awsconnector.HostedZoneTagArray{
/// 						&awsconnector.HostedZoneTagArgs{
/// 							Key:   pulumi.String("zvuvccszzjwkmfojvfbtxuchpvxcy"),
/// 							Value: pulumi.String("ptsrmgayfujrfvjwyxoi"),
/// 						},
/// 					},
/// 					Id:   pulumi.String("dwezucqqxsyhynebuyflyc"),
/// 					Name: pulumi.String("koqhelfps"),
/// 					NameServers: pulumi.StringArray{
/// 						pulumi.String("qizlbjltglpbdpxcsriu"),
/// 					},
/// 					QueryLoggingConfig: &awsconnector.QueryLoggingConfigArgs{
/// 						CloudWatchLogsLogGroupArn: pulumi.String("magynetpgpdveymgnonjicfoxzxfp"),
/// 					},
/// 					VpCs: awsconnector.VPCArray{
/// 						&awsconnector.VPCArgs{
/// 							VpcId:     pulumi.String("nxfxsb"),
/// 							VpcRegion: pulumi.String("y"),
/// 						},
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("nthjzqxrrqsducmjudhrcdiqioy"),
/// 				AwsSourceSchema: pulumi.String("a"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key625": pulumi.String("we"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("qugbrritrvssrcwtib"),
/// 				PublicCloudResourceName:         pulumi.String("edufxpyvryjxbnwulifcrwuezu"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgroute53HostedZone"),
/// 			Tags: pulumi.StringMap{
/// 				"key8226": pulumi.String("nxab"),
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
/// resource "azure-native_awsconnector_route53hostedzone" "route53HostedZone" {
///   location = "fohhkmxasqynkojwigmrzyhydfpdrd"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "vohjyzjtvd"
///     aws_account_id = "rcvmulzibfebvzgooms"
///     aws_properties = {
///       hosted_zone_config = {
///         comment = "vanhfd"
///       }
///       hosted_zone_tags = [{
///         "key"   = "zvuvccszzjwkmfojvfbtxuchpvxcy"
///         "value" = "ptsrmgayfujrfvjwyxoi"
///       }]
///       id           = "dwezucqqxsyhynebuyflyc"
///       name         = "koqhelfps"
///       name_servers = ["qizlbjltglpbdpxcsriu"]
///       query_logging_config = {
///         cloud_watch_logs_log_group_arn = "magynetpgpdveymgnonjicfoxzxfp"
///       }
///       vp_cs = [{
///         "vpcId"     = "nxfxsb"
///         "vpcRegion" = "y"
///       }]
///     }
///     aws_region        = "nthjzqxrrqsducmjudhrcdiqioy"
///     aws_source_schema = "a"
///     aws_tags = {
///       "key625" = "we"
///     }
///     public_cloud_connectors_resource_id = "qugbrritrvssrcwtib"
///     public_cloud_resource_name          = "edufxpyvryjxbnwulifcrwuezu"
///   }
///   resource_group_name = "rgroute53HostedZone"
///   tags = {
///     "key8226" = "nxab"
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
/// import com.pulumi.azurenative.awsconnector.Route53HostedZone;
/// import com.pulumi.azurenative.awsconnector.Route53HostedZoneArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.Route53HostedZonePropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsRoute53HostedZonePropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.HostedZoneConfigArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.QueryLoggingConfigArgs;
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
///         var route53HostedZone = new Route53HostedZone("route53HostedZone", Route53HostedZoneArgs.builder()
///             .location("fohhkmxasqynkojwigmrzyhydfpdrd")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(Route53HostedZonePropertiesArgs.builder()
///                 .arn("vohjyzjtvd")
///                 .awsAccountId("rcvmulzibfebvzgooms")
///                 .awsProperties(AwsRoute53HostedZonePropertiesArgs.builder()
///                     .hostedZoneConfig(HostedZoneConfigArgs.builder()
///                         .comment("vanhfd")
///                         .build())
///                     .hostedZoneTags(HostedZoneTagArgs.builder()
///                         .key("zvuvccszzjwkmfojvfbtxuchpvxcy")
///                         .value("ptsrmgayfujrfvjwyxoi")
///                         .build())
///                     .id("dwezucqqxsyhynebuyflyc")
///                     .name("koqhelfps")
///                     .nameServers("qizlbjltglpbdpxcsriu")
///                     .queryLoggingConfig(QueryLoggingConfigArgs.builder()
///                         .cloudWatchLogsLogGroupArn("magynetpgpdveymgnonjicfoxzxfp")
///                         .build())
///                     .vpCs(VPCArgs.builder()
///                         .vpcId("nxfxsb")
///                         .vpcRegion("y")
///                         .build())
///                     .build())
///                 .awsRegion("nthjzqxrrqsducmjudhrcdiqioy")
///                 .awsSourceSchema("a")
///                 .awsTags(Map.of("key625", "we"))
///                 .publicCloudConnectorsResourceId("qugbrritrvssrcwtib")
///                 .publicCloudResourceName("edufxpyvryjxbnwulifcrwuezu")
///                 .build())
///             .resourceGroupName("rgroute53HostedZone")
///             .tags(Map.of("key8226", "nxab"))
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
/// const route53HostedZone = new azure_native.awsconnector.Route53HostedZone("route53HostedZone", {
///     location: "fohhkmxasqynkojwigmrzyhydfpdrd",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "vohjyzjtvd",
///         awsAccountId: "rcvmulzibfebvzgooms",
///         awsProperties: {
///             hostedZoneConfig: {
///                 comment: "vanhfd",
///             },
///             hostedZoneTags: [{
///                 key: "zvuvccszzjwkmfojvfbtxuchpvxcy",
///                 value: "ptsrmgayfujrfvjwyxoi",
///             }],
///             id: "dwezucqqxsyhynebuyflyc",
///             name: "koqhelfps",
///             nameServers: ["qizlbjltglpbdpxcsriu"],
///             queryLoggingConfig: {
///                 cloudWatchLogsLogGroupArn: "magynetpgpdveymgnonjicfoxzxfp",
///             },
///             vpCs: [{
///                 vpcId: "nxfxsb",
///                 vpcRegion: "y",
///             }],
///         },
///         awsRegion: "nthjzqxrrqsducmjudhrcdiqioy",
///         awsSourceSchema: "a",
///         awsTags: {
///             key625: "we",
///         },
///         publicCloudConnectorsResourceId: "qugbrritrvssrcwtib",
///         publicCloudResourceName: "edufxpyvryjxbnwulifcrwuezu",
///     },
///     resourceGroupName: "rgroute53HostedZone",
///     tags: {
///         key8226: "nxab",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// route53_hosted_zone = azure_native.awsconnector.Route53HostedZone("route53HostedZone",
///     location="fohhkmxasqynkojwigmrzyhydfpdrd",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "vohjyzjtvd",
///         "aws_account_id": "rcvmulzibfebvzgooms",
///         "aws_properties": {
///             "hosted_zone_config": {
///                 "comment": "vanhfd",
///             },
///             "hosted_zone_tags": [{
///                 "key": "zvuvccszzjwkmfojvfbtxuchpvxcy",
///                 "value": "ptsrmgayfujrfvjwyxoi",
///             }],
///             "id": "dwezucqqxsyhynebuyflyc",
///             "name": "koqhelfps",
///             "name_servers": ["qizlbjltglpbdpxcsriu"],
///             "query_logging_config": {
///                 "cloud_watch_logs_log_group_arn": "magynetpgpdveymgnonjicfoxzxfp",
///             },
///             "vp_cs": [{
///                 "vpc_id": "nxfxsb",
///                 "vpc_region": "y",
///             }],
///         },
///         "aws_region": "nthjzqxrrqsducmjudhrcdiqioy",
///         "aws_source_schema": "a",
///         "aws_tags": {
///             "key625": "we",
///         },
///         "public_cloud_connectors_resource_id": "qugbrritrvssrcwtib",
///         "public_cloud_resource_name": "edufxpyvryjxbnwulifcrwuezu",
///     },
///     resource_group_name="rgroute53HostedZone",
///     tags={
///         "key8226": "nxab",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   route53HostedZone:
///     type: azure-native:awsconnector:Route53HostedZone
///     properties:
///       location: fohhkmxasqynkojwigmrzyhydfpdrd
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: vohjyzjtvd
///         awsAccountId: rcvmulzibfebvzgooms
///         awsProperties:
///           hostedZoneConfig:
///             comment: vanhfd
///           hostedZoneTags:
///             - key: zvuvccszzjwkmfojvfbtxuchpvxcy
///               value: ptsrmgayfujrfvjwyxoi
///           id: dwezucqqxsyhynebuyflyc
///           name: koqhelfps
///           nameServers:
///             - qizlbjltglpbdpxcsriu
///           queryLoggingConfig:
///             cloudWatchLogsLogGroupArn: magynetpgpdveymgnonjicfoxzxfp
///           vpCs:
///             - vpcId: nxfxsb
///               vpcRegion: y
///         awsRegion: nthjzqxrrqsducmjudhrcdiqioy
///         awsSourceSchema: a
///         awsTags:
///           key625: we
///         publicCloudConnectorsResourceId: qugbrritrvssrcwtib
///         publicCloudResourceName: edufxpyvryjxbnwulifcrwuezu
///       resourceGroupName: rgroute53HostedZone
///       tags:
///         key8226: nxab
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
/// $ pulumi import azure-native:awsconnector:Route53HostedZone p /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/route53HostedZones/{name}
/// ```
class Route53HostedZone extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<Route53HostedZonePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Route53HostedZone].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Route53HostedZone]. {@macro pulumi_awsconnector_route53_hosted_zone_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Route53HostedZone(
    String name, {
    Route53HostedZoneArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:Route53HostedZone',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Route53HostedZonePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Route53HostedZonePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
