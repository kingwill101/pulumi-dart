import 'package:pulumi/pulumi.dart' as pulumi;
import 'eks_nodegroup_args.dart';
import 'eks_nodegroup_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### EksNodegroups_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var eksNodegroup = new AzureNative.AwsConnector.EksNodegroup("eksNodegroup", new()
///     {
///         Location = "qfzxiflpnxiua",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.EksNodegroupPropertiesArgs
///         {
///             Arn = "ckgekeh",
///             AwsAccountId = "vfdqtwvbpgxbhqwrbowcnz",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsEksNodegroupPropertiesArgs
///             {
///                 AmiType = "cupzyobvolczhkenpdfcfcqb",
///                 Arn = "shesuqduavivrddwgrqtaukjv",
///                 CapacityType = "pkzjnsykbn",
///                 ClusterName = "qcbbidlhrczzbp",
///                 DiskSize = 14,
///                 ForceUpdateEnabled = true,
///                 Id = "y",
///                 InstanceTypes = new[]
///                 {
///                     "gfy",
///                 },
///                 Labels =
///                 {
///                     { "key8269", "ymdbjmylynhangafbya" },
///                 },
///                 LaunchTemplate = new AzureNative.AwsConnector.Inputs.LaunchTemplateSpecificationArgs
///                 {
///                     Id = "si",
///                     Name = "gdqcgfql",
///                     Version = "lonea",
///                 },
///                 NodeRole = "rzscoljnrtiueunqg",
///                 NodegroupName = "wipo",
///                 ReleaseVersion = "wbgbpvjsrkscfxkcbuatuirn",
///                 RemoteAccess = new AzureNative.AwsConnector.Inputs.RemoteAccessArgs
///                 {
///                     Ec2SshKey = "trwz",
///                     SourceSecurityGroups = new[]
///                     {
///                         "jv",
///                     },
///                 },
///                 ScalingConfig = new AzureNative.AwsConnector.Inputs.ScalingConfigArgs
///                 {
///                     DesiredSize = 2,
///                     MaxSize = 22,
///                     MinSize = 18,
///                 },
///                 Subnets = new[]
///                 {
///                     "jtzrxn",
///                 },
///                 Tags =
///                 {
///                     { "key1070", "ptrhctidulykbaakuqqqqpwbjf" },
///                 },
///                 Taints = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TaintArgs
///                     {
///                         Effect = "cqyaskimdnuadazzlnzdgwjbg",
///                         Key = "msxlxqepxrvkybvjeshfybwsx",
///                         Value = "hfdagmnrdomthxavrf",
///                     },
///                 },
///                 UpdateConfig = new AzureNative.AwsConnector.Inputs.UpdateConfigArgs
///                 {
///                     MaxUnavailable = 24,
///                     MaxUnavailablePercentage = 18,
///                 },
///                 Version = "pzblimbasgkqgyknilzxktqx",
///             },
///             AwsRegion = "glvfswwditueizhrpfvhiwm",
///             AwsSourceSchema = "cizsekmbzwzgaklajexx",
///             AwsTags =
///             {
///                 { "key7151", "fcroma" },
///             },
///             PublicCloudConnectorsResourceId = "val",
///             PublicCloudResourceName = "aybzphomshbbtslocleyyvgcfu",
///         },
///         ResourceGroupName = "rgeksNodegroup",
///         Tags =
///         {
///             { "key3889", "eznqfotstpbcylyajq" },
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
/// 		_, err := awsconnector.NewEksNodegroup(ctx, "eksNodegroup", &awsconnector.EksNodegroupArgs{
/// 			Location: pulumi.String("qfzxiflpnxiua"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.EksNodegroupPropertiesArgs{
/// 				Arn:          pulumi.String("ckgekeh"),
/// 				AwsAccountId: pulumi.String("vfdqtwvbpgxbhqwrbowcnz"),
/// 				AwsProperties: &awsconnector.AwsEksNodegroupPropertiesArgs{
/// 					AmiType:            pulumi.String("cupzyobvolczhkenpdfcfcqb"),
/// 					Arn:                pulumi.String("shesuqduavivrddwgrqtaukjv"),
/// 					CapacityType:       pulumi.String("pkzjnsykbn"),
/// 					ClusterName:        pulumi.String("qcbbidlhrczzbp"),
/// 					DiskSize:           pulumi.Int(14),
/// 					ForceUpdateEnabled: pulumi.Bool(true),
/// 					Id:                 pulumi.String("y"),
/// 					InstanceTypes: pulumi.StringArray{
/// 						pulumi.String("gfy"),
/// 					},
/// 					Labels: pulumi.StringMap{
/// 						"key8269": pulumi.String("ymdbjmylynhangafbya"),
/// 					},
/// 					LaunchTemplate: &awsconnector.LaunchTemplateSpecificationArgs{
/// 						Id:      pulumi.String("si"),
/// 						Name:    pulumi.String("gdqcgfql"),
/// 						Version: pulumi.String("lonea"),
/// 					},
/// 					NodeRole:       pulumi.String("rzscoljnrtiueunqg"),
/// 					NodegroupName:  pulumi.String("wipo"),
/// 					ReleaseVersion: pulumi.String("wbgbpvjsrkscfxkcbuatuirn"),
/// 					RemoteAccess: &awsconnector.RemoteAccessArgs{
/// 						Ec2SshKey: pulumi.String("trwz"),
/// 						SourceSecurityGroups: pulumi.StringArray{
/// 							pulumi.String("jv"),
/// 						},
/// 					},
/// 					ScalingConfig: &awsconnector.ScalingConfigArgs{
/// 						DesiredSize: pulumi.Int(2),
/// 						MaxSize:     pulumi.Int(22),
/// 						MinSize:     pulumi.Int(18),
/// 					},
/// 					Subnets: pulumi.StringArray{
/// 						pulumi.String("jtzrxn"),
/// 					},
/// 					Tags: pulumi.StringMap{
/// 						"key1070": pulumi.String("ptrhctidulykbaakuqqqqpwbjf"),
/// 					},
/// 					Taints: awsconnector.TaintArray{
/// 						&awsconnector.TaintArgs{
/// 							Effect: pulumi.String("cqyaskimdnuadazzlnzdgwjbg"),
/// 							Key:    pulumi.String("msxlxqepxrvkybvjeshfybwsx"),
/// 							Value:  pulumi.String("hfdagmnrdomthxavrf"),
/// 						},
/// 					},
/// 					UpdateConfig: &awsconnector.UpdateConfigArgs{
/// 						MaxUnavailable:           pulumi.Int(24),
/// 						MaxUnavailablePercentage: pulumi.Int(18),
/// 					},
/// 					Version: pulumi.String("pzblimbasgkqgyknilzxktqx"),
/// 				},
/// 				AwsRegion:       pulumi.String("glvfswwditueizhrpfvhiwm"),
/// 				AwsSourceSchema: pulumi.String("cizsekmbzwzgaklajexx"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key7151": pulumi.String("fcroma"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("val"),
/// 				PublicCloudResourceName:         pulumi.String("aybzphomshbbtslocleyyvgcfu"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgeksNodegroup"),
/// 			Tags: pulumi.StringMap{
/// 				"key3889": pulumi.String("eznqfotstpbcylyajq"),
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
/// import com.pulumi.azurenative.awsconnector.EksNodegroup;
/// import com.pulumi.azurenative.awsconnector.EksNodegroupArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.EksNodegroupPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsEksNodegroupPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.LaunchTemplateSpecificationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.RemoteAccessArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ScalingConfigArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.UpdateConfigArgs;
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
///         var eksNodegroup = new EksNodegroup("eksNodegroup", EksNodegroupArgs.builder()
///             .location("qfzxiflpnxiua")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(EksNodegroupPropertiesArgs.builder()
///                 .arn("ckgekeh")
///                 .awsAccountId("vfdqtwvbpgxbhqwrbowcnz")
///                 .awsProperties(AwsEksNodegroupPropertiesArgs.builder()
///                     .amiType("cupzyobvolczhkenpdfcfcqb")
///                     .arn("shesuqduavivrddwgrqtaukjv")
///                     .capacityType("pkzjnsykbn")
///                     .clusterName("qcbbidlhrczzbp")
///                     .diskSize(14)
///                     .forceUpdateEnabled(true)
///                     .id("y")
///                     .instanceTypes("gfy")
///                     .labels(Map.of("key8269", "ymdbjmylynhangafbya"))
///                     .launchTemplate(LaunchTemplateSpecificationArgs.builder()
///                         .id("si")
///                         .name("gdqcgfql")
///                         .version("lonea")
///                         .build())
///                     .nodeRole("rzscoljnrtiueunqg")
///                     .nodegroupName("wipo")
///                     .releaseVersion("wbgbpvjsrkscfxkcbuatuirn")
///                     .remoteAccess(RemoteAccessArgs.builder()
///                         .ec2SshKey("trwz")
///                         .sourceSecurityGroups("jv")
///                         .build())
///                     .scalingConfig(ScalingConfigArgs.builder()
///                         .desiredSize(2)
///                         .maxSize(22)
///                         .minSize(18)
///                         .build())
///                     .subnets("jtzrxn")
///                     .tags(Map.of("key1070", "ptrhctidulykbaakuqqqqpwbjf"))
///                     .taints(TaintArgs.builder()
///                         .effect("cqyaskimdnuadazzlnzdgwjbg")
///                         .key("msxlxqepxrvkybvjeshfybwsx")
///                         .value("hfdagmnrdomthxavrf")
///                         .build())
///                     .updateConfig(UpdateConfigArgs.builder()
///                         .maxUnavailable(24)
///                         .maxUnavailablePercentage(18)
///                         .build())
///                     .version("pzblimbasgkqgyknilzxktqx")
///                     .build())
///                 .awsRegion("glvfswwditueizhrpfvhiwm")
///                 .awsSourceSchema("cizsekmbzwzgaklajexx")
///                 .awsTags(Map.of("key7151", "fcroma"))
///                 .publicCloudConnectorsResourceId("val")
///                 .publicCloudResourceName("aybzphomshbbtslocleyyvgcfu")
///                 .build())
///             .resourceGroupName("rgeksNodegroup")
///             .tags(Map.of("key3889", "eznqfotstpbcylyajq"))
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
/// const eksNodegroup = new azure_native.awsconnector.EksNodegroup("eksNodegroup", {
///     location: "qfzxiflpnxiua",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "ckgekeh",
///         awsAccountId: "vfdqtwvbpgxbhqwrbowcnz",
///         awsProperties: {
///             amiType: "cupzyobvolczhkenpdfcfcqb",
///             arn: "shesuqduavivrddwgrqtaukjv",
///             capacityType: "pkzjnsykbn",
///             clusterName: "qcbbidlhrczzbp",
///             diskSize: 14,
///             forceUpdateEnabled: true,
///             id: "y",
///             instanceTypes: ["gfy"],
///             labels: {
///                 key8269: "ymdbjmylynhangafbya",
///             },
///             launchTemplate: {
///                 id: "si",
///                 name: "gdqcgfql",
///                 version: "lonea",
///             },
///             nodeRole: "rzscoljnrtiueunqg",
///             nodegroupName: "wipo",
///             releaseVersion: "wbgbpvjsrkscfxkcbuatuirn",
///             remoteAccess: {
///                 ec2SshKey: "trwz",
///                 sourceSecurityGroups: ["jv"],
///             },
///             scalingConfig: {
///                 desiredSize: 2,
///                 maxSize: 22,
///                 minSize: 18,
///             },
///             subnets: ["jtzrxn"],
///             tags: {
///                 key1070: "ptrhctidulykbaakuqqqqpwbjf",
///             },
///             taints: [{
///                 effect: "cqyaskimdnuadazzlnzdgwjbg",
///                 key: "msxlxqepxrvkybvjeshfybwsx",
///                 value: "hfdagmnrdomthxavrf",
///             }],
///             updateConfig: {
///                 maxUnavailable: 24,
///                 maxUnavailablePercentage: 18,
///             },
///             version: "pzblimbasgkqgyknilzxktqx",
///         },
///         awsRegion: "glvfswwditueizhrpfvhiwm",
///         awsSourceSchema: "cizsekmbzwzgaklajexx",
///         awsTags: {
///             key7151: "fcroma",
///         },
///         publicCloudConnectorsResourceId: "val",
///         publicCloudResourceName: "aybzphomshbbtslocleyyvgcfu",
///     },
///     resourceGroupName: "rgeksNodegroup",
///     tags: {
///         key3889: "eznqfotstpbcylyajq",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// eks_nodegroup = azure_native.awsconnector.EksNodegroup("eksNodegroup",
///     location="qfzxiflpnxiua",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "ckgekeh",
///         "aws_account_id": "vfdqtwvbpgxbhqwrbowcnz",
///         "aws_properties": {
///             "ami_type": "cupzyobvolczhkenpdfcfcqb",
///             "arn": "shesuqduavivrddwgrqtaukjv",
///             "capacity_type": "pkzjnsykbn",
///             "cluster_name": "qcbbidlhrczzbp",
///             "disk_size": 14,
///             "force_update_enabled": True,
///             "id": "y",
///             "instance_types": ["gfy"],
///             "labels": {
///                 "key8269": "ymdbjmylynhangafbya",
///             },
///             "launch_template": {
///                 "id": "si",
///                 "name": "gdqcgfql",
///                 "version": "lonea",
///             },
///             "node_role": "rzscoljnrtiueunqg",
///             "nodegroup_name": "wipo",
///             "release_version": "wbgbpvjsrkscfxkcbuatuirn",
///             "remote_access": {
///                 "ec2_ssh_key": "trwz",
///                 "source_security_groups": ["jv"],
///             },
///             "scaling_config": {
///                 "desired_size": 2,
///                 "max_size": 22,
///                 "min_size": 18,
///             },
///             "subnets": ["jtzrxn"],
///             "tags": {
///                 "key1070": "ptrhctidulykbaakuqqqqpwbjf",
///             },
///             "taints": [{
///                 "effect": "cqyaskimdnuadazzlnzdgwjbg",
///                 "key": "msxlxqepxrvkybvjeshfybwsx",
///                 "value": "hfdagmnrdomthxavrf",
///             }],
///             "update_config": {
///                 "max_unavailable": 24,
///                 "max_unavailable_percentage": 18,
///             },
///             "version": "pzblimbasgkqgyknilzxktqx",
///         },
///         "aws_region": "glvfswwditueizhrpfvhiwm",
///         "aws_source_schema": "cizsekmbzwzgaklajexx",
///         "aws_tags": {
///             "key7151": "fcroma",
///         },
///         "public_cloud_connectors_resource_id": "val",
///         "public_cloud_resource_name": "aybzphomshbbtslocleyyvgcfu",
///     },
///     resource_group_name="rgeksNodegroup",
///     tags={
///         "key3889": "eznqfotstpbcylyajq",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   eksNodegroup:
///     type: azure-native:awsconnector:EksNodegroup
///     properties:
///       location: qfzxiflpnxiua
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: ckgekeh
///         awsAccountId: vfdqtwvbpgxbhqwrbowcnz
///         awsProperties:
///           amiType: cupzyobvolczhkenpdfcfcqb
///           arn: shesuqduavivrddwgrqtaukjv
///           capacityType: pkzjnsykbn
///           clusterName: qcbbidlhrczzbp
///           diskSize: 14
///           forceUpdateEnabled: true
///           id: y
///           instanceTypes:
///             - gfy
///           labels:
///             key8269: ymdbjmylynhangafbya
///           launchTemplate:
///             id: si
///             name: gdqcgfql
///             version: lonea
///           nodeRole: rzscoljnrtiueunqg
///           nodegroupName: wipo
///           releaseVersion: wbgbpvjsrkscfxkcbuatuirn
///           remoteAccess:
///             ec2SshKey: trwz
///             sourceSecurityGroups:
///               - jv
///           scalingConfig:
///             desiredSize: 2
///             maxSize: 22
///             minSize: 18
///           subnets:
///             - jtzrxn
///           tags:
///             key1070: ptrhctidulykbaakuqqqqpwbjf
///           taints:
///             - effect: cqyaskimdnuadazzlnzdgwjbg
///               key: msxlxqepxrvkybvjeshfybwsx
///               value: hfdagmnrdomthxavrf
///           updateConfig:
///             maxUnavailable: 24
///             maxUnavailablePercentage: 18
///           version: pzblimbasgkqgyknilzxktqx
///         awsRegion: glvfswwditueizhrpfvhiwm
///         awsSourceSchema: cizsekmbzwzgaklajexx
///         awsTags:
///           key7151: fcroma
///         publicCloudConnectorsResourceId: val
///         publicCloudResourceName: aybzphomshbbtslocleyyvgcfu
///       resourceGroupName: rgeksNodegroup
///       tags:
///         key3889: eznqfotstpbcylyajq
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
/// $ pulumi import azure-native:awsconnector:EksNodegroup ogznfdrmxkqrvhiqbjzd /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/eksNodegroups/{name}
/// ```
class EksNodegroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<EksNodegroupPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EksNodegroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EksNodegroup]. {@macro pulumi_awsconnector_eks_nodegroup_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EksNodegroup(
    String name, {
    EksNodegroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:awsconnector:EksNodegroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<EksNodegroupPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EksNodegroupPropertiesResponse.fromMap(
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
