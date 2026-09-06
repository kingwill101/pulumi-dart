import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_formation_stack_set_args.dart';
import 'cloud_formation_stack_set_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CloudFormationStackSets_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cloudFormationStackSet = new AzureNative.AwsConnector.CloudFormationStackSet("cloudFormationStackSet", new()
///     {
///         Location = "oubo",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.CloudFormationStackSetPropertiesArgs
///         {
///             Arn = "sldueqvlzdilykrozxapbb",
///             AwsAccountId = "jtdycoxjyvqvrxyy",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsCloudFormationStackSetPropertiesArgs
///             {
///                 AdministrationRoleARN = "ybtuoky",
///                 AutoDeployment = new AzureNative.AwsConnector.Inputs.AutoDeploymentArgs
///                 {
///                     Enabled = true,
///                     RetainStacksOnAccountRemoval = true,
///                 },
///                 CallAs = AzureNative.AwsConnector.CallAs.DELEGATED_ADMIN,
///                 Capabilities = new[]
///                 {
///                     "begwecrhvitloplqjhhydjwhve",
///                 },
///                 Description = "czkasvectlrpghrjojr",
///                 ExecutionRoleName = "fclmt",
///                 ManagedExecution = new AzureNative.AwsConnector.Inputs.ActiveModelArgs
///                 {
///                     Active = true,
///                 },
///                 OperationPreferences = new AzureNative.AwsConnector.Inputs.OperationPreferencesArgs
///                 {
///                     FailureToleranceCount = 30,
///                     FailureTolerancePercentage = 16,
///                     MaxConcurrentCount = 11,
///                     MaxConcurrentPercentage = 15,
///                     RegionConcurrencyType = AzureNative.AwsConnector.OperationPreferencesRegionConcurrencyType.PARALLEL,
///                     RegionOrder = new[]
///                     {
///                         "gwaceriunclgehhoue",
///                     },
///                 },
///                 Parameters = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.ParameterArgs
///                     {
///                         ParameterKey = "akfjkpykscisdhjmmlmsqsokk",
///                         ParameterValue = "lldiqsjfqukysjecb",
///                     },
///                 },
///                 PermissionModel = AzureNative.AwsConnector.PermissionModel.SELF_MANAGED,
///                 StackInstancesGroup = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.StackInstancesArgs
///                     {
///                         DeploymentTargets = new AzureNative.AwsConnector.Inputs.DeploymentTargetsArgs
///                         {
///                             AccountFilterType = AzureNative.AwsConnector.DeploymentTargetsAccountFilterType.DIFFERENCE,
///                             Accounts = new[]
///                             {
///                                 "xc",
///                             },
///                             AccountsUrl = "nvixaunvovhintyelj",
///                             OrganizationalUnitIds = new[]
///                             {
///                                 "gnnzuj",
///                             },
///                         },
///                         ParameterOverrides = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.ParameterArgs
///                             {
///                                 ParameterKey = "akfjkpykscisdhjmmlmsqsokk",
///                                 ParameterValue = "lldiqsjfqukysjecb",
///                             },
///                         },
///                         Regions = new[]
///                         {
///                             "eyondljwt",
///                         },
///                     },
///                 },
///                 StackSetId = "ypfkcclgbgzikkjqfeiq",
///                 StackSetName = "bkfqkuqedspfb",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "rhuz",
///                         Value = "ntm",
///                     },
///                 },
///                 TemplateBody = "no",
///                 TemplateURL = "icoki",
///             },
///             AwsRegion = "drpqdznyarlwjnjslcrmvm",
///             AwsSourceSchema = "wpvatxlrosokkyqsq",
///             AwsTags =
///             {
///                 { "key7598", "zigarduulhgfhujfaxwpu" },
///             },
///             PublicCloudConnectorsResourceId = "eqapackzslaofkx",
///             PublicCloudResourceName = "dyaxkuzcwhqspayuipml",
///         },
///         ResourceGroupName = "rgcloudFormationStackSet",
///         Tags =
///         {
///             { "key307", "edjq" },
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
/// 		_, err := awsconnector.NewCloudFormationStackSet(ctx, "cloudFormationStackSet", &awsconnector.CloudFormationStackSetArgs{
/// 			Location: pulumi.String("oubo"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.CloudFormationStackSetPropertiesArgs{
/// 				Arn:          pulumi.String("sldueqvlzdilykrozxapbb"),
/// 				AwsAccountId: pulumi.String("jtdycoxjyvqvrxyy"),
/// 				AwsProperties: &awsconnector.AwsCloudFormationStackSetPropertiesArgs{
/// 					AdministrationRoleARN: pulumi.String("ybtuoky"),
/// 					AutoDeployment: &awsconnector.AutoDeploymentArgs{
/// 						Enabled:                      pulumi.Bool(true),
/// 						RetainStacksOnAccountRemoval: pulumi.Bool(true),
/// 					},
/// 					CallAs: pulumi.String(awsconnector.CallAs_DELEGATED_ADMIN),
/// 					Capabilities: pulumi.StringArray{
/// 						pulumi.String("begwecrhvitloplqjhhydjwhve"),
/// 					},
/// 					Description:       pulumi.String("czkasvectlrpghrjojr"),
/// 					ExecutionRoleName: pulumi.String("fclmt"),
/// 					ManagedExecution: &awsconnector.ActiveModelArgs{
/// 						Active: pulumi.Bool(true),
/// 					},
/// 					OperationPreferences: &awsconnector.OperationPreferencesArgs{
/// 						FailureToleranceCount:      pulumi.Int(30),
/// 						FailureTolerancePercentage: pulumi.Int(16),
/// 						MaxConcurrentCount:         pulumi.Int(11),
/// 						MaxConcurrentPercentage:    pulumi.Int(15),
/// 						RegionConcurrencyType:      pulumi.String(awsconnector.OperationPreferencesRegionConcurrencyTypePARALLEL),
/// 						RegionOrder: pulumi.StringArray{
/// 							pulumi.String("gwaceriunclgehhoue"),
/// 						},
/// 					},
/// 					Parameters: awsconnector.ParameterArray{
/// 						&awsconnector.ParameterArgs{
/// 							ParameterKey:   pulumi.String("akfjkpykscisdhjmmlmsqsokk"),
/// 							ParameterValue: pulumi.String("lldiqsjfqukysjecb"),
/// 						},
/// 					},
/// 					PermissionModel: pulumi.String(awsconnector.PermissionModel_SELF_MANAGED),
/// 					StackInstancesGroup: awsconnector.StackInstancesArray{
/// 						&awsconnector.StackInstancesArgs{
/// 							DeploymentTargets: &awsconnector.DeploymentTargetsArgs{
/// 								AccountFilterType: pulumi.String(awsconnector.DeploymentTargetsAccountFilterTypeDIFFERENCE),
/// 								Accounts: pulumi.StringArray{
/// 									pulumi.String("xc"),
/// 								},
/// 								AccountsUrl: pulumi.String("nvixaunvovhintyelj"),
/// 								OrganizationalUnitIds: pulumi.StringArray{
/// 									pulumi.String("gnnzuj"),
/// 								},
/// 							},
/// 							ParameterOverrides: awsconnector.ParameterArray{
/// 								&awsconnector.ParameterArgs{
/// 									ParameterKey:   pulumi.String("akfjkpykscisdhjmmlmsqsokk"),
/// 									ParameterValue: pulumi.String("lldiqsjfqukysjecb"),
/// 								},
/// 							},
/// 							Regions: pulumi.StringArray{
/// 								pulumi.String("eyondljwt"),
/// 							},
/// 						},
/// 					},
/// 					StackSetId:   pulumi.String("ypfkcclgbgzikkjqfeiq"),
/// 					StackSetName: pulumi.String("bkfqkuqedspfb"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("rhuz"),
/// 							Value: pulumi.String("ntm"),
/// 						},
/// 					},
/// 					TemplateBody: pulumi.String("no"),
/// 					TemplateURL:  pulumi.String("icoki"),
/// 				},
/// 				AwsRegion:       pulumi.String("drpqdznyarlwjnjslcrmvm"),
/// 				AwsSourceSchema: pulumi.String("wpvatxlrosokkyqsq"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key7598": pulumi.String("zigarduulhgfhujfaxwpu"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("eqapackzslaofkx"),
/// 				PublicCloudResourceName:         pulumi.String("dyaxkuzcwhqspayuipml"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgcloudFormationStackSet"),
/// 			Tags: pulumi.StringMap{
/// 				"key307": pulumi.String("edjq"),
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
/// resource "azure-native_awsconnector_cloudformationstackset" "cloudFormationStackSet" {
///   location = "oubo"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "sldueqvlzdilykrozxapbb"
///     aws_account_id = "jtdycoxjyvqvrxyy"
///     aws_properties = {
///       administration_role_arn = "ybtuoky"
///       auto_deployment = {
///         enabled                          = true
///         retain_stacks_on_account_removal = true
///       }
///       call_as             = "DELEGATED_ADMIN"
///       capabilities        = ["begwecrhvitloplqjhhydjwhve"]
///       description         = "czkasvectlrpghrjojr"
///       execution_role_name = "fclmt"
///       managed_execution = {
///         active = true
///       }
///       operation_preferences = {
///         failure_tolerance_count      = 30
///         failure_tolerance_percentage = 16
///         max_concurrent_count         = 11
///         max_concurrent_percentage    = 15
///         region_concurrency_type      = "PARALLEL"
///         region_order                 = ["gwaceriunclgehhoue"]
///       }
///       parameters = [{
///         "parameterKey"   = "akfjkpykscisdhjmmlmsqsokk"
///         "parameterValue" = "lldiqsjfqukysjecb"
///       }]
///       permission_model = "SELF_MANAGED"
///       stack_instances_group = [{
///         "deploymentTargets" = {
///           "accountFilterType"     = "DIFFERENCE"
///           "accounts"              = ["xc"]
///           "accountsUrl"           = "nvixaunvovhintyelj"
///           "organizationalUnitIds" = ["gnnzuj"]
///         }
///         "parameterOverrides" = [{
///           "parameterKey"   = "akfjkpykscisdhjmmlmsqsokk"
///           "parameterValue" = "lldiqsjfqukysjecb"
///         }]
///         "regions" = ["eyondljwt"]
///       }]
///       stack_set_id   = "ypfkcclgbgzikkjqfeiq"
///       stack_set_name = "bkfqkuqedspfb"
///       tags = [{
///         "key"   = "rhuz"
///         "value" = "ntm"
///       }]
///       template_body = "no"
///       template_url  = "icoki"
///     }
///     aws_region        = "drpqdznyarlwjnjslcrmvm"
///     aws_source_schema = "wpvatxlrosokkyqsq"
///     aws_tags = {
///       "key7598" = "zigarduulhgfhujfaxwpu"
///     }
///     public_cloud_connectors_resource_id = "eqapackzslaofkx"
///     public_cloud_resource_name          = "dyaxkuzcwhqspayuipml"
///   }
///   resource_group_name = "rgcloudFormationStackSet"
///   tags = {
///     "key307" = "edjq"
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
/// import com.pulumi.azurenative.awsconnector.CloudFormationStackSet;
/// import com.pulumi.azurenative.awsconnector.CloudFormationStackSetArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.CloudFormationStackSetPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsCloudFormationStackSetPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AutoDeploymentArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ActiveModelArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.OperationPreferencesArgs;
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
///         var cloudFormationStackSet = new CloudFormationStackSet("cloudFormationStackSet", CloudFormationStackSetArgs.builder()
///             .location("oubo")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(CloudFormationStackSetPropertiesArgs.builder()
///                 .arn("sldueqvlzdilykrozxapbb")
///                 .awsAccountId("jtdycoxjyvqvrxyy")
///                 .awsProperties(AwsCloudFormationStackSetPropertiesArgs.builder()
///                     .administrationRoleARN("ybtuoky")
///                     .autoDeployment(AutoDeploymentArgs.builder()
///                         .enabled(true)
///                         .retainStacksOnAccountRemoval(true)
///                         .build())
///                     .callAs("DELEGATED_ADMIN")
///                     .capabilities("begwecrhvitloplqjhhydjwhve")
///                     .description("czkasvectlrpghrjojr")
///                     .executionRoleName("fclmt")
///                     .managedExecution(ActiveModelArgs.builder()
///                         .active(true)
///                         .build())
///                     .operationPreferences(OperationPreferencesArgs.builder()
///                         .failureToleranceCount(30)
///                         .failureTolerancePercentage(16)
///                         .maxConcurrentCount(11)
///                         .maxConcurrentPercentage(15)
///                         .regionConcurrencyType("PARALLEL")
///                         .regionOrder("gwaceriunclgehhoue")
///                         .build())
///                     .parameters(ParameterArgs.builder()
///                         .parameterKey("akfjkpykscisdhjmmlmsqsokk")
///                         .parameterValue("lldiqsjfqukysjecb")
///                         .build())
///                     .permissionModel("SELF_MANAGED")
///                     .stackInstancesGroup(StackInstancesArgs.builder()
///                         .deploymentTargets(DeploymentTargetsArgs.builder()
///                             .accountFilterType("DIFFERENCE")
///                             .accounts("xc")
///                             .accountsUrl("nvixaunvovhintyelj")
///                             .organizationalUnitIds("gnnzuj")
///                             .build())
///                         .parameterOverrides(ParameterArgs.builder()
///                             .parameterKey("akfjkpykscisdhjmmlmsqsokk")
///                             .parameterValue("lldiqsjfqukysjecb")
///                             .build())
///                         .regions("eyondljwt")
///                         .build())
///                     .stackSetId("ypfkcclgbgzikkjqfeiq")
///                     .stackSetName("bkfqkuqedspfb")
///                     .tags(TagArgs.builder()
///                         .key("rhuz")
///                         .value("ntm")
///                         .build())
///                     .templateBody("no")
///                     .templateURL("icoki")
///                     .build())
///                 .awsRegion("drpqdznyarlwjnjslcrmvm")
///                 .awsSourceSchema("wpvatxlrosokkyqsq")
///                 .awsTags(Map.of("key7598", "zigarduulhgfhujfaxwpu"))
///                 .publicCloudConnectorsResourceId("eqapackzslaofkx")
///                 .publicCloudResourceName("dyaxkuzcwhqspayuipml")
///                 .build())
///             .resourceGroupName("rgcloudFormationStackSet")
///             .tags(Map.of("key307", "edjq"))
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
/// const cloudFormationStackSet = new azure_native.awsconnector.CloudFormationStackSet("cloudFormationStackSet", {
///     location: "oubo",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "sldueqvlzdilykrozxapbb",
///         awsAccountId: "jtdycoxjyvqvrxyy",
///         awsProperties: {
///             administrationRoleARN: "ybtuoky",
///             autoDeployment: {
///                 enabled: true,
///                 retainStacksOnAccountRemoval: true,
///             },
///             callAs: azure_native.awsconnector.CallAs.DELEGATED_ADMIN,
///             capabilities: ["begwecrhvitloplqjhhydjwhve"],
///             description: "czkasvectlrpghrjojr",
///             executionRoleName: "fclmt",
///             managedExecution: {
///                 active: true,
///             },
///             operationPreferences: {
///                 failureToleranceCount: 30,
///                 failureTolerancePercentage: 16,
///                 maxConcurrentCount: 11,
///                 maxConcurrentPercentage: 15,
///                 regionConcurrencyType: azure_native.awsconnector.OperationPreferencesRegionConcurrencyType.PARALLEL,
///                 regionOrder: ["gwaceriunclgehhoue"],
///             },
///             parameters: [{
///                 parameterKey: "akfjkpykscisdhjmmlmsqsokk",
///                 parameterValue: "lldiqsjfqukysjecb",
///             }],
///             permissionModel: azure_native.awsconnector.PermissionModel.SELF_MANAGED,
///             stackInstancesGroup: [{
///                 deploymentTargets: {
///                     accountFilterType: azure_native.awsconnector.DeploymentTargetsAccountFilterType.DIFFERENCE,
///                     accounts: ["xc"],
///                     accountsUrl: "nvixaunvovhintyelj",
///                     organizationalUnitIds: ["gnnzuj"],
///                 },
///                 parameterOverrides: [{
///                     parameterKey: "akfjkpykscisdhjmmlmsqsokk",
///                     parameterValue: "lldiqsjfqukysjecb",
///                 }],
///                 regions: ["eyondljwt"],
///             }],
///             stackSetId: "ypfkcclgbgzikkjqfeiq",
///             stackSetName: "bkfqkuqedspfb",
///             tags: [{
///                 key: "rhuz",
///                 value: "ntm",
///             }],
///             templateBody: "no",
///             templateURL: "icoki",
///         },
///         awsRegion: "drpqdznyarlwjnjslcrmvm",
///         awsSourceSchema: "wpvatxlrosokkyqsq",
///         awsTags: {
///             key7598: "zigarduulhgfhujfaxwpu",
///         },
///         publicCloudConnectorsResourceId: "eqapackzslaofkx",
///         publicCloudResourceName: "dyaxkuzcwhqspayuipml",
///     },
///     resourceGroupName: "rgcloudFormationStackSet",
///     tags: {
///         key307: "edjq",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cloud_formation_stack_set = azure_native.awsconnector.CloudFormationStackSet("cloudFormationStackSet",
///     location="oubo",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "sldueqvlzdilykrozxapbb",
///         "aws_account_id": "jtdycoxjyvqvrxyy",
///         "aws_properties": {
///             "administration_role_arn": "ybtuoky",
///             "auto_deployment": {
///                 "enabled": True,
///                 "retain_stacks_on_account_removal": True,
///             },
///             "call_as": azure_native.awsconnector.CallAs.DELEGATE_D_ADMIN,
///             "capabilities": ["begwecrhvitloplqjhhydjwhve"],
///             "description": "czkasvectlrpghrjojr",
///             "execution_role_name": "fclmt",
///             "managed_execution": {
///                 "active": True,
///             },
///             "operation_preferences": {
///                 "failure_tolerance_count": 30,
///                 "failure_tolerance_percentage": 16,
///                 "max_concurrent_count": 11,
///                 "max_concurrent_percentage": 15,
///                 "region_concurrency_type": azure_native.awsconnector.OperationPreferencesRegionConcurrencyType.PARALLEL,
///                 "region_order": ["gwaceriunclgehhoue"],
///             },
///             "parameters": [{
///                 "parameter_key": "akfjkpykscisdhjmmlmsqsokk",
///                 "parameter_value": "lldiqsjfqukysjecb",
///             }],
///             "permission_model": azure_native.awsconnector.PermissionModel.SEL_F_MANAGED,
///             "stack_instances_group": [{
///                 "deployment_targets": {
///                     "account_filter_type": azure_native.awsconnector.DeploymentTargetsAccountFilterType.DIFFERENCE,
///                     "accounts": ["xc"],
///                     "accounts_url": "nvixaunvovhintyelj",
///                     "organizational_unit_ids": ["gnnzuj"],
///                 },
///                 "parameter_overrides": [{
///                     "parameter_key": "akfjkpykscisdhjmmlmsqsokk",
///                     "parameter_value": "lldiqsjfqukysjecb",
///                 }],
///                 "regions": ["eyondljwt"],
///             }],
///             "stack_set_id": "ypfkcclgbgzikkjqfeiq",
///             "stack_set_name": "bkfqkuqedspfb",
///             "tags": [{
///                 "key": "rhuz",
///                 "value": "ntm",
///             }],
///             "template_body": "no",
///             "template_url": "icoki",
///         },
///         "aws_region": "drpqdznyarlwjnjslcrmvm",
///         "aws_source_schema": "wpvatxlrosokkyqsq",
///         "aws_tags": {
///             "key7598": "zigarduulhgfhujfaxwpu",
///         },
///         "public_cloud_connectors_resource_id": "eqapackzslaofkx",
///         "public_cloud_resource_name": "dyaxkuzcwhqspayuipml",
///     },
///     resource_group_name="rgcloudFormationStackSet",
///     tags={
///         "key307": "edjq",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   cloudFormationStackSet:
///     type: azure-native:awsconnector:CloudFormationStackSet
///     properties:
///       location: oubo
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: sldueqvlzdilykrozxapbb
///         awsAccountId: jtdycoxjyvqvrxyy
///         awsProperties:
///           administrationRoleARN: ybtuoky
///           autoDeployment:
///             enabled: true
///             retainStacksOnAccountRemoval: true
///           callAs: DELEGATED_ADMIN
///           capabilities:
///             - begwecrhvitloplqjhhydjwhve
///           description: czkasvectlrpghrjojr
///           executionRoleName: fclmt
///           managedExecution:
///             active: true
///           operationPreferences:
///             failureToleranceCount: 30
///             failureTolerancePercentage: 16
///             maxConcurrentCount: 11
///             maxConcurrentPercentage: 15
///             regionConcurrencyType: PARALLEL
///             regionOrder:
///               - gwaceriunclgehhoue
///           parameters:
///             - parameterKey: akfjkpykscisdhjmmlmsqsokk
///               parameterValue: lldiqsjfqukysjecb
///           permissionModel: SELF_MANAGED
///           stackInstancesGroup:
///             - deploymentTargets:
///                 accountFilterType: DIFFERENCE
///                 accounts:
///                   - xc
///                 accountsUrl: nvixaunvovhintyelj
///                 organizationalUnitIds:
///                   - gnnzuj
///               parameterOverrides:
///                 - parameterKey: akfjkpykscisdhjmmlmsqsokk
///                   parameterValue: lldiqsjfqukysjecb
///               regions:
///                 - eyondljwt
///           stackSetId: ypfkcclgbgzikkjqfeiq
///           stackSetName: bkfqkuqedspfb
///           tags:
///             - key: rhuz
///               value: ntm
///           templateBody: no
///           templateURL: icoki
///         awsRegion: drpqdznyarlwjnjslcrmvm
///         awsSourceSchema: wpvatxlrosokkyqsq
///         awsTags:
///           key7598: zigarduulhgfhujfaxwpu
///         publicCloudConnectorsResourceId: eqapackzslaofkx
///         publicCloudResourceName: dyaxkuzcwhqspayuipml
///       resourceGroupName: rgcloudFormationStackSet
///       tags:
///         key307: edjq
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
/// $ pulumi import azure-native:awsconnector:CloudFormationStackSet gkzgnjmgm /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/cloudFormationStackSets/{name}
/// ```
class CloudFormationStackSet extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<CloudFormationStackSetPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [CloudFormationStackSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CloudFormationStackSet]. {@macro pulumi_awsconnector_cloud_formation_stack_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CloudFormationStackSet(
    String name, {
    CloudFormationStackSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:CloudFormationStackSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<CloudFormationStackSetPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CloudFormationStackSetPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [CloudFormationStackSet] resource.
  CloudFormationStackSet.reference(String urn)
    : super(
        'azure-native:awsconnector:CloudFormationStackSet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<CloudFormationStackSetPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CloudFormationStackSetPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
