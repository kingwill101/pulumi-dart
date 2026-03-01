import 'package:pulumi/pulumi.dart' as pulumi;
import 'chain_args.dart';
import 'chain_chain_config.dart';

/// Provides a CR Chain resource.
///
/// For information about CR Chain and how to use it, see [What is Chain](https://www.alibabacloud.com/help/en/acr/developer-reference/api-cr-2018-12-01-createchain).
///
/// > **NOTE:** Available since v1.161.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = new random.index.Integer("default", {
///     min: 100000,
///     max: 999999,
/// });
/// const defaultRegistryEnterpriseInstance = new alicloud.cr.RegistryEnterpriseInstance("default", {
///     paymentType: "Subscription",
///     period: 1,
///     renewPeriod: 0,
///     renewalStatus: "ManualRenewal",
///     instanceType: "Advanced",
///     instanceName: `${name}-${_default.result}`,
/// });
/// const defaultRegistryEnterpriseNamespace = new alicloud.cs.RegistryEnterpriseNamespace("default", {
///     instanceId: defaultRegistryEnterpriseInstance.id,
///     name: `${name}-${_default.result}`,
///     autoCreate: false,
///     defaultVisibility: "PUBLIC",
/// });
/// const defaultRegistryEnterpriseRepo = new alicloud.cs.RegistryEnterpriseRepo("default", {
///     instanceId: defaultRegistryEnterpriseInstance.id,
///     namespace: defaultRegistryEnterpriseNamespace.name,
///     name: `${name}-${_default.result}`,
///     summary: "this is summary of my new repo",
///     repoType: "PUBLIC",
///     detail: "this is a public repo",
/// });
/// const defaultChain = new alicloud.cr.Chain("default", {
///     chainConfigs: [{
///         nodes: [
///             {
///                 nodeConfigs: [{
///                     denyPolicies: [{}],
///                 }],
///                 enable: true,
///                 nodeName: "DOCKER_IMAGE_BUILD",
///             },
///             {
///                 nodeConfigs: [{
///                     denyPolicies: [{}],
///                 }],
///                 enable: true,
///                 nodeName: "DOCKER_IMAGE_PUSH",
///             },
///             {
///                 enable: true,
///                 nodeName: "VULNERABILITY_SCANNING",
///                 nodeConfigs: [{
///                     denyPolicies: [{
///                         issueLevel: "MEDIUM",
///                         issueCount: "1",
///                         action: "BLOCK_DELETE_TAG",
///                         logic: "AND",
///                     }],
///                 }],
///             },
///             {
///                 nodeConfigs: [{
///                     denyPolicies: [{}],
///                 }],
///                 enable: true,
///                 nodeName: "ACTIVATE_REPLICATION",
///             },
///             {
///                 nodeConfigs: [{
///                     denyPolicies: [{}],
///                 }],
///                 enable: true,
///                 nodeName: "TRIGGER",
///             },
///             {
///                 nodeConfigs: [{
///                     denyPolicies: [{}],
///                 }],
///                 enable: false,
///                 nodeName: "SNAPSHOT",
///             },
///             {
///                 nodeConfigs: [{
///                     denyPolicies: [{}],
///                 }],
///                 enable: false,
///                 nodeName: "TRIGGER_SNAPSHOT",
///             },
///         ],
///         routers: [
///             {
///                 froms: [{
///                     nodeName: "DOCKER_IMAGE_BUILD",
///                 }],
///                 tos: [{
///                     nodeName: "DOCKER_IMAGE_PUSH",
///                 }],
///             },
///             {
///                 froms: [{
///                     nodeName: "DOCKER_IMAGE_PUSH",
///                 }],
///                 tos: [{
///                     nodeName: "VULNERABILITY_SCANNING",
///                 }],
///             },
///             {
///                 froms: [{
///                     nodeName: "VULNERABILITY_SCANNING",
///                 }],
///                 tos: [{
///                     nodeName: "ACTIVATE_REPLICATION",
///                 }],
///             },
///             {
///                 froms: [{
///                     nodeName: "ACTIVATE_REPLICATION",
///                 }],
///                 tos: [{
///                     nodeName: "TRIGGER",
///                 }],
///             },
///             {
///                 froms: [{
///                     nodeName: "VULNERABILITY_SCANNING",
///                 }],
///                 tos: [{
///                     nodeName: "SNAPSHOT",
///                 }],
///             },
///             {
///                 froms: [{
///                     nodeName: "SNAPSHOT",
///                 }],
///                 tos: [{
///                     nodeName: "TRIGGER_SNAPSHOT",
///                 }],
///             },
///         ],
///     }],
///     chainName: `${name}-${_default.result}`,
///     description: name,
///     instanceId: defaultRegistryEnterpriseNamespace.instanceId,
///     repoName: defaultRegistryEnterpriseRepo.name,
///     repoNamespaceName: defaultRegistryEnterpriseNamespace.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = random.index.Integer("default",
///     min=100000,
///     max=999999)
/// default_registry_enterprise_instance = alicloud.cr.RegistryEnterpriseInstance("default",
///     payment_type="Subscription",
///     period=1,
///     renew_period=0,
///     renewal_status="ManualRenewal",
///     instance_type="Advanced",
///     instance_name=f"{name}-{default['result']}")
/// default_registry_enterprise_namespace = alicloud.cs.RegistryEnterpriseNamespace("default",
///     instance_id=default_registry_enterprise_instance.id,
///     name=f"{name}-{default['result']}",
///     auto_create=False,
///     default_visibility="PUBLIC")
/// default_registry_enterprise_repo = alicloud.cs.RegistryEnterpriseRepo("default",
///     instance_id=default_registry_enterprise_instance.id,
///     namespace=default_registry_enterprise_namespace.name,
///     name=f"{name}-{default['result']}",
///     summary="this is summary of my new repo",
///     repo_type="PUBLIC",
///     detail="this is a public repo")
/// default_chain = alicloud.cr.Chain("default",
///     chain_configs=[{
///         "nodes": [
///             {
///                 "node_configs": [{
///                     "deny_policies": [{}],
///                 }],
///                 "enable": True,
///                 "node_name": "DOCKER_IMAGE_BUILD",
///             },
///             {
///                 "node_configs": [{
///                     "deny_policies": [{}],
///                 }],
///                 "enable": True,
///                 "node_name": "DOCKER_IMAGE_PUSH",
///             },
///             {
///                 "enable": True,
///                 "node_name": "VULNERABILITY_SCANNING",
///                 "node_configs": [{
///                     "deny_policies": [{
///                         "issue_level": "MEDIUM",
///                         "issue_count": "1",
///                         "action": "BLOCK_DELETE_TAG",
///                         "logic": "AND",
///                     }],
///                 }],
///             },
///             {
///                 "node_configs": [{
///                     "deny_policies": [{}],
///                 }],
///                 "enable": True,
///                 "node_name": "ACTIVATE_REPLICATION",
///             },
///             {
///                 "node_configs": [{
///                     "deny_policies": [{}],
///                 }],
///                 "enable": True,
///                 "node_name": "TRIGGER",
///             },
///             {
///                 "node_configs": [{
///                     "deny_policies": [{}],
///                 }],
///                 "enable": False,
///                 "node_name": "SNAPSHOT",
///             },
///             {
///                 "node_configs": [{
///                     "deny_policies": [{}],
///                 }],
///                 "enable": False,
///                 "node_name": "TRIGGER_SNAPSHOT",
///             },
///         ],
///         "routers": [
///             {
///                 "froms": [{
///                     "node_name": "DOCKER_IMAGE_BUILD",
///                 }],
///                 "tos": [{
///                     "node_name": "DOCKER_IMAGE_PUSH",
///                 }],
///             },
///             {
///                 "froms": [{
///                     "node_name": "DOCKER_IMAGE_PUSH",
///                 }],
///                 "tos": [{
///                     "node_name": "VULNERABILITY_SCANNING",
///                 }],
///             },
///             {
///                 "froms": [{
///                     "node_name": "VULNERABILITY_SCANNING",
///                 }],
///                 "tos": [{
///                     "node_name": "ACTIVATE_REPLICATION",
///                 }],
///             },
///             {
///                 "froms": [{
///                     "node_name": "ACTIVATE_REPLICATION",
///                 }],
///                 "tos": [{
///                     "node_name": "TRIGGER",
///                 }],
///             },
///             {
///                 "froms": [{
///                     "node_name": "VULNERABILITY_SCANNING",
///                 }],
///                 "tos": [{
///                     "node_name": "SNAPSHOT",
///                 }],
///             },
///             {
///                 "froms": [{
///                     "node_name": "SNAPSHOT",
///                 }],
///                 "tos": [{
///                     "node_name": "TRIGGER_SNAPSHOT",
///                 }],
///             },
///         ],
///     }],
///     chain_name=f"{name}-{default['result']}",
///     description=name,
///     instance_id=default_registry_enterprise_namespace.instance_id,
///     repo_name=default_registry_enterprise_repo.name,
///     repo_namespace_name=default_registry_enterprise_namespace.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 100000,
///         Max = 999999,
///     });
///
///     var defaultRegistryEnterpriseInstance = new AliCloud.CR.RegistryEnterpriseInstance("default", new()
///     {
///         PaymentType = "Subscription",
///         Period = 1,
///         RenewPeriod = 0,
///         RenewalStatus = "ManualRenewal",
///         InstanceType = "Advanced",
///         InstanceName = $"{name}-{@default.Result}",
///     });
///
///     var defaultRegistryEnterpriseNamespace = new AliCloud.CS.RegistryEnterpriseNamespace("default", new()
///     {
///         InstanceId = defaultRegistryEnterpriseInstance.Id,
///         Name = $"{name}-{@default.Result}",
///         AutoCreate = false,
///         DefaultVisibility = "PUBLIC",
///     });
///
///     var defaultRegistryEnterpriseRepo = new AliCloud.CS.RegistryEnterpriseRepo("default", new()
///     {
///         InstanceId = defaultRegistryEnterpriseInstance.Id,
///         Namespace = defaultRegistryEnterpriseNamespace.Name,
///         Name = $"{name}-{@default.Result}",
///         Summary = "this is summary of my new repo",
///         RepoType = "PUBLIC",
///         Detail = "this is a public repo",
///     });
///
///     var defaultChain = new AliCloud.CR.Chain("default", new()
///     {
///         ChainConfigs = new[]
///         {
///             new AliCloud.CR.Inputs.ChainChainConfigArgs
///             {
///                 Nodes = new[]
///                 {
///                     new AliCloud.CR.Inputs.ChainChainConfigNodeArgs
///                     {
///                         NodeConfigs = new[]
///                         {
///                             new AliCloud.CR.Inputs.ChainChainConfigNodeNodeConfigArgs
///                             {
///                                 DenyPolicies = new[]
///                                 {
///                                     null,
///                                 },
///                             },
///                         },
///                         Enable = true,
///                         NodeName = "DOCKER_IMAGE_BUILD",
///                     },
///                     new AliCloud.CR.Inputs.ChainChainConfigNodeArgs
///                     {
///                         NodeConfigs = new[]
///                         {
///                             new AliCloud.CR.Inputs.ChainChainConfigNodeNodeConfigArgs
///                             {
///                                 DenyPolicies = new[]
///                                 {
///                                     null,
///                                 },
///                             },
///                         },
///                         Enable = true,
///                         NodeName = "DOCKER_IMAGE_PUSH",
///                     },
///                     new AliCloud.CR.Inputs.ChainChainConfigNodeArgs
///                     {
///                         Enable = true,
///                         NodeName = "VULNERABILITY_SCANNING",
///                         NodeConfigs = new[]
///                         {
///                             new AliCloud.CR.Inputs.ChainChainConfigNodeNodeConfigArgs
///                             {
///                                 DenyPolicies = new[]
///                                 {
///                                     new AliCloud.CR.Inputs.ChainChainConfigNodeNodeConfigDenyPolicyArgs
///                                     {
///                                         IssueLevel = "MEDIUM",
///                                         IssueCount = "1",
///                                         Action = "BLOCK_DELETE_TAG",
///                                         Logic = "AND",
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                     new AliCloud.CR.Inputs.ChainChainConfigNodeArgs
///                     {
///                         NodeConfigs = new[]
///                         {
///                             new AliCloud.CR.Inputs.ChainChainConfigNodeNodeConfigArgs
///                             {
///                                 DenyPolicies = new[]
///                                 {
///                                     null,
///                                 },
///                             },
///                         },
///                         Enable = true,
///                         NodeName = "ACTIVATE_REPLICATION",
///                     },
///                     new AliCloud.CR.Inputs.ChainChainConfigNodeArgs
///                     {
///                         NodeConfigs = new[]
///                         {
///                             new AliCloud.CR.Inputs.ChainChainConfigNodeNodeConfigArgs
///                             {
///                                 DenyPolicies = new[]
///                                 {
///                                     null,
///                                 },
///                             },
///                         },
///                         Enable = true,
///                         NodeName = "TRIGGER",
///                     },
///                     new AliCloud.CR.Inputs.ChainChainConfigNodeArgs
///                     {
///                         NodeConfigs = new[]
///                         {
///                             new AliCloud.CR.Inputs.ChainChainConfigNodeNodeConfigArgs
///                             {
///                                 DenyPolicies = new[]
///                                 {
///                                     null,
///                                 },
///                             },
///                         },
///                         Enable = false,
///                         NodeName = "SNAPSHOT",
///                     },
///                     new AliCloud.CR.Inputs.ChainChainConfigNodeArgs
///                     {
///                         NodeConfigs = new[]
///                         {
///                             new AliCloud.CR.Inputs.ChainChainConfigNodeNodeConfigArgs
///                             {
///                                 DenyPolicies = new[]
///                                 {
///                                     null,
///                                 },
///                             },
///                         },
///                         Enable = false,
///                         NodeName = "TRIGGER_SNAPSHOT",
///                     },
///                 },
///                 Routers = new[]
///                 {
///                     new AliCloud.CR.Inputs.ChainChainConfigRouterArgs
///                     {
///                         Froms = new[]
///                         {
///                             new AliCloud.CR.Inputs.ChainChainConfigRouterFromArgs
///                             {
///                                 NodeName = "DOCKER_IMAGE_BUILD",
///                             },
///                         },
///                         Tos = new[]
///                         {
///                             new AliCloud.CR.Inputs.ChainChainConfigRouterToArgs
///                             {
///                                 NodeName = "DOCKER_IMAGE_PUSH",
///                             },
///                         },
///                     },
///                     new AliCloud.CR.Inputs.ChainChainConfigRouterArgs
///                     {
///                         Froms = new[]
///                         {
///                             new AliCloud.CR.Inputs.ChainChainConfigRouterFromArgs
///                             {
///                                 NodeName = "DOCKER_IMAGE_PUSH",
///                             },
///                         },
///                         Tos = new[]
///                         {
///                             new AliCloud.CR.Inputs.ChainChainConfigRouterToArgs
///                             {
///                                 NodeName = "VULNERABILITY_SCANNING",
///                             },
///                         },
///                     },
///                     new AliCloud.CR.Inputs.ChainChainConfigRouterArgs
///                     {
///                         Froms = new[]
///                         {
///                             new AliCloud.CR.Inputs.ChainChainConfigRouterFromArgs
///                             {
///                                 NodeName = "VULNERABILITY_SCANNING",
///                             },
///                         },
///                         Tos = new[]
///                         {
///                             new AliCloud.CR.Inputs.ChainChainConfigRouterToArgs
///                             {
///                                 NodeName = "ACTIVATE_REPLICATION",
///                             },
///                         },
///                     },
///                     new AliCloud.CR.Inputs.ChainChainConfigRouterArgs
///                     {
///                         Froms = new[]
///                         {
///                             new AliCloud.CR.Inputs.ChainChainConfigRouterFromArgs
///                             {
///                                 NodeName = "ACTIVATE_REPLICATION",
///                             },
///                         },
///                         Tos = new[]
///                         {
///                             new AliCloud.CR.Inputs.ChainChainConfigRouterToArgs
///                             {
///                                 NodeName = "TRIGGER",
///                             },
///                         },
///                     },
///                     new AliCloud.CR.Inputs.ChainChainConfigRouterArgs
///                     {
///                         Froms = new[]
///                         {
///                             new AliCloud.CR.Inputs.ChainChainConfigRouterFromArgs
///                             {
///                                 NodeName = "VULNERABILITY_SCANNING",
///                             },
///                         },
///                         Tos = new[]
///                         {
///                             new AliCloud.CR.Inputs.ChainChainConfigRouterToArgs
///                             {
///                                 NodeName = "SNAPSHOT",
///                             },
///                         },
///                     },
///                     new AliCloud.CR.Inputs.ChainChainConfigRouterArgs
///                     {
///                         Froms = new[]
///                         {
///                             new AliCloud.CR.Inputs.ChainChainConfigRouterFromArgs
///                             {
///                                 NodeName = "SNAPSHOT",
///                             },
///                         },
///                         Tos = new[]
///                         {
///                             new AliCloud.CR.Inputs.ChainChainConfigRouterToArgs
///                             {
///                                 NodeName = "TRIGGER_SNAPSHOT",
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         ChainName = $"{name}-{@default.Result}",
///         Description = name,
///         InstanceId = defaultRegistryEnterpriseNamespace.InstanceId,
///         RepoName = defaultRegistryEnterpriseRepo.Name,
///         RepoNamespaceName = defaultRegistryEnterpriseNamespace.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cr"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cs"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 100000,
/// 			Max: 999999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRegistryEnterpriseInstance, err := cr.NewRegistryEnterpriseInstance(ctx, "default", &cr.RegistryEnterpriseInstanceArgs{
/// 			PaymentType:   pulumi.String("Subscription"),
/// 			Period:        pulumi.Int(1),
/// 			RenewPeriod:   pulumi.Int(0),
/// 			RenewalStatus: pulumi.String("ManualRenewal"),
/// 			InstanceType:  pulumi.String("Advanced"),
/// 			InstanceName:  pulumi.Sprintf("%v-%v", name, _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRegistryEnterpriseNamespace, err := cs.NewRegistryEnterpriseNamespace(ctx, "default", &cs.RegistryEnterpriseNamespaceArgs{
/// 			InstanceId:        defaultRegistryEnterpriseInstance.ID(),
/// 			Name:              pulumi.Sprintf("%v-%v", name, _default.Result),
/// 			AutoCreate:        pulumi.Bool(false),
/// 			DefaultVisibility: pulumi.String("PUBLIC"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRegistryEnterpriseRepo, err := cs.NewRegistryEnterpriseRepo(ctx, "default", &cs.RegistryEnterpriseRepoArgs{
/// 			InstanceId: defaultRegistryEnterpriseInstance.ID(),
/// 			Namespace:  defaultRegistryEnterpriseNamespace.Name,
/// 			Name:       pulumi.Sprintf("%v-%v", name, _default.Result),
/// 			Summary:    pulumi.String("this is summary of my new repo"),
/// 			RepoType:   pulumi.String("PUBLIC"),
/// 			Detail:     pulumi.String("this is a public repo"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cr.NewChain(ctx, "default", &cr.ChainArgs{
/// 			ChainConfigs: cr.ChainChainConfigArray{
/// 				&cr.ChainChainConfigArgs{
/// 					Nodes: cr.ChainChainConfigNodeArray{
/// 						&cr.ChainChainConfigNodeArgs{
/// 							NodeConfigs: cr.ChainChainConfigNodeNodeConfigArray{
/// 								&cr.ChainChainConfigNodeNodeConfigArgs{
/// 									DenyPolicies: cr.ChainChainConfigNodeNodeConfigDenyPolicyArray{
/// 										&cr.ChainChainConfigNodeNodeConfigDenyPolicyArgs{},
/// 									},
/// 								},
/// 							},
/// 							Enable:   pulumi.Bool(true),
/// 							NodeName: pulumi.String("DOCKER_IMAGE_BUILD"),
/// 						},
/// 						&cr.ChainChainConfigNodeArgs{
/// 							NodeConfigs: cr.ChainChainConfigNodeNodeConfigArray{
/// 								&cr.ChainChainConfigNodeNodeConfigArgs{
/// 									DenyPolicies: cr.ChainChainConfigNodeNodeConfigDenyPolicyArray{
/// 										&cr.ChainChainConfigNodeNodeConfigDenyPolicyArgs{},
/// 									},
/// 								},
/// 							},
/// 							Enable:   pulumi.Bool(true),
/// 							NodeName: pulumi.String("DOCKER_IMAGE_PUSH"),
/// 						},
/// 						&cr.ChainChainConfigNodeArgs{
/// 							Enable:   pulumi.Bool(true),
/// 							NodeName: pulumi.String("VULNERABILITY_SCANNING"),
/// 							NodeConfigs: cr.ChainChainConfigNodeNodeConfigArray{
/// 								&cr.ChainChainConfigNodeNodeConfigArgs{
/// 									DenyPolicies: cr.ChainChainConfigNodeNodeConfigDenyPolicyArray{
/// 										&cr.ChainChainConfigNodeNodeConfigDenyPolicyArgs{
/// 											IssueLevel: pulumi.String("MEDIUM"),
/// 											IssueCount: pulumi.String("1"),
/// 											Action:     pulumi.String("BLOCK_DELETE_TAG"),
/// 											Logic:      pulumi.String("AND"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 						&cr.ChainChainConfigNodeArgs{
/// 							NodeConfigs: cr.ChainChainConfigNodeNodeConfigArray{
/// 								&cr.ChainChainConfigNodeNodeConfigArgs{
/// 									DenyPolicies: cr.ChainChainConfigNodeNodeConfigDenyPolicyArray{
/// 										&cr.ChainChainConfigNodeNodeConfigDenyPolicyArgs{},
/// 									},
/// 								},
/// 							},
/// 							Enable:   pulumi.Bool(true),
/// 							NodeName: pulumi.String("ACTIVATE_REPLICATION"),
/// 						},
/// 						&cr.ChainChainConfigNodeArgs{
/// 							NodeConfigs: cr.ChainChainConfigNodeNodeConfigArray{
/// 								&cr.ChainChainConfigNodeNodeConfigArgs{
/// 									DenyPolicies: cr.ChainChainConfigNodeNodeConfigDenyPolicyArray{
/// 										&cr.ChainChainConfigNodeNodeConfigDenyPolicyArgs{},
/// 									},
/// 								},
/// 							},
/// 							Enable:   pulumi.Bool(true),
/// 							NodeName: pulumi.String("TRIGGER"),
/// 						},
/// 						&cr.ChainChainConfigNodeArgs{
/// 							NodeConfigs: cr.ChainChainConfigNodeNodeConfigArray{
/// 								&cr.ChainChainConfigNodeNodeConfigArgs{
/// 									DenyPolicies: cr.ChainChainConfigNodeNodeConfigDenyPolicyArray{
/// 										&cr.ChainChainConfigNodeNodeConfigDenyPolicyArgs{},
/// 									},
/// 								},
/// 							},
/// 							Enable:   pulumi.Bool(false),
/// 							NodeName: pulumi.String("SNAPSHOT"),
/// 						},
/// 						&cr.ChainChainConfigNodeArgs{
/// 							NodeConfigs: cr.ChainChainConfigNodeNodeConfigArray{
/// 								&cr.ChainChainConfigNodeNodeConfigArgs{
/// 									DenyPolicies: cr.ChainChainConfigNodeNodeConfigDenyPolicyArray{
/// 										&cr.ChainChainConfigNodeNodeConfigDenyPolicyArgs{},
/// 									},
/// 								},
/// 							},
/// 							Enable:   pulumi.Bool(false),
/// 							NodeName: pulumi.String("TRIGGER_SNAPSHOT"),
/// 						},
/// 					},
/// 					Routers: cr.ChainChainConfigRouterArray{
/// 						&cr.ChainChainConfigRouterArgs{
/// 							Froms: cr.ChainChainConfigRouterFromArray{
/// 								&cr.ChainChainConfigRouterFromArgs{
/// 									NodeName: pulumi.String("DOCKER_IMAGE_BUILD"),
/// 								},
/// 							},
/// 							Tos: cr.ChainChainConfigRouterToArray{
/// 								&cr.ChainChainConfigRouterToArgs{
/// 									NodeName: pulumi.String("DOCKER_IMAGE_PUSH"),
/// 								},
/// 							},
/// 						},
/// 						&cr.ChainChainConfigRouterArgs{
/// 							Froms: cr.ChainChainConfigRouterFromArray{
/// 								&cr.ChainChainConfigRouterFromArgs{
/// 									NodeName: pulumi.String("DOCKER_IMAGE_PUSH"),
/// 								},
/// 							},
/// 							Tos: cr.ChainChainConfigRouterToArray{
/// 								&cr.ChainChainConfigRouterToArgs{
/// 									NodeName: pulumi.String("VULNERABILITY_SCANNING"),
/// 								},
/// 							},
/// 						},
/// 						&cr.ChainChainConfigRouterArgs{
/// 							Froms: cr.ChainChainConfigRouterFromArray{
/// 								&cr.ChainChainConfigRouterFromArgs{
/// 									NodeName: pulumi.String("VULNERABILITY_SCANNING"),
/// 								},
/// 							},
/// 							Tos: cr.ChainChainConfigRouterToArray{
/// 								&cr.ChainChainConfigRouterToArgs{
/// 									NodeName: pulumi.String("ACTIVATE_REPLICATION"),
/// 								},
/// 							},
/// 						},
/// 						&cr.ChainChainConfigRouterArgs{
/// 							Froms: cr.ChainChainConfigRouterFromArray{
/// 								&cr.ChainChainConfigRouterFromArgs{
/// 									NodeName: pulumi.String("ACTIVATE_REPLICATION"),
/// 								},
/// 							},
/// 							Tos: cr.ChainChainConfigRouterToArray{
/// 								&cr.ChainChainConfigRouterToArgs{
/// 									NodeName: pulumi.String("TRIGGER"),
/// 								},
/// 							},
/// 						},
/// 						&cr.ChainChainConfigRouterArgs{
/// 							Froms: cr.ChainChainConfigRouterFromArray{
/// 								&cr.ChainChainConfigRouterFromArgs{
/// 									NodeName: pulumi.String("VULNERABILITY_SCANNING"),
/// 								},
/// 							},
/// 							Tos: cr.ChainChainConfigRouterToArray{
/// 								&cr.ChainChainConfigRouterToArgs{
/// 									NodeName: pulumi.String("SNAPSHOT"),
/// 								},
/// 							},
/// 						},
/// 						&cr.ChainChainConfigRouterArgs{
/// 							Froms: cr.ChainChainConfigRouterFromArray{
/// 								&cr.ChainChainConfigRouterFromArgs{
/// 									NodeName: pulumi.String("SNAPSHOT"),
/// 								},
/// 							},
/// 							Tos: cr.ChainChainConfigRouterToArray{
/// 								&cr.ChainChainConfigRouterToArgs{
/// 									NodeName: pulumi.String("TRIGGER_SNAPSHOT"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ChainName:         pulumi.Sprintf("%v-%v", name, _default.Result),
/// 			Description:       pulumi.String(name),
/// 			InstanceId:        defaultRegistryEnterpriseNamespace.InstanceId,
/// 			RepoName:          defaultRegistryEnterpriseRepo.Name,
/// 			RepoNamespaceName: defaultRegistryEnterpriseNamespace.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.cr.RegistryEnterpriseInstance;
/// import com.pulumi.alicloud.cr.RegistryEnterpriseInstanceArgs;
/// import com.pulumi.alicloud.cs.RegistryEnterpriseNamespace;
/// import com.pulumi.alicloud.cs.RegistryEnterpriseNamespaceArgs;
/// import com.pulumi.alicloud.cs.RegistryEnterpriseRepo;
/// import com.pulumi.alicloud.cs.RegistryEnterpriseRepoArgs;
/// import com.pulumi.alicloud.cr.Chain;
/// import com.pulumi.alicloud.cr.ChainArgs;
/// import com.pulumi.alicloud.cr.inputs.ChainChainConfigArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("tf-example");
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(100000)
///             .max(999999)
///             .build());
///
///         var defaultRegistryEnterpriseInstance = new RegistryEnterpriseInstance("defaultRegistryEnterpriseInstance", RegistryEnterpriseInstanceArgs.builder()
///             .paymentType("Subscription")
///             .period(1)
///             .renewPeriod(0)
///             .renewalStatus("ManualRenewal")
///             .instanceType("Advanced")
///             .instanceName(String.format("%s-%s", name,default_.result()))
///             .build());
///
///         var defaultRegistryEnterpriseNamespace = new RegistryEnterpriseNamespace("defaultRegistryEnterpriseNamespace", RegistryEnterpriseNamespaceArgs.builder()
///             .instanceId(defaultRegistryEnterpriseInstance.id())
///             .name(String.format("%s-%s", name,default_.result()))
///             .autoCreate(false)
///             .defaultVisibility("PUBLIC")
///             .build());
///
///         var defaultRegistryEnterpriseRepo = new RegistryEnterpriseRepo("defaultRegistryEnterpriseRepo", RegistryEnterpriseRepoArgs.builder()
///             .instanceId(defaultRegistryEnterpriseInstance.id())
///             .namespace(defaultRegistryEnterpriseNamespace.name())
///             .name(String.format("%s-%s", name,default_.result()))
///             .summary("this is summary of my new repo")
///             .repoType("PUBLIC")
///             .detail("this is a public repo")
///             .build());
///
///         var defaultChain = new Chain("defaultChain", ChainArgs.builder()
///             .chainConfigs(ChainChainConfigArgs.builder()
///                 .nodes(
///                     ChainChainConfigNodeArgs.builder()
///                         .nodeConfigs(ChainChainConfigNodeNodeConfigArgs.builder()
///                             .denyPolicies(ChainChainConfigNodeNodeConfigDenyPolicyArgs.builder()
///                                 .build())
///                             .build())
///                         .enable(true)
///                         .nodeName("DOCKER_IMAGE_BUILD")
///                         .build(),
///                     ChainChainConfigNodeArgs.builder()
///                         .nodeConfigs(ChainChainConfigNodeNodeConfigArgs.builder()
///                             .denyPolicies(ChainChainConfigNodeNodeConfigDenyPolicyArgs.builder()
///                                 .build())
///                             .build())
///                         .enable(true)
///                         .nodeName("DOCKER_IMAGE_PUSH")
///                         .build(),
///                     ChainChainConfigNodeArgs.builder()
///                         .enable(true)
///                         .nodeName("VULNERABILITY_SCANNING")
///                         .nodeConfigs(ChainChainConfigNodeNodeConfigArgs.builder()
///                             .denyPolicies(ChainChainConfigNodeNodeConfigDenyPolicyArgs.builder()
///                                 .issueLevel("MEDIUM")
///                                 .issueCount("1")
///                                 .action("BLOCK_DELETE_TAG")
///                                 .logic("AND")
///                                 .build())
///                             .build())
///                         .build(),
///                     ChainChainConfigNodeArgs.builder()
///                         .nodeConfigs(ChainChainConfigNodeNodeConfigArgs.builder()
///                             .denyPolicies(ChainChainConfigNodeNodeConfigDenyPolicyArgs.builder()
///                                 .build())
///                             .build())
///                         .enable(true)
///                         .nodeName("ACTIVATE_REPLICATION")
///                         .build(),
///                     ChainChainConfigNodeArgs.builder()
///                         .nodeConfigs(ChainChainConfigNodeNodeConfigArgs.builder()
///                             .denyPolicies(ChainChainConfigNodeNodeConfigDenyPolicyArgs.builder()
///                                 .build())
///                             .build())
///                         .enable(true)
///                         .nodeName("TRIGGER")
///                         .build(),
///                     ChainChainConfigNodeArgs.builder()
///                         .nodeConfigs(ChainChainConfigNodeNodeConfigArgs.builder()
///                             .denyPolicies(ChainChainConfigNodeNodeConfigDenyPolicyArgs.builder()
///                                 .build())
///                             .build())
///                         .enable(false)
///                         .nodeName("SNAPSHOT")
///                         .build(),
///                     ChainChainConfigNodeArgs.builder()
///                         .nodeConfigs(ChainChainConfigNodeNodeConfigArgs.builder()
///                             .denyPolicies(ChainChainConfigNodeNodeConfigDenyPolicyArgs.builder()
///                                 .build())
///                             .build())
///                         .enable(false)
///                         .nodeName("TRIGGER_SNAPSHOT")
///                         .build())
///                 .routers(
///                     ChainChainConfigRouterArgs.builder()
///                         .froms(ChainChainConfigRouterFromArgs.builder()
///                             .nodeName("DOCKER_IMAGE_BUILD")
///                             .build())
///                         .tos(ChainChainConfigRouterToArgs.builder()
///                             .nodeName("DOCKER_IMAGE_PUSH")
///                             .build())
///                         .build(),
///                     ChainChainConfigRouterArgs.builder()
///                         .froms(ChainChainConfigRouterFromArgs.builder()
///                             .nodeName("DOCKER_IMAGE_PUSH")
///                             .build())
///                         .tos(ChainChainConfigRouterToArgs.builder()
///                             .nodeName("VULNERABILITY_SCANNING")
///                             .build())
///                         .build(),
///                     ChainChainConfigRouterArgs.builder()
///                         .froms(ChainChainConfigRouterFromArgs.builder()
///                             .nodeName("VULNERABILITY_SCANNING")
///                             .build())
///                         .tos(ChainChainConfigRouterToArgs.builder()
///                             .nodeName("ACTIVATE_REPLICATION")
///                             .build())
///                         .build(),
///                     ChainChainConfigRouterArgs.builder()
///                         .froms(ChainChainConfigRouterFromArgs.builder()
///                             .nodeName("ACTIVATE_REPLICATION")
///                             .build())
///                         .tos(ChainChainConfigRouterToArgs.builder()
///                             .nodeName("TRIGGER")
///                             .build())
///                         .build(),
///                     ChainChainConfigRouterArgs.builder()
///                         .froms(ChainChainConfigRouterFromArgs.builder()
///                             .nodeName("VULNERABILITY_SCANNING")
///                             .build())
///                         .tos(ChainChainConfigRouterToArgs.builder()
///                             .nodeName("SNAPSHOT")
///                             .build())
///                         .build(),
///                     ChainChainConfigRouterArgs.builder()
///                         .froms(ChainChainConfigRouterFromArgs.builder()
///                             .nodeName("SNAPSHOT")
///                             .build())
///                         .tos(ChainChainConfigRouterToArgs.builder()
///                             .nodeName("TRIGGER_SNAPSHOT")
///                             .build())
///                         .build())
///                 .build())
///             .chainName(String.format("%s-%s", name,default_.result()))
///             .description(name)
///             .instanceId(defaultRegistryEnterpriseNamespace.instanceId())
///             .repoName(defaultRegistryEnterpriseRepo.name())
///             .repoNamespaceName(defaultRegistryEnterpriseNamespace.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 100000
///       max: 999999
///   defaultRegistryEnterpriseInstance:
///     type: alicloud:cr:RegistryEnterpriseInstance
///     name: default
///     properties:
///       paymentType: Subscription
///       period: 1
///       renewPeriod: 0
///       renewalStatus: ManualRenewal
///       instanceType: Advanced
///       instanceName: ${name}-${default.result}
///   defaultRegistryEnterpriseNamespace:
///     type: alicloud:cs:RegistryEnterpriseNamespace
///     name: default
///     properties:
///       instanceId: ${defaultRegistryEnterpriseInstance.id}
///       name: ${name}-${default.result}
///       autoCreate: false
///       defaultVisibility: PUBLIC
///   defaultRegistryEnterpriseRepo:
///     type: alicloud:cs:RegistryEnterpriseRepo
///     name: default
///     properties:
///       instanceId: ${defaultRegistryEnterpriseInstance.id}
///       namespace: ${defaultRegistryEnterpriseNamespace.name}
///       name: ${name}-${default.result}
///       summary: this is summary of my new repo
///       repoType: PUBLIC
///       detail: this is a public repo
///   defaultChain:
///     type: alicloud:cr:Chain
///     name: default
///     properties:
///       chainConfigs:
///         - nodes:
///             - nodeConfigs:
///                 - denyPolicies:
///                     - {}
///               enable: true
///               nodeName: DOCKER_IMAGE_BUILD
///             - nodeConfigs:
///                 - denyPolicies:
///                     - {}
///               enable: true
///               nodeName: DOCKER_IMAGE_PUSH
///             - enable: true
///               nodeName: VULNERABILITY_SCANNING
///               nodeConfigs:
///                 - denyPolicies:
///                     - issueLevel: MEDIUM
///                       issueCount: 1
///                       action: BLOCK_DELETE_TAG
///                       logic: AND
///             - nodeConfigs:
///                 - denyPolicies:
///                     - {}
///               enable: true
///               nodeName: ACTIVATE_REPLICATION
///             - nodeConfigs:
///                 - denyPolicies:
///                     - {}
///               enable: true
///               nodeName: TRIGGER
///             - nodeConfigs:
///                 - denyPolicies:
///                     - {}
///               enable: false
///               nodeName: SNAPSHOT
///             - nodeConfigs:
///                 - denyPolicies:
///                     - {}
///               enable: false
///               nodeName: TRIGGER_SNAPSHOT
///           routers:
///             - froms:
///                 - nodeName: DOCKER_IMAGE_BUILD
///               tos:
///                 - nodeName: DOCKER_IMAGE_PUSH
///             - froms:
///                 - nodeName: DOCKER_IMAGE_PUSH
///               tos:
///                 - nodeName: VULNERABILITY_SCANNING
///             - froms:
///                 - nodeName: VULNERABILITY_SCANNING
///               tos:
///                 - nodeName: ACTIVATE_REPLICATION
///             - froms:
///                 - nodeName: ACTIVATE_REPLICATION
///               tos:
///                 - nodeName: TRIGGER
///             - froms:
///                 - nodeName: VULNERABILITY_SCANNING
///               tos:
///                 - nodeName: SNAPSHOT
///             - froms:
///                 - nodeName: SNAPSHOT
///               tos:
///                 - nodeName: TRIGGER_SNAPSHOT
///       chainName: ${name}-${default.result}
///       description: ${name}
///       instanceId: ${defaultRegistryEnterpriseNamespace.instanceId}
///       repoName: ${defaultRegistryEnterpriseRepo.name}
///       repoNamespaceName: ${defaultRegistryEnterpriseNamespace.name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// CR Chain can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cr/chain:Chain example <instance_id>:<chain_id>
/// ```
class Chain extends pulumi.CustomResource {
  /// The configuration of delivery chain. See `chain_config` below. **NOTE:** This parameter must specify the correct value, otherwise the created resource will be incorrect.
  late final pulumi.Output<List<ChainChainConfig>?> chainConfigs;
  /// Delivery chain ID.
  late final pulumi.Output<String> chainId;
  /// The name of delivery chain. The length of the name is 1-64 characters, lowercase English letters and numbers, and the separators "_", "-", "." can be used, noted that the separator cannot be at the first or last position.
  late final pulumi.Output<String> chainName;
  /// The description delivery chain.
  late final pulumi.Output<String?> description;
  /// The ID of CR Enterprise Edition instance.
  late final pulumi.Output<String> instanceId;
  /// The name of CR Enterprise Edition repository. **NOTE:** This parameter must specify a correct value, otherwise the created resource will be incorrect.
  late final pulumi.Output<String?> repoName;
  /// The name of CR Enterprise Edition namespace. **NOTE:** This parameter must specify the correct value, otherwise the created resource will be incorrect.
  late final pulumi.Output<String?> repoNamespaceName;

  /// Creates a new [Chain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Chain]. {@macro pulumi_cr_chain_chain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Chain(
    String name, {
    ChainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cr/chain:Chain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.chainConfigs = registerOutput<List<ChainChainConfig>?>('chainConfigs');
    this.chainId = registerOutput<String>('chainId');
    this.chainName = registerOutput<String>('chainName');
    this.description = registerOutput<String?>('description');
    this.instanceId = registerOutput<String>('instanceId');
    this.repoName = registerOutput<String?>('repoName');
    this.repoNamespaceName = registerOutput<String?>('repoNamespaceName');
  }
}
