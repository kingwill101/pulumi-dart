import 'package:pulumi/pulumi.dart' as pulumi;
import 's3_access_control_policy_args.dart';
import 's3_access_control_policy_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### S3AccessControlPolicies_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var s3AccessControlPolicy = new AzureNative.AwsConnector.S3AccessControlPolicy("s3AccessControlPolicy", new()
///     {
///         Location = "ngeydiaovh",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.S3AccessControlPolicyPropertiesArgs
///         {
///             Arn = "djqvocoytmrzmkkinwskicuebi",
///             AwsAccountId = "vdzgygqqjlohlqcrnidexbnxccnqjn",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsS3AccessControlPolicyPropertiesArgs
///             {
///                 Grants = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.GrantArgs
///                     {
///                         Grantee = new AzureNative.AwsConnector.Inputs.GranteeArgs
///                         {
///                             DisplayName = "xlmygaefkokdbvi",
///                             EmailAddress = "crwbnkkz",
///                             Id = "uyhsprjfhvowaugesuopxt",
///                             Type = new AzureNative.AwsConnector.Inputs.TypeEnumValueArgs
///                             {
///                                 Value = "AmazonCustomerByEmail",
///                             },
///                             Uri = "yzwxkelbvsi",
///                         },
///                         Permission = new AzureNative.AwsConnector.Inputs.PermissionEnumValueArgs
///                         {
///                             Value = AzureNative.AwsConnector.Permission.FULL_CONTROL,
///                         },
///                     },
///                 },
///                 Owner = new AzureNative.AwsConnector.Inputs.OwnerArgs
///                 {
///                     DisplayName = "klnmzlbodf",
///                     Id = "slxuomdlbhuf",
///                 },
///             },
///             AwsRegion = "ae",
///             AwsSourceSchema = "maxtroudgkwcrkhofvwigmhihju",
///             AwsTags =
///             {
///                 { "key2280", "zerubhrridce" },
///             },
///             PublicCloudConnectorsResourceId = "tpjrczwnhnoxoddvflvntzvw",
///             PublicCloudResourceName = "hytdmduqsymgluymquc",
///         },
///         ResourceGroupName = "rgs3AccessControlPolicy",
///         Tags =
///         {
///             { "key3435", "rhijygbnmiejai" },
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
/// 		_, err := awsconnector.NewS3AccessControlPolicy(ctx, "s3AccessControlPolicy", &awsconnector.S3AccessControlPolicyArgs{
/// 			Location: pulumi.String("ngeydiaovh"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.S3AccessControlPolicyPropertiesArgs{
/// 				Arn:          pulumi.String("djqvocoytmrzmkkinwskicuebi"),
/// 				AwsAccountId: pulumi.String("vdzgygqqjlohlqcrnidexbnxccnqjn"),
/// 				AwsProperties: &awsconnector.AwsS3AccessControlPolicyPropertiesArgs{
/// 					Grants: awsconnector.GrantArray{
/// 						&awsconnector.GrantArgs{
/// 							Grantee: &awsconnector.GranteeArgs{
/// 								DisplayName:  pulumi.String("xlmygaefkokdbvi"),
/// 								EmailAddress: pulumi.String("crwbnkkz"),
/// 								Id:           pulumi.String("uyhsprjfhvowaugesuopxt"),
/// 								Type: &awsconnector.TypeEnumValueArgs{
/// 									Value: pulumi.String("AmazonCustomerByEmail"),
/// 								},
/// 								Uri: pulumi.String("yzwxkelbvsi"),
/// 							},
/// 							Permission: &awsconnector.PermissionEnumValueArgs{
/// 								Value: pulumi.String(awsconnector.Permission_FULL_CONTROL),
/// 							},
/// 						},
/// 					},
/// 					Owner: &awsconnector.OwnerArgs{
/// 						DisplayName: pulumi.String("klnmzlbodf"),
/// 						Id:          pulumi.String("slxuomdlbhuf"),
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("ae"),
/// 				AwsSourceSchema: pulumi.String("maxtroudgkwcrkhofvwigmhihju"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key2280": pulumi.String("zerubhrridce"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("tpjrczwnhnoxoddvflvntzvw"),
/// 				PublicCloudResourceName:         pulumi.String("hytdmduqsymgluymquc"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgs3AccessControlPolicy"),
/// 			Tags: pulumi.StringMap{
/// 				"key3435": pulumi.String("rhijygbnmiejai"),
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
/// import com.pulumi.azurenative.awsconnector.S3AccessControlPolicy;
/// import com.pulumi.azurenative.awsconnector.S3AccessControlPolicyArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.S3AccessControlPolicyPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsS3AccessControlPolicyPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.OwnerArgs;
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
///         var s3AccessControlPolicy = new S3AccessControlPolicy("s3AccessControlPolicy", S3AccessControlPolicyArgs.builder()
///             .location("ngeydiaovh")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(S3AccessControlPolicyPropertiesArgs.builder()
///                 .arn("djqvocoytmrzmkkinwskicuebi")
///                 .awsAccountId("vdzgygqqjlohlqcrnidexbnxccnqjn")
///                 .awsProperties(AwsS3AccessControlPolicyPropertiesArgs.builder()
///                     .grants(GrantArgs.builder()
///                         .grantee(GranteeArgs.builder()
///                             .displayName("xlmygaefkokdbvi")
///                             .emailAddress("crwbnkkz")
///                             .id("uyhsprjfhvowaugesuopxt")
///                             .type(TypeEnumValueArgs.builder()
///                                 .value("AmazonCustomerByEmail")
///                                 .build())
///                             .uri("yzwxkelbvsi")
///                             .build())
///                         .permission(PermissionEnumValueArgs.builder()
///                             .value("FULL_CONTROL")
///                             .build())
///                         .build())
///                     .owner(OwnerArgs.builder()
///                         .displayName("klnmzlbodf")
///                         .id("slxuomdlbhuf")
///                         .build())
///                     .build())
///                 .awsRegion("ae")
///                 .awsSourceSchema("maxtroudgkwcrkhofvwigmhihju")
///                 .awsTags(Map.of("key2280", "zerubhrridce"))
///                 .publicCloudConnectorsResourceId("tpjrczwnhnoxoddvflvntzvw")
///                 .publicCloudResourceName("hytdmduqsymgluymquc")
///                 .build())
///             .resourceGroupName("rgs3AccessControlPolicy")
///             .tags(Map.of("key3435", "rhijygbnmiejai"))
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
/// const s3AccessControlPolicy = new azure_native.awsconnector.S3AccessControlPolicy("s3AccessControlPolicy", {
///     location: "ngeydiaovh",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "djqvocoytmrzmkkinwskicuebi",
///         awsAccountId: "vdzgygqqjlohlqcrnidexbnxccnqjn",
///         awsProperties: {
///             grants: [{
///                 grantee: {
///                     displayName: "xlmygaefkokdbvi",
///                     emailAddress: "crwbnkkz",
///                     id: "uyhsprjfhvowaugesuopxt",
///                     type: {
///                         value: "AmazonCustomerByEmail",
///                     },
///                     uri: "yzwxkelbvsi",
///                 },
///                 permission: {
///                     value: azure_native.awsconnector.Permission.FULL_CONTROL,
///                 },
///             }],
///             owner: {
///                 displayName: "klnmzlbodf",
///                 id: "slxuomdlbhuf",
///             },
///         },
///         awsRegion: "ae",
///         awsSourceSchema: "maxtroudgkwcrkhofvwigmhihju",
///         awsTags: {
///             key2280: "zerubhrridce",
///         },
///         publicCloudConnectorsResourceId: "tpjrczwnhnoxoddvflvntzvw",
///         publicCloudResourceName: "hytdmduqsymgluymquc",
///     },
///     resourceGroupName: "rgs3AccessControlPolicy",
///     tags: {
///         key3435: "rhijygbnmiejai",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// s3_access_control_policy = azure_native.awsconnector.S3AccessControlPolicy("s3AccessControlPolicy",
///     location="ngeydiaovh",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "djqvocoytmrzmkkinwskicuebi",
///         "aws_account_id": "vdzgygqqjlohlqcrnidexbnxccnqjn",
///         "aws_properties": {
///             "grants": [{
///                 "grantee": {
///                     "display_name": "xlmygaefkokdbvi",
///                     "email_address": "crwbnkkz",
///                     "id": "uyhsprjfhvowaugesuopxt",
///                     "type": {
///                         "value": "AmazonCustomerByEmail",
///                     },
///                     "uri": "yzwxkelbvsi",
///                 },
///                 "permission": {
///                     "value": azure_native.awsconnector.Permission.FUL_L_CONTROL,
///                 },
///             }],
///             "owner": {
///                 "display_name": "klnmzlbodf",
///                 "id": "slxuomdlbhuf",
///             },
///         },
///         "aws_region": "ae",
///         "aws_source_schema": "maxtroudgkwcrkhofvwigmhihju",
///         "aws_tags": {
///             "key2280": "zerubhrridce",
///         },
///         "public_cloud_connectors_resource_id": "tpjrczwnhnoxoddvflvntzvw",
///         "public_cloud_resource_name": "hytdmduqsymgluymquc",
///     },
///     resource_group_name="rgs3AccessControlPolicy",
///     tags={
///         "key3435": "rhijygbnmiejai",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   s3AccessControlPolicy:
///     type: azure-native:awsconnector:S3AccessControlPolicy
///     properties:
///       location: ngeydiaovh
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: djqvocoytmrzmkkinwskicuebi
///         awsAccountId: vdzgygqqjlohlqcrnidexbnxccnqjn
///         awsProperties:
///           grants:
///             - grantee:
///                 displayName: xlmygaefkokdbvi
///                 emailAddress: crwbnkkz
///                 id: uyhsprjfhvowaugesuopxt
///                 type:
///                   value: AmazonCustomerByEmail
///                 uri: yzwxkelbvsi
///               permission:
///                 value: FULL_CONTROL
///           owner:
///             displayName: klnmzlbodf
///             id: slxuomdlbhuf
///         awsRegion: ae
///         awsSourceSchema: maxtroudgkwcrkhofvwigmhihju
///         awsTags:
///           key2280: zerubhrridce
///         publicCloudConnectorsResourceId: tpjrczwnhnoxoddvflvntzvw
///         publicCloudResourceName: hytdmduqsymgluymquc
///       resourceGroupName: rgs3AccessControlPolicy
///       tags:
///         key3435: rhijygbnmiejai
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
/// $ pulumi import azure-native:awsconnector:S3AccessControlPolicy mjhiamlmodszntandjkuynu /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/s3AccessControlPolicies/{name}
/// ```
class S3AccessControlPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<S3AccessControlPolicyPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [S3AccessControlPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [S3AccessControlPolicy]. {@macro pulumi_awsconnector_s3_access_control_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  S3AccessControlPolicy(
    String name, {
    S3AccessControlPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:awsconnector:S3AccessControlPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<S3AccessControlPolicyPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return S3AccessControlPolicyPropertiesResponse.fromMap(
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
