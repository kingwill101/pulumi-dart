import 'package:pulumi/pulumi.dart' as pulumi;
import 'iam_password_policy_args.dart';
import 'iam_password_policy_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### IamPasswordPolicies_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var iamPasswordPolicy = new AzureNative.AwsConnector.IamPasswordPolicy("iamPasswordPolicy", new()
///     {
///         Location = "zirvnbwoooczkma",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.IamPasswordPolicyPropertiesArgs
///         {
///             Arn = "irgrdslydjpuoyb",
///             AwsAccountId = "iiripspbzbqibqazbnef",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsIamPasswordPolicyPropertiesArgs
///             {
///                 AllowUsersToChangePassword = true,
///                 ExpirePasswords = true,
///                 HardExpiry = true,
///                 MaxPasswordAge = 1,
///                 MinimumPasswordLength = 17,
///                 PasswordReusePrevention = 30,
///                 RequireLowercaseCharacters = true,
///                 RequireNumbers = true,
///                 RequireSymbols = true,
///                 RequireUppercaseCharacters = true,
///             },
///             AwsRegion = "mqpdjjdzdwew",
///             AwsSourceSchema = "gud",
///             AwsTags =
///             {
///                 { "key6748", "bdnkhafiylgulql" },
///             },
///             PublicCloudConnectorsResourceId = "zsyi",
///             PublicCloudResourceName = "zuwprynvflpuik",
///         },
///         ResourceGroupName = "rgiamPasswordPolicy",
///         Tags =
///         {
///             { "key5111", "zzliqszhvi" },
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
/// 		_, err := awsconnector.NewIamPasswordPolicy(ctx, "iamPasswordPolicy", &awsconnector.IamPasswordPolicyArgs{
/// 			Location: pulumi.String("zirvnbwoooczkma"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.IamPasswordPolicyPropertiesArgs{
/// 				Arn:          pulumi.String("irgrdslydjpuoyb"),
/// 				AwsAccountId: pulumi.String("iiripspbzbqibqazbnef"),
/// 				AwsProperties: &awsconnector.AwsIamPasswordPolicyPropertiesArgs{
/// 					AllowUsersToChangePassword: pulumi.Bool(true),
/// 					ExpirePasswords:            pulumi.Bool(true),
/// 					HardExpiry:                 pulumi.Bool(true),
/// 					MaxPasswordAge:             pulumi.Int(1),
/// 					MinimumPasswordLength:      pulumi.Int(17),
/// 					PasswordReusePrevention:    pulumi.Int(30),
/// 					RequireLowercaseCharacters: pulumi.Bool(true),
/// 					RequireNumbers:             pulumi.Bool(true),
/// 					RequireSymbols:             pulumi.Bool(true),
/// 					RequireUppercaseCharacters: pulumi.Bool(true),
/// 				},
/// 				AwsRegion:       pulumi.String("mqpdjjdzdwew"),
/// 				AwsSourceSchema: pulumi.String("gud"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key6748": pulumi.String("bdnkhafiylgulql"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("zsyi"),
/// 				PublicCloudResourceName:         pulumi.String("zuwprynvflpuik"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgiamPasswordPolicy"),
/// 			Tags: pulumi.StringMap{
/// 				"key5111": pulumi.String("zzliqszhvi"),
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
/// import com.pulumi.azurenative.awsconnector.IamPasswordPolicy;
/// import com.pulumi.azurenative.awsconnector.IamPasswordPolicyArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.IamPasswordPolicyPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsIamPasswordPolicyPropertiesArgs;
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
///         var iamPasswordPolicy = new IamPasswordPolicy("iamPasswordPolicy", IamPasswordPolicyArgs.builder()
///             .location("zirvnbwoooczkma")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(IamPasswordPolicyPropertiesArgs.builder()
///                 .arn("irgrdslydjpuoyb")
///                 .awsAccountId("iiripspbzbqibqazbnef")
///                 .awsProperties(AwsIamPasswordPolicyPropertiesArgs.builder()
///                     .allowUsersToChangePassword(true)
///                     .expirePasswords(true)
///                     .hardExpiry(true)
///                     .maxPasswordAge(1)
///                     .minimumPasswordLength(17)
///                     .passwordReusePrevention(30)
///                     .requireLowercaseCharacters(true)
///                     .requireNumbers(true)
///                     .requireSymbols(true)
///                     .requireUppercaseCharacters(true)
///                     .build())
///                 .awsRegion("mqpdjjdzdwew")
///                 .awsSourceSchema("gud")
///                 .awsTags(Map.of("key6748", "bdnkhafiylgulql"))
///                 .publicCloudConnectorsResourceId("zsyi")
///                 .publicCloudResourceName("zuwprynvflpuik")
///                 .build())
///             .resourceGroupName("rgiamPasswordPolicy")
///             .tags(Map.of("key5111", "zzliqszhvi"))
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
/// const iamPasswordPolicy = new azure_native.awsconnector.IamPasswordPolicy("iamPasswordPolicy", {
///     location: "zirvnbwoooczkma",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "irgrdslydjpuoyb",
///         awsAccountId: "iiripspbzbqibqazbnef",
///         awsProperties: {
///             allowUsersToChangePassword: true,
///             expirePasswords: true,
///             hardExpiry: true,
///             maxPasswordAge: 1,
///             minimumPasswordLength: 17,
///             passwordReusePrevention: 30,
///             requireLowercaseCharacters: true,
///             requireNumbers: true,
///             requireSymbols: true,
///             requireUppercaseCharacters: true,
///         },
///         awsRegion: "mqpdjjdzdwew",
///         awsSourceSchema: "gud",
///         awsTags: {
///             key6748: "bdnkhafiylgulql",
///         },
///         publicCloudConnectorsResourceId: "zsyi",
///         publicCloudResourceName: "zuwprynvflpuik",
///     },
///     resourceGroupName: "rgiamPasswordPolicy",
///     tags: {
///         key5111: "zzliqszhvi",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// iam_password_policy = azure_native.awsconnector.IamPasswordPolicy("iamPasswordPolicy",
///     location="zirvnbwoooczkma",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "irgrdslydjpuoyb",
///         "aws_account_id": "iiripspbzbqibqazbnef",
///         "aws_properties": {
///             "allow_users_to_change_password": True,
///             "expire_passwords": True,
///             "hard_expiry": True,
///             "max_password_age": 1,
///             "minimum_password_length": 17,
///             "password_reuse_prevention": 30,
///             "require_lowercase_characters": True,
///             "require_numbers": True,
///             "require_symbols": True,
///             "require_uppercase_characters": True,
///         },
///         "aws_region": "mqpdjjdzdwew",
///         "aws_source_schema": "gud",
///         "aws_tags": {
///             "key6748": "bdnkhafiylgulql",
///         },
///         "public_cloud_connectors_resource_id": "zsyi",
///         "public_cloud_resource_name": "zuwprynvflpuik",
///     },
///     resource_group_name="rgiamPasswordPolicy",
///     tags={
///         "key5111": "zzliqszhvi",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   iamPasswordPolicy:
///     type: azure-native:awsconnector:IamPasswordPolicy
///     properties:
///       location: zirvnbwoooczkma
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: irgrdslydjpuoyb
///         awsAccountId: iiripspbzbqibqazbnef
///         awsProperties:
///           allowUsersToChangePassword: true
///           expirePasswords: true
///           hardExpiry: true
///           maxPasswordAge: 1
///           minimumPasswordLength: 17
///           passwordReusePrevention: 30
///           requireLowercaseCharacters: true
///           requireNumbers: true
///           requireSymbols: true
///           requireUppercaseCharacters: true
///         awsRegion: mqpdjjdzdwew
///         awsSourceSchema: gud
///         awsTags:
///           key6748: bdnkhafiylgulql
///         publicCloudConnectorsResourceId: zsyi
///         publicCloudResourceName: zuwprynvflpuik
///       resourceGroupName: rgiamPasswordPolicy
///       tags:
///         key5111: zzliqszhvi
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
/// $ pulumi import azure-native:awsconnector:IamPasswordPolicy wlazqv /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/iamPasswordPolicies/{name}
/// ```
class IamPasswordPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<IamPasswordPolicyPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [IamPasswordPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IamPasswordPolicy]. {@macro pulumi_awsconnector_iam_password_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IamPasswordPolicy(
    String name, {
    IamPasswordPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:IamPasswordPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<IamPasswordPolicyPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IamPasswordPolicyPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
