import 'package:pulumi/pulumi.dart' as pulumi;
import 'iam_role_args.dart';
import 'iam_role_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### IamRoles_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var iamRole = new AzureNative.AwsConnector.IamRole("iamRole", new()
///     {
///         Location = "vkzeblhpdgxwu",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.IamRolePropertiesArgs
///         {
///             Arn = "cllfeatxzjqiqr",
///             AwsAccountId = "qlndbvxbvf",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsIamRolePropertiesArgs
///             {
///                 Arn = "iqe",
///                 AssumeRolePolicyDocument = null,
///                 Description = "spayefp",
///                 ManagedPolicyArns = new[]
///                 {
///                     "twfombcdqlzq",
///                 },
///                 MaxSessionDuration = 16,
///                 Path = "qxfdn",
///                 PermissionsBoundary = "wofktscexalvotvxaxsq",
///                 Policies = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.PolicyArgs
///                     {
///                         PolicyDocument = null,
///                         PolicyName = "bpqsmdhzxaruuvctyddrcedbf",
///                     },
///                 },
///                 RoleId = "l",
///                 RoleName = "vpczljoyhnvybvtyagxaxaraogzdyx",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "fppaonhdrxztfctritlgmqm",
///                         Value = "jcpberdkjmspmjbzyewyhyd",
///                     },
///                 },
///             },
///             AwsRegion = "yqtvmgzsvcgtehapncinnqvsql",
///             AwsSourceSchema = "onnjxuscupomucwhpltcnogwhxllm",
///             AwsTags =
///             {
///                 { "key9018", "byqrewkofnjfomn" },
///             },
///             PublicCloudConnectorsResourceId = "cchmzoxsgytenwavdwoarear",
///             PublicCloudResourceName = "qn",
///         },
///         ResourceGroupName = "rgiamRole",
///         Tags =
///         {
///             { "key3308", "xn" },
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
/// 		_, err := awsconnector.NewIamRole(ctx, "iamRole", &awsconnector.IamRoleArgs{
/// 			Location: pulumi.String("vkzeblhpdgxwu"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.IamRolePropertiesArgs{
/// 				Arn:          pulumi.String("cllfeatxzjqiqr"),
/// 				AwsAccountId: pulumi.String("qlndbvxbvf"),
/// 				AwsProperties: &awsconnector.AwsIamRolePropertiesArgs{
/// 					Arn:                      pulumi.String("iqe"),
/// 					AssumeRolePolicyDocument: pulumi.Any(map[string]interface{}{}),
/// 					Description:              pulumi.String("spayefp"),
/// 					ManagedPolicyArns: pulumi.StringArray{
/// 						pulumi.String("twfombcdqlzq"),
/// 					},
/// 					MaxSessionDuration:  pulumi.Int(16),
/// 					Path:                pulumi.String("qxfdn"),
/// 					PermissionsBoundary: pulumi.String("wofktscexalvotvxaxsq"),
/// 					Policies: awsconnector.PolicyArray{
/// 						&awsconnector.PolicyArgs{
/// 							PolicyDocument: pulumi.Any(map[string]interface{}{}),
/// 							PolicyName:     pulumi.String("bpqsmdhzxaruuvctyddrcedbf"),
/// 						},
/// 					},
/// 					RoleId:   pulumi.String("l"),
/// 					RoleName: pulumi.String("vpczljoyhnvybvtyagxaxaraogzdyx"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("fppaonhdrxztfctritlgmqm"),
/// 							Value: pulumi.String("jcpberdkjmspmjbzyewyhyd"),
/// 						},
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("yqtvmgzsvcgtehapncinnqvsql"),
/// 				AwsSourceSchema: pulumi.String("onnjxuscupomucwhpltcnogwhxllm"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key9018": pulumi.String("byqrewkofnjfomn"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("cchmzoxsgytenwavdwoarear"),
/// 				PublicCloudResourceName:         pulumi.String("qn"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgiamRole"),
/// 			Tags: pulumi.StringMap{
/// 				"key3308": pulumi.String("xn"),
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
/// import com.pulumi.azurenative.awsconnector.IamRole;
/// import com.pulumi.azurenative.awsconnector.IamRoleArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.IamRolePropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsIamRolePropertiesArgs;
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
///         var iamRole = new IamRole("iamRole", IamRoleArgs.builder()
///             .location("vkzeblhpdgxwu")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(IamRolePropertiesArgs.builder()
///                 .arn("cllfeatxzjqiqr")
///                 .awsAccountId("qlndbvxbvf")
///                 .awsProperties(AwsIamRolePropertiesArgs.builder()
///                     .arn("iqe")
///                     .assumeRolePolicyDocument(Map.ofEntries(
///                     ))
///                     .description("spayefp")
///                     .managedPolicyArns("twfombcdqlzq")
///                     .maxSessionDuration(16)
///                     .path("qxfdn")
///                     .permissionsBoundary("wofktscexalvotvxaxsq")
///                     .policies(PolicyArgs.builder()
///                         .policyDocument(Map.ofEntries(
///                         ))
///                         .policyName("bpqsmdhzxaruuvctyddrcedbf")
///                         .build())
///                     .roleId("l")
///                     .roleName("vpczljoyhnvybvtyagxaxaraogzdyx")
///                     .tags(TagArgs.builder()
///                         .key("fppaonhdrxztfctritlgmqm")
///                         .value("jcpberdkjmspmjbzyewyhyd")
///                         .build())
///                     .build())
///                 .awsRegion("yqtvmgzsvcgtehapncinnqvsql")
///                 .awsSourceSchema("onnjxuscupomucwhpltcnogwhxllm")
///                 .awsTags(Map.of("key9018", "byqrewkofnjfomn"))
///                 .publicCloudConnectorsResourceId("cchmzoxsgytenwavdwoarear")
///                 .publicCloudResourceName("qn")
///                 .build())
///             .resourceGroupName("rgiamRole")
///             .tags(Map.of("key3308", "xn"))
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
/// const iamRole = new azure_native.awsconnector.IamRole("iamRole", {
///     location: "vkzeblhpdgxwu",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "cllfeatxzjqiqr",
///         awsAccountId: "qlndbvxbvf",
///         awsProperties: {
///             arn: "iqe",
///             assumeRolePolicyDocument: {},
///             description: "spayefp",
///             managedPolicyArns: ["twfombcdqlzq"],
///             maxSessionDuration: 16,
///             path: "qxfdn",
///             permissionsBoundary: "wofktscexalvotvxaxsq",
///             policies: [{
///                 policyDocument: {},
///                 policyName: "bpqsmdhzxaruuvctyddrcedbf",
///             }],
///             roleId: "l",
///             roleName: "vpczljoyhnvybvtyagxaxaraogzdyx",
///             tags: [{
///                 key: "fppaonhdrxztfctritlgmqm",
///                 value: "jcpberdkjmspmjbzyewyhyd",
///             }],
///         },
///         awsRegion: "yqtvmgzsvcgtehapncinnqvsql",
///         awsSourceSchema: "onnjxuscupomucwhpltcnogwhxllm",
///         awsTags: {
///             key9018: "byqrewkofnjfomn",
///         },
///         publicCloudConnectorsResourceId: "cchmzoxsgytenwavdwoarear",
///         publicCloudResourceName: "qn",
///     },
///     resourceGroupName: "rgiamRole",
///     tags: {
///         key3308: "xn",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// iam_role = azure_native.awsconnector.IamRole("iamRole",
///     location="vkzeblhpdgxwu",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "cllfeatxzjqiqr",
///         "aws_account_id": "qlndbvxbvf",
///         "aws_properties": {
///             "arn": "iqe",
///             "assume_role_policy_document": {},
///             "description": "spayefp",
///             "managed_policy_arns": ["twfombcdqlzq"],
///             "max_session_duration": 16,
///             "path": "qxfdn",
///             "permissions_boundary": "wofktscexalvotvxaxsq",
///             "policies": [{
///                 "policy_document": {},
///                 "policy_name": "bpqsmdhzxaruuvctyddrcedbf",
///             }],
///             "role_id": "l",
///             "role_name": "vpczljoyhnvybvtyagxaxaraogzdyx",
///             "tags": [{
///                 "key": "fppaonhdrxztfctritlgmqm",
///                 "value": "jcpberdkjmspmjbzyewyhyd",
///             }],
///         },
///         "aws_region": "yqtvmgzsvcgtehapncinnqvsql",
///         "aws_source_schema": "onnjxuscupomucwhpltcnogwhxllm",
///         "aws_tags": {
///             "key9018": "byqrewkofnjfomn",
///         },
///         "public_cloud_connectors_resource_id": "cchmzoxsgytenwavdwoarear",
///         "public_cloud_resource_name": "qn",
///     },
///     resource_group_name="rgiamRole",
///     tags={
///         "key3308": "xn",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   iamRole:
///     type: azure-native:awsconnector:IamRole
///     properties:
///       location: vkzeblhpdgxwu
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: cllfeatxzjqiqr
///         awsAccountId: qlndbvxbvf
///         awsProperties:
///           arn: iqe
///           assumeRolePolicyDocument: {}
///           description: spayefp
///           managedPolicyArns:
///             - twfombcdqlzq
///           maxSessionDuration: 16
///           path: qxfdn
///           permissionsBoundary: wofktscexalvotvxaxsq
///           policies:
///             - policyDocument: {}
///               policyName: bpqsmdhzxaruuvctyddrcedbf
///           roleId: l
///           roleName: vpczljoyhnvybvtyagxaxaraogzdyx
///           tags:
///             - key: fppaonhdrxztfctritlgmqm
///               value: jcpberdkjmspmjbzyewyhyd
///         awsRegion: yqtvmgzsvcgtehapncinnqvsql
///         awsSourceSchema: onnjxuscupomucwhpltcnogwhxllm
///         awsTags:
///           key9018: byqrewkofnjfomn
///         publicCloudConnectorsResourceId: cchmzoxsgytenwavdwoarear
///         publicCloudResourceName: qn
///       resourceGroupName: rgiamRole
///       tags:
///         key3308: xn
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
/// $ pulumi import azure-native:awsconnector:IamRole szbirdnasrkrwgmqfezjv /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/iamRoles/{name}
/// ```
class IamRole extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<IamRolePropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [IamRole].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IamRole]. {@macro pulumi_awsconnector_iam_role_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IamRole(
    String name, {
    IamRoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:awsconnector:IamRole',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<IamRolePropertiesResponse>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
