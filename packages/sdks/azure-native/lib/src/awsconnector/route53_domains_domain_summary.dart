import 'package:pulumi/pulumi.dart' as pulumi;
import 'route53_domains_domain_summary_args.dart';
import 'route53_domains_domain_summary_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Route53DomainsDomainSummaries_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var route53DomainsDomainSummary = new AzureNative.AwsConnector.Route53DomainsDomainSummary("route53DomainsDomainSummary", new()
///     {
///         Location = "yuzdde",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.Route53DomainsDomainSummaryPropertiesArgs
///         {
///             Arn = "wrwdlajgtnvqtehqwjewdams",
///             AwsAccountId = "vcuytljgzjlxqbqafyjyotrm",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsRoute53DomainsDomainSummaryPropertiesArgs
///             {
///                 AutoRenew = true,
///                 DomainName = "zvofrrcpsq",
///                 Expiry = "2024-10-08T03:54:06.143Z",
///                 TransferLock = true,
///             },
///             AwsRegion = "kfqnxegwwlydcxbrps",
///             AwsSourceSchema = "tmisqqzyhunvwrvagqsndin",
///             AwsTags =
///             {
///                 { "key3432", "uypuabeq" },
///             },
///             PublicCloudConnectorsResourceId = "xghzjqidhyawkmjgmcylp",
///             PublicCloudResourceName = "l",
///         },
///         ResourceGroupName = "rgroute53DomainsDomainSummary",
///         Tags =
///         {
///             { "key9394", "fo" },
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
/// 		_, err := awsconnector.NewRoute53DomainsDomainSummary(ctx, "route53DomainsDomainSummary", &awsconnector.Route53DomainsDomainSummaryArgs{
/// 			Location: pulumi.String("yuzdde"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.Route53DomainsDomainSummaryPropertiesArgs{
/// 				Arn:          pulumi.String("wrwdlajgtnvqtehqwjewdams"),
/// 				AwsAccountId: pulumi.String("vcuytljgzjlxqbqafyjyotrm"),
/// 				AwsProperties: &awsconnector.AwsRoute53DomainsDomainSummaryPropertiesArgs{
/// 					AutoRenew:    pulumi.Bool(true),
/// 					DomainName:   pulumi.String("zvofrrcpsq"),
/// 					Expiry:       pulumi.String("2024-10-08T03:54:06.143Z"),
/// 					TransferLock: pulumi.Bool(true),
/// 				},
/// 				AwsRegion:       pulumi.String("kfqnxegwwlydcxbrps"),
/// 				AwsSourceSchema: pulumi.String("tmisqqzyhunvwrvagqsndin"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key3432": pulumi.String("uypuabeq"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("xghzjqidhyawkmjgmcylp"),
/// 				PublicCloudResourceName:         pulumi.String("l"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgroute53DomainsDomainSummary"),
/// 			Tags: pulumi.StringMap{
/// 				"key9394": pulumi.String("fo"),
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
/// import com.pulumi.azurenative.awsconnector.Route53DomainsDomainSummary;
/// import com.pulumi.azurenative.awsconnector.Route53DomainsDomainSummaryArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.Route53DomainsDomainSummaryPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsRoute53DomainsDomainSummaryPropertiesArgs;
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
///         var route53DomainsDomainSummary = new Route53DomainsDomainSummary("route53DomainsDomainSummary", Route53DomainsDomainSummaryArgs.builder()
///             .location("yuzdde")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(Route53DomainsDomainSummaryPropertiesArgs.builder()
///                 .arn("wrwdlajgtnvqtehqwjewdams")
///                 .awsAccountId("vcuytljgzjlxqbqafyjyotrm")
///                 .awsProperties(AwsRoute53DomainsDomainSummaryPropertiesArgs.builder()
///                     .autoRenew(true)
///                     .domainName("zvofrrcpsq")
///                     .expiry("2024-10-08T03:54:06.143Z")
///                     .transferLock(true)
///                     .build())
///                 .awsRegion("kfqnxegwwlydcxbrps")
///                 .awsSourceSchema("tmisqqzyhunvwrvagqsndin")
///                 .awsTags(Map.of("key3432", "uypuabeq"))
///                 .publicCloudConnectorsResourceId("xghzjqidhyawkmjgmcylp")
///                 .publicCloudResourceName("l")
///                 .build())
///             .resourceGroupName("rgroute53DomainsDomainSummary")
///             .tags(Map.of("key9394", "fo"))
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
/// const route53DomainsDomainSummary = new azure_native.awsconnector.Route53DomainsDomainSummary("route53DomainsDomainSummary", {
///     location: "yuzdde",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "wrwdlajgtnvqtehqwjewdams",
///         awsAccountId: "vcuytljgzjlxqbqafyjyotrm",
///         awsProperties: {
///             autoRenew: true,
///             domainName: "zvofrrcpsq",
///             expiry: "2024-10-08T03:54:06.143Z",
///             transferLock: true,
///         },
///         awsRegion: "kfqnxegwwlydcxbrps",
///         awsSourceSchema: "tmisqqzyhunvwrvagqsndin",
///         awsTags: {
///             key3432: "uypuabeq",
///         },
///         publicCloudConnectorsResourceId: "xghzjqidhyawkmjgmcylp",
///         publicCloudResourceName: "l",
///     },
///     resourceGroupName: "rgroute53DomainsDomainSummary",
///     tags: {
///         key9394: "fo",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// route53_domains_domain_summary = azure_native.awsconnector.Route53DomainsDomainSummary("route53DomainsDomainSummary",
///     location="yuzdde",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "wrwdlajgtnvqtehqwjewdams",
///         "aws_account_id": "vcuytljgzjlxqbqafyjyotrm",
///         "aws_properties": {
///             "auto_renew": True,
///             "domain_name": "zvofrrcpsq",
///             "expiry": "2024-10-08T03:54:06.143Z",
///             "transfer_lock": True,
///         },
///         "aws_region": "kfqnxegwwlydcxbrps",
///         "aws_source_schema": "tmisqqzyhunvwrvagqsndin",
///         "aws_tags": {
///             "key3432": "uypuabeq",
///         },
///         "public_cloud_connectors_resource_id": "xghzjqidhyawkmjgmcylp",
///         "public_cloud_resource_name": "l",
///     },
///     resource_group_name="rgroute53DomainsDomainSummary",
///     tags={
///         "key9394": "fo",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   route53DomainsDomainSummary:
///     type: azure-native:awsconnector:Route53DomainsDomainSummary
///     properties:
///       location: yuzdde
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: wrwdlajgtnvqtehqwjewdams
///         awsAccountId: vcuytljgzjlxqbqafyjyotrm
///         awsProperties:
///           autoRenew: true
///           domainName: zvofrrcpsq
///           expiry: 2024-10-08T03:54:06.143Z
///           transferLock: true
///         awsRegion: kfqnxegwwlydcxbrps
///         awsSourceSchema: tmisqqzyhunvwrvagqsndin
///         awsTags:
///           key3432: uypuabeq
///         publicCloudConnectorsResourceId: xghzjqidhyawkmjgmcylp
///         publicCloudResourceName: l
///       resourceGroupName: rgroute53DomainsDomainSummary
///       tags:
///         key9394: fo
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
/// $ pulumi import azure-native:awsconnector:Route53DomainsDomainSummary koofgtnyevxtjghmvqxokuqxszg /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/route53DomainsDomainSummaries/{name}
/// ```
class Route53DomainsDomainSummary extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<Route53DomainsDomainSummaryPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Route53DomainsDomainSummary].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Route53DomainsDomainSummary]. {@macro pulumi_awsconnector_route53_domains_domain_summary_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Route53DomainsDomainSummary(
    String name, {
    Route53DomainsDomainSummaryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:Route53DomainsDomainSummary',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Route53DomainsDomainSummaryPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Route53DomainsDomainSummaryPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
