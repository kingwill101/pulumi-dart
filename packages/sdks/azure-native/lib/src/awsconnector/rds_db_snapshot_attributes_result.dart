import 'package:pulumi/pulumi.dart' as pulumi;
import 'rds_db_snapshot_attributes_result_args.dart';
import 'rds_dbsnapshot_attributes_result_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RdsDbSnapshotAttributesResults_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var rdsDbSnapshotAttributesResult = new AzureNative.AwsConnector.RdsDbSnapshotAttributesResult("rdsDbSnapshotAttributesResult", new()
///     {
///         Location = "luzcqukssqazokzghltlzp",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.RdsDBSnapshotAttributesResultPropertiesArgs
///         {
///             Arn = "wctkioaluqun",
///             AwsAccountId = "za",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsRdsDBSnapshotAttributesResultPropertiesArgs
///             {
///                 DbSnapshotAttributes = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.DBSnapshotAttributeArgs
///                     {
///                         AttributeName = "yszcujemf",
///                         AttributeValues = new[]
///                         {
///                             "cffn",
///                         },
///                     },
///                 },
///                 DbSnapshotIdentifier = "hgeztauvapideyaajrbafqyup",
///             },
///             AwsRegion = "ndsijffpilnosnrldocuqrlxitjpv",
///             AwsSourceSchema = "w",
///             AwsTags =
///             {
///                 { "key3566", "heyaatumbeog" },
///             },
///             PublicCloudConnectorsResourceId = "bmzbcvocakxlkqxmewfdruhn",
///             PublicCloudResourceName = "kuhhovfpzvgapi",
///         },
///         ResourceGroupName = "rgrdsDBSnapshotAttributesResult",
///         Tags =
///         {
///             { "key3873", "mmtaqjm" },
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
/// 		_, err := awsconnector.NewRdsDbSnapshotAttributesResult(ctx, "rdsDbSnapshotAttributesResult", &awsconnector.RdsDbSnapshotAttributesResultArgs{
/// 			Location: pulumi.String("luzcqukssqazokzghltlzp"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.RdsDBSnapshotAttributesResultPropertiesArgs{
/// 				Arn:          pulumi.String("wctkioaluqun"),
/// 				AwsAccountId: pulumi.String("za"),
/// 				AwsProperties: &awsconnector.AwsRdsDBSnapshotAttributesResultPropertiesArgs{
/// 					DbSnapshotAttributes: awsconnector.DBSnapshotAttributeArray{
/// 						&awsconnector.DBSnapshotAttributeArgs{
/// 							AttributeName: pulumi.String("yszcujemf"),
/// 							AttributeValues: pulumi.StringArray{
/// 								pulumi.String("cffn"),
/// 							},
/// 						},
/// 					},
/// 					DbSnapshotIdentifier: pulumi.String("hgeztauvapideyaajrbafqyup"),
/// 				},
/// 				AwsRegion:       pulumi.String("ndsijffpilnosnrldocuqrlxitjpv"),
/// 				AwsSourceSchema: pulumi.String("w"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key3566": pulumi.String("heyaatumbeog"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("bmzbcvocakxlkqxmewfdruhn"),
/// 				PublicCloudResourceName:         pulumi.String("kuhhovfpzvgapi"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgrdsDBSnapshotAttributesResult"),
/// 			Tags: pulumi.StringMap{
/// 				"key3873": pulumi.String("mmtaqjm"),
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
/// import com.pulumi.azurenative.awsconnector.RdsDbSnapshotAttributesResult;
/// import com.pulumi.azurenative.awsconnector.RdsDbSnapshotAttributesResultArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.RdsDBSnapshotAttributesResultPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsRdsDBSnapshotAttributesResultPropertiesArgs;
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
///         var rdsDbSnapshotAttributesResult = new RdsDbSnapshotAttributesResult("rdsDbSnapshotAttributesResult", RdsDbSnapshotAttributesResultArgs.builder()
///             .location("luzcqukssqazokzghltlzp")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(RdsDBSnapshotAttributesResultPropertiesArgs.builder()
///                 .arn("wctkioaluqun")
///                 .awsAccountId("za")
///                 .awsProperties(AwsRdsDBSnapshotAttributesResultPropertiesArgs.builder()
///                     .dbSnapshotAttributes(DBSnapshotAttributeArgs.builder()
///                         .attributeName("yszcujemf")
///                         .attributeValues("cffn")
///                         .build())
///                     .dbSnapshotIdentifier("hgeztauvapideyaajrbafqyup")
///                     .build())
///                 .awsRegion("ndsijffpilnosnrldocuqrlxitjpv")
///                 .awsSourceSchema("w")
///                 .awsTags(Map.of("key3566", "heyaatumbeog"))
///                 .publicCloudConnectorsResourceId("bmzbcvocakxlkqxmewfdruhn")
///                 .publicCloudResourceName("kuhhovfpzvgapi")
///                 .build())
///             .resourceGroupName("rgrdsDBSnapshotAttributesResult")
///             .tags(Map.of("key3873", "mmtaqjm"))
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
/// const rdsDbSnapshotAttributesResult = new azure_native.awsconnector.RdsDbSnapshotAttributesResult("rdsDbSnapshotAttributesResult", {
///     location: "luzcqukssqazokzghltlzp",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "wctkioaluqun",
///         awsAccountId: "za",
///         awsProperties: {
///             dbSnapshotAttributes: [{
///                 attributeName: "yszcujemf",
///                 attributeValues: ["cffn"],
///             }],
///             dbSnapshotIdentifier: "hgeztauvapideyaajrbafqyup",
///         },
///         awsRegion: "ndsijffpilnosnrldocuqrlxitjpv",
///         awsSourceSchema: "w",
///         awsTags: {
///             key3566: "heyaatumbeog",
///         },
///         publicCloudConnectorsResourceId: "bmzbcvocakxlkqxmewfdruhn",
///         publicCloudResourceName: "kuhhovfpzvgapi",
///     },
///     resourceGroupName: "rgrdsDBSnapshotAttributesResult",
///     tags: {
///         key3873: "mmtaqjm",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// rds_db_snapshot_attributes_result = azure_native.awsconnector.RdsDbSnapshotAttributesResult("rdsDbSnapshotAttributesResult",
///     location="luzcqukssqazokzghltlzp",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "wctkioaluqun",
///         "aws_account_id": "za",
///         "aws_properties": {
///             "db_snapshot_attributes": [{
///                 "attribute_name": "yszcujemf",
///                 "attribute_values": ["cffn"],
///             }],
///             "db_snapshot_identifier": "hgeztauvapideyaajrbafqyup",
///         },
///         "aws_region": "ndsijffpilnosnrldocuqrlxitjpv",
///         "aws_source_schema": "w",
///         "aws_tags": {
///             "key3566": "heyaatumbeog",
///         },
///         "public_cloud_connectors_resource_id": "bmzbcvocakxlkqxmewfdruhn",
///         "public_cloud_resource_name": "kuhhovfpzvgapi",
///     },
///     resource_group_name="rgrdsDBSnapshotAttributesResult",
///     tags={
///         "key3873": "mmtaqjm",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   rdsDbSnapshotAttributesResult:
///     type: azure-native:awsconnector:RdsDbSnapshotAttributesResult
///     properties:
///       location: luzcqukssqazokzghltlzp
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: wctkioaluqun
///         awsAccountId: za
///         awsProperties:
///           dbSnapshotAttributes:
///             - attributeName: yszcujemf
///               attributeValues:
///                 - cffn
///           dbSnapshotIdentifier: hgeztauvapideyaajrbafqyup
///         awsRegion: ndsijffpilnosnrldocuqrlxitjpv
///         awsSourceSchema: w
///         awsTags:
///           key3566: heyaatumbeog
///         publicCloudConnectorsResourceId: bmzbcvocakxlkqxmewfdruhn
///         publicCloudResourceName: kuhhovfpzvgapi
///       resourceGroupName: rgrdsDBSnapshotAttributesResult
///       tags:
///         key3873: mmtaqjm
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
/// $ pulumi import azure-native:awsconnector:RdsDbSnapshotAttributesResult hlddyy /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/rdsDBSnapshotAttributesResults/{name}
/// ```
class RdsDbSnapshotAttributesResult extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<RdsDBSnapshotAttributesResultPropertiesResponse>
  properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RdsDbSnapshotAttributesResult].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RdsDbSnapshotAttributesResult]. {@macro pulumi_awsconnector_rds_db_snapshot_attributes_result_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RdsDbSnapshotAttributesResult(
    String name, {
    RdsDbSnapshotAttributesResultArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:awsconnector:RdsDbSnapshotAttributesResult',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties =
        registerOutput<RdsDBSnapshotAttributesResultPropertiesResponse>(
          'properties',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return RdsDBSnapshotAttributesResultPropertiesResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
