import 'package:pulumi/pulumi.dart' as pulumi;
import 'secrets_manager_resource_policy_args.dart';
import 'secrets_manager_resource_policy_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SecretsManagerResourcePolicies_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secretsManagerResourcePolicy = new AzureNative.AwsConnector.SecretsManagerResourcePolicy("secretsManagerResourcePolicy", new()
///     {
///         Location = "znrmqmz",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.SecretsManagerResourcePolicyPropertiesArgs
///         {
///             Arn = "cvtearqpmshhlnuxxvmsejrzpqsekj",
///             AwsAccountId = "bswnezmdsuirkrgzmxxjsjo",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsSecretsManagerResourcePolicyPropertiesArgs
///             {
///                 BlockPublicPolicy = true,
///                 Id = "hrvehsjtj",
///                 SecretId = "ibtyhnihzzcswaemsecd",
///             },
///             AwsRegion = "kpcxxfwomoxngnrmkpregcz",
///             AwsSourceSchema = "gkmussnnnguicaskcuprrkexb",
///             AwsTags =
///             {
///                 { "key958", "ls" },
///             },
///             PublicCloudConnectorsResourceId = "isvozhenarlkfvvrujywfu",
///             PublicCloudResourceName = "vtrpmkekofucehtns",
///         },
///         ResourceGroupName = "rgsecretsManagerResourcePolicy",
///         Tags =
///         {
///             { "key6501", "cgxbtjhbnmjokxwbscjtws" },
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
/// 		_, err := awsconnector.NewSecretsManagerResourcePolicy(ctx, "secretsManagerResourcePolicy", &awsconnector.SecretsManagerResourcePolicyArgs{
/// 			Location: pulumi.String("znrmqmz"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.SecretsManagerResourcePolicyPropertiesArgs{
/// 				Arn:          pulumi.String("cvtearqpmshhlnuxxvmsejrzpqsekj"),
/// 				AwsAccountId: pulumi.String("bswnezmdsuirkrgzmxxjsjo"),
/// 				AwsProperties: &awsconnector.AwsSecretsManagerResourcePolicyPropertiesArgs{
/// 					BlockPublicPolicy: pulumi.Bool(true),
/// 					Id:                pulumi.String("hrvehsjtj"),
/// 					SecretId:          pulumi.String("ibtyhnihzzcswaemsecd"),
/// 				},
/// 				AwsRegion:       pulumi.String("kpcxxfwomoxngnrmkpregcz"),
/// 				AwsSourceSchema: pulumi.String("gkmussnnnguicaskcuprrkexb"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key958": pulumi.String("ls"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("isvozhenarlkfvvrujywfu"),
/// 				PublicCloudResourceName:         pulumi.String("vtrpmkekofucehtns"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgsecretsManagerResourcePolicy"),
/// 			Tags: pulumi.StringMap{
/// 				"key6501": pulumi.String("cgxbtjhbnmjokxwbscjtws"),
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
/// resource "azure-native_awsconnector_secretsmanagerresourcepolicy" "secretsManagerResourcePolicy" {
///   location = "znrmqmz"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "cvtearqpmshhlnuxxvmsejrzpqsekj"
///     aws_account_id = "bswnezmdsuirkrgzmxxjsjo"
///     aws_properties = {
///       block_public_policy = true
///       id                  = "hrvehsjtj"
///       secret_id           = "ibtyhnihzzcswaemsecd"
///     }
///     aws_region        = "kpcxxfwomoxngnrmkpregcz"
///     aws_source_schema = "gkmussnnnguicaskcuprrkexb"
///     aws_tags = {
///       "key958" = "ls"
///     }
///     public_cloud_connectors_resource_id = "isvozhenarlkfvvrujywfu"
///     public_cloud_resource_name          = "vtrpmkekofucehtns"
///   }
///   resource_group_name = "rgsecretsManagerResourcePolicy"
///   tags = {
///     "key6501" = "cgxbtjhbnmjokxwbscjtws"
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
/// import com.pulumi.azurenative.awsconnector.SecretsManagerResourcePolicy;
/// import com.pulumi.azurenative.awsconnector.SecretsManagerResourcePolicyArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.SecretsManagerResourcePolicyPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsSecretsManagerResourcePolicyPropertiesArgs;
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
///         var secretsManagerResourcePolicy = new SecretsManagerResourcePolicy("secretsManagerResourcePolicy", SecretsManagerResourcePolicyArgs.builder()
///             .location("znrmqmz")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(SecretsManagerResourcePolicyPropertiesArgs.builder()
///                 .arn("cvtearqpmshhlnuxxvmsejrzpqsekj")
///                 .awsAccountId("bswnezmdsuirkrgzmxxjsjo")
///                 .awsProperties(AwsSecretsManagerResourcePolicyPropertiesArgs.builder()
///                     .blockPublicPolicy(true)
///                     .id("hrvehsjtj")
///                     .secretId("ibtyhnihzzcswaemsecd")
///                     .build())
///                 .awsRegion("kpcxxfwomoxngnrmkpregcz")
///                 .awsSourceSchema("gkmussnnnguicaskcuprrkexb")
///                 .awsTags(Map.of("key958", "ls"))
///                 .publicCloudConnectorsResourceId("isvozhenarlkfvvrujywfu")
///                 .publicCloudResourceName("vtrpmkekofucehtns")
///                 .build())
///             .resourceGroupName("rgsecretsManagerResourcePolicy")
///             .tags(Map.of("key6501", "cgxbtjhbnmjokxwbscjtws"))
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
/// const secretsManagerResourcePolicy = new azure_native.awsconnector.SecretsManagerResourcePolicy("secretsManagerResourcePolicy", {
///     location: "znrmqmz",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "cvtearqpmshhlnuxxvmsejrzpqsekj",
///         awsAccountId: "bswnezmdsuirkrgzmxxjsjo",
///         awsProperties: {
///             blockPublicPolicy: true,
///             id: "hrvehsjtj",
///             secretId: "ibtyhnihzzcswaemsecd",
///         },
///         awsRegion: "kpcxxfwomoxngnrmkpregcz",
///         awsSourceSchema: "gkmussnnnguicaskcuprrkexb",
///         awsTags: {
///             key958: "ls",
///         },
///         publicCloudConnectorsResourceId: "isvozhenarlkfvvrujywfu",
///         publicCloudResourceName: "vtrpmkekofucehtns",
///     },
///     resourceGroupName: "rgsecretsManagerResourcePolicy",
///     tags: {
///         key6501: "cgxbtjhbnmjokxwbscjtws",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// secrets_manager_resource_policy = azure_native.awsconnector.SecretsManagerResourcePolicy("secretsManagerResourcePolicy",
///     location="znrmqmz",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "cvtearqpmshhlnuxxvmsejrzpqsekj",
///         "aws_account_id": "bswnezmdsuirkrgzmxxjsjo",
///         "aws_properties": {
///             "block_public_policy": True,
///             "id": "hrvehsjtj",
///             "secret_id": "ibtyhnihzzcswaemsecd",
///         },
///         "aws_region": "kpcxxfwomoxngnrmkpregcz",
///         "aws_source_schema": "gkmussnnnguicaskcuprrkexb",
///         "aws_tags": {
///             "key958": "ls",
///         },
///         "public_cloud_connectors_resource_id": "isvozhenarlkfvvrujywfu",
///         "public_cloud_resource_name": "vtrpmkekofucehtns",
///     },
///     resource_group_name="rgsecretsManagerResourcePolicy",
///     tags={
///         "key6501": "cgxbtjhbnmjokxwbscjtws",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   secretsManagerResourcePolicy:
///     type: azure-native:awsconnector:SecretsManagerResourcePolicy
///     properties:
///       location: znrmqmz
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: cvtearqpmshhlnuxxvmsejrzpqsekj
///         awsAccountId: bswnezmdsuirkrgzmxxjsjo
///         awsProperties:
///           blockPublicPolicy: true
///           id: hrvehsjtj
///           secretId: ibtyhnihzzcswaemsecd
///         awsRegion: kpcxxfwomoxngnrmkpregcz
///         awsSourceSchema: gkmussnnnguicaskcuprrkexb
///         awsTags:
///           key958: ls
///         publicCloudConnectorsResourceId: isvozhenarlkfvvrujywfu
///         publicCloudResourceName: vtrpmkekofucehtns
///       resourceGroupName: rgsecretsManagerResourcePolicy
///       tags:
///         key6501: cgxbtjhbnmjokxwbscjtws
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
/// $ pulumi import azure-native:awsconnector:SecretsManagerResourcePolicy faic /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/secretsManagerResourcePolicies/{name}
/// ```
class SecretsManagerResourcePolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<SecretsManagerResourcePolicyPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SecretsManagerResourcePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecretsManagerResourcePolicy]. {@macro pulumi_awsconnector_secrets_manager_resource_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecretsManagerResourcePolicy(
    String name, {
    SecretsManagerResourcePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:SecretsManagerResourcePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SecretsManagerResourcePolicyPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecretsManagerResourcePolicyPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
