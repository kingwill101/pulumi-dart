import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_args.dart';
import 'get_connection_result.dart';
import 'get_connections_args.dart';
import 'get_connections_result.dart';
import 'get_core_network_args.dart';
import 'get_core_network_policy_document_args.dart';
import 'get_core_network_policy_document_result.dart';
import 'get_core_network_result.dart';
import 'get_device_args.dart';
import 'get_device_result.dart';
import 'get_devices_args.dart';
import 'get_devices_result.dart';
import 'get_global_network_args.dart';
import 'get_global_network_result.dart';
import 'get_global_networks_args.dart';
import 'get_global_networks_result.dart';
import 'get_link_args.dart';
import 'get_link_result.dart';
import 'get_links_args.dart';
import 'get_links_result.dart';
import 'get_site_args.dart';
import 'get_site_result.dart';
import 'get_sites_args.dart';
import 'get_sites_result.dart';

/// Provides details about an existing Network Manager connection.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.networkmanager.getConnection({
///     globalNetworkId: globalNetworkId,
///     connectionId: connectionId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.get_connection(global_network_id=global_network_id,
///     connection_id=connection_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.NetworkManager.GetConnection.Invoke(new()
///     {
///         GlobalNetworkId = globalNetworkId,
///         ConnectionId = connectionId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkmanager.LookupConnection(ctx, &networkmanager.LookupConnectionArgs{
/// 			GlobalNetworkId: globalNetworkId,
/// 			ConnectionId:    connectionId,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_networkmanager_getconnection" "example" {
///   global_network_id = globalNetworkId
///   connection_id     = connectionId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetConnectionArgs;
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
///         final var example = NetworkmanagerFunctions.getConnection(GetConnectionArgs.builder()
///             .globalNetworkId(globalNetworkId)
///             .connectionId(connectionId)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:networkmanager:getConnection
///       arguments:
///         globalNetworkId: ${globalNetworkId}
///         connectionId: ${connectionId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networkmanager_get_connection_get_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionResult> getConnection(
  GetConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkmanager/getConnection:getConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionResult.fromMap(result);
}

pulumi.Output<GetConnectionResult> getConnectionOutput(
  GetConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:networkmanager/getConnection:getConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConnectionResult.fromMap);
}

/// Provides details about existing Network Manager connections.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.networkmanager.getConnections({
///     globalNetworkId: globalNetworkId,
///     tags: {
///         Env: "test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.get_connections(global_network_id=global_network_id,
///     tags={
///         "Env": "test",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.NetworkManager.GetConnections.Invoke(new()
///     {
///         GlobalNetworkId = globalNetworkId,
///         Tags =
///         {
///             { "Env", "test" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkmanager.GetConnections(ctx, &networkmanager.GetConnectionsArgs{
/// 			GlobalNetworkId: globalNetworkId,
/// 			Tags: map[string]string{
/// 				"Env": "test",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_networkmanager_getconnections" "example" {
///   global_network_id = globalNetworkId
///   tags = {
///     "Env" = "test"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetConnectionsArgs;
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
///         final var example = NetworkmanagerFunctions.getConnections(GetConnectionsArgs.builder()
///             .globalNetworkId(globalNetworkId)
///             .tags(Map.of("Env", "test"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:networkmanager:getConnections
///       arguments:
///         globalNetworkId: ${globalNetworkId}
///         tags:
///           Env: test
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networkmanager_get_connections_get_connections_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionsResult> getConnections(
  GetConnectionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkmanager/getConnections:getConnections',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionsResult.fromMap(result);
}

pulumi.Output<GetConnectionsResult> getConnectionsOutput(
  GetConnectionsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:networkmanager/getConnections:getConnections',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConnectionsResult.fromMap);
}

/// Provides details about an AWS Network Manager Core Network.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.networkmanager.getCoreNetwork({
///     coreNetworkId: "core-network-0123456789abcdef0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.get_core_network(core_network_id="core-network-0123456789abcdef0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.NetworkManager.GetCoreNetwork.Invoke(new()
///     {
///         CoreNetworkId = "core-network-0123456789abcdef0",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkmanager.LookupCoreNetwork(ctx, &networkmanager.LookupCoreNetworkArgs{
/// 			CoreNetworkId: "core-network-0123456789abcdef0",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_networkmanager_getcorenetwork" "example" {
///   core_network_id = "core-network-0123456789abcdef0"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetCoreNetworkArgs;
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
///         final var example = NetworkmanagerFunctions.getCoreNetwork(GetCoreNetworkArgs.builder()
///             .coreNetworkId("core-network-0123456789abcdef0")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:networkmanager:getCoreNetwork
///       arguments:
///         coreNetworkId: core-network-0123456789abcdef0
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networkmanager_get_core_network_get_core_network_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCoreNetworkResult> getCoreNetwork(
  GetCoreNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkmanager/getCoreNetwork:getCoreNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCoreNetworkResult.fromMap(result);
}

pulumi.Output<GetCoreNetworkResult> getCoreNetworkOutput(
  GetCoreNetworkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:networkmanager/getCoreNetwork:getCoreNetwork',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCoreNetworkResult.fromMap);
}

/// Generates a Core Network policy document in JSON format for use with resources that expect core network policy documents such as `awsccNetworkmanagerCoreNetwork`. It follows the API definition from the [core-network-policy documentation](https://docs.aws.amazon.com/vpc/latest/cloudwan/cloudwan-policies-json.html).
///
/// Using this data source to generate policy documents is *optional*. It is also valid to use literal JSON strings in your configuration or to use the `file` interpolation function to read a raw JSON policy document from a file.
///
///
///
/// ## Example Usage
///
/// ### Basic Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.networkmanager.getCoreNetworkPolicyDocument({
///     attachmentPolicies: [
///         {
///             action: {
///                 associationMethod: "constant",
///                 segment: "shared",
///             },
///             conditions: [{
///                 type: "tag-value",
///                 operator: "equals",
///                 key: "segment",
///                 value: "shared",
///             }],
///             ruleNumber: 100,
///             conditionLogic: "or",
///         },
///         {
///             action: {
///                 associationMethod: "constant",
///                 segment: "prod",
///             },
///             conditions: [{
///                 type: "tag-value",
///                 operator: "equals",
///                 key: "segment",
///                 value: "prod",
///             }],
///             ruleNumber: 200,
///             conditionLogic: "or",
///         },
///     ],
///     coreNetworkConfigurations: [{
///         edgeLocations: [
///             {
///                 location: "us-east-1",
///                 asn: "64512",
///             },
///             {
///                 location: "eu-central-1",
///                 asn: "64513",
///             },
///         ],
///         vpnEcmpSupport: false,
///         asnRanges: ["64512-64555"],
///     }],
///     segmentActions: [{
///         action: "share",
///         mode: "attachment-route",
///         segment: "shared",
///         shareWiths: ["*"],
///     }],
///     segments: [
///         {
///             name: "shared",
///             description: "Segment for shared services",
///             requireAttachmentAcceptance: true,
///         },
///         {
///             name: "prod",
///             description: "Segment for prod services",
///             requireAttachmentAcceptance: true,
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.networkmanager.get_core_network_policy_document(attachment_policies=[
///         {
///             "action": {
///                 "association_method": "constant",
///                 "segment": "shared",
///             },
///             "conditions": [{
///                 "type": "tag-value",
///                 "operator": "equals",
///                 "key": "segment",
///                 "value": "shared",
///             }],
///             "rule_number": 100,
///             "condition_logic": "or",
///         },
///         {
///             "action": {
///                 "association_method": "constant",
///                 "segment": "prod",
///             },
///             "conditions": [{
///                 "type": "tag-value",
///                 "operator": "equals",
///                 "key": "segment",
///                 "value": "prod",
///             }],
///             "rule_number": 200,
///             "condition_logic": "or",
///         },
///     ],
///     core_network_configurations=[{
///         "edge_locations": [
///             {
///                 "location": "us-east-1",
///                 "asn": "64512",
///             },
///             {
///                 "location": "eu-central-1",
///                 "asn": "64513",
///             },
///         ],
///         "vpn_ecmp_support": False,
///         "asn_ranges": ["64512-64555"],
///     }],
///     segment_actions=[{
///         "action": "share",
///         "mode": "attachment-route",
///         "segment": "shared",
///         "share_withs": ["*"],
///     }],
///     segments=[
///         {
///             "name": "shared",
///             "description": "Segment for shared services",
///             "require_attachment_acceptance": True,
///         },
///         {
///             "name": "prod",
///             "description": "Segment for prod services",
///             "require_attachment_acceptance": True,
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.NetworkManager.GetCoreNetworkPolicyDocument.Invoke(new()
///     {
///         AttachmentPolicies = new[]
///         {
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentAttachmentPolicyInputArgs
///             {
///                 Action = new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentAttachmentPolicyActionInputArgs
///                 {
///                     AssociationMethod = "constant",
///                     Segment = "shared",
///                 },
///                 Conditions = new[]
///                 {
///                     new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentAttachmentPolicyConditionInputArgs
///                     {
///                         Type = "tag-value",
///                         Operator = "equals",
///                         Key = "segment",
///                         Value = "shared",
///                     },
///                 },
///                 RuleNumber = 100,
///                 ConditionLogic = "or",
///             },
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentAttachmentPolicyInputArgs
///             {
///                 Action = new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentAttachmentPolicyActionInputArgs
///                 {
///                     AssociationMethod = "constant",
///                     Segment = "prod",
///                 },
///                 Conditions = new[]
///                 {
///                     new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentAttachmentPolicyConditionInputArgs
///                     {
///                         Type = "tag-value",
///                         Operator = "equals",
///                         Key = "segment",
///                         Value = "prod",
///                     },
///                 },
///                 RuleNumber = 200,
///                 ConditionLogic = "or",
///             },
///         },
///         CoreNetworkConfigurations = new[]
///         {
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationInputArgs
///             {
///                 EdgeLocations = new[]
///                 {
///                     new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationInputArgs
///                     {
///                         Location = "us-east-1",
///                         Asn = "64512",
///                     },
///                     new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationInputArgs
///                     {
///                         Location = "eu-central-1",
///                         Asn = "64513",
///                     },
///                 },
///                 VpnEcmpSupport = false,
///                 AsnRanges = new[]
///                 {
///                     "64512-64555",
///                 },
///             },
///         },
///         SegmentActions = new[]
///         {
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentActionInputArgs
///             {
///                 Action = "share",
///                 Mode = "attachment-route",
///                 Segment = "shared",
///                 ShareWiths = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///         Segments = new[]
///         {
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentInputArgs
///             {
///                 Name = "shared",
///                 Description = "Segment for shared services",
///                 RequireAttachmentAcceptance = true,
///             },
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentInputArgs
///             {
///                 Name = "prod",
///                 Description = "Segment for prod services",
///                 RequireAttachmentAcceptance = true,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkmanager.GetCoreNetworkPolicyDocument(ctx, &networkmanager.GetCoreNetworkPolicyDocumentArgs{
/// 			AttachmentPolicies: []networkmanager.GetCoreNetworkPolicyDocumentAttachmentPolicy{
/// 				{
/// 					Action: {
/// 						AssociationMethod: pulumi.StringRef("constant"),
/// 						Segment:           pulumi.StringRef("shared"),
/// 					},
/// 					Conditions: []networkmanager.GetCoreNetworkPolicyDocumentAttachmentPolicyCondition{
/// 						{
/// 							Type:     "tag-value",
/// 							Operator: pulumi.StringRef("equals"),
/// 							Key:      pulumi.StringRef("segment"),
/// 							Value:    pulumi.StringRef("shared"),
/// 						},
/// 					},
/// 					RuleNumber:     100,
/// 					ConditionLogic: pulumi.StringRef("or"),
/// 				},
/// 				{
/// 					Action: {
/// 						AssociationMethod: pulumi.StringRef("constant"),
/// 						Segment:           pulumi.StringRef("prod"),
/// 					},
/// 					Conditions: []networkmanager.GetCoreNetworkPolicyDocumentAttachmentPolicyCondition{
/// 						{
/// 							Type:     "tag-value",
/// 							Operator: pulumi.StringRef("equals"),
/// 							Key:      pulumi.StringRef("segment"),
/// 							Value:    pulumi.StringRef("prod"),
/// 						},
/// 					},
/// 					RuleNumber:     200,
/// 					ConditionLogic: pulumi.StringRef("or"),
/// 				},
/// 			},
/// 			CoreNetworkConfigurations: []networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfiguration{
/// 				{
/// 					EdgeLocations: []networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocation{
/// 						{
/// 							Location: "us-east-1",
/// 							Asn:      pulumi.StringRef("64512"),
/// 						},
/// 						{
/// 							Location: "eu-central-1",
/// 							Asn:      pulumi.StringRef("64513"),
/// 						},
/// 					},
/// 					VpnEcmpSupport: pulumi.BoolRef(false),
/// 					AsnRanges: []string{
/// 						"64512-64555",
/// 					},
/// 				},
/// 			},
/// 			SegmentActions: []networkmanager.GetCoreNetworkPolicyDocumentSegmentAction{
/// 				{
/// 					Action:  "share",
/// 					Mode:    pulumi.StringRef("attachment-route"),
/// 					Segment: "shared",
/// 					ShareWiths: []string{
/// 						"*",
/// 					},
/// 				},
/// 			},
/// 			Segments: []networkmanager.GetCoreNetworkPolicyDocumentSegment{
/// 				{
/// 					Name:                        "shared",
/// 					Description:                 pulumi.StringRef("Segment for shared services"),
/// 					RequireAttachmentAcceptance: pulumi.BoolRef(true),
/// 				},
/// 				{
/// 					Name:                        "prod",
/// 					Description:                 pulumi.StringRef("Segment for prod services"),
/// 					RequireAttachmentAcceptance: pulumi.BoolRef(true),
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_networkmanager_getcorenetworkpolicydocument" "test" {
///   attachment_policies {
///     action = {
///       association_method = "constant"
///       segment            = "shared"
///     }
///     conditions {
///       type     = "tag-value"
///       operator = "equals"
///       key      = "segment"
///       value    = "shared"
///     }
///     rule_number     = 100
///     condition_logic = "or"
///   }
///   attachment_policies {
///     action = {
///       association_method = "constant"
///       segment            = "prod"
///     }
///     conditions {
///       type     = "tag-value"
///       operator = "equals"
///       key      = "segment"
///       value    = "prod"
///     }
///     rule_number     = 200
///     condition_logic = "or"
///   }
///   core_network_configurations {
///     edge_locations {
///       location = "us-east-1"
///       asn      = 64512
///     }
///     edge_locations {
///       location = "eu-central-1"
///       asn      = 64513
///     }
///     vpn_ecmp_support = false
///     asn_ranges       = ["64512-64555"]
///   }
///   segment_actions {
///     action      = "share"
///     mode        = "attachment-route"
///     segment     = "shared"
///     share_withs = ["*"]
///   }
///   segments {
///     name                          = "shared"
///     description                   = "Segment for shared services"
///     require_attachment_acceptance = true
///   }
///   segments {
///     name                          = "prod"
///     description                   = "Segment for prod services"
///     require_attachment_acceptance = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetCoreNetworkPolicyDocumentArgs;
/// import com.pulumi.aws.networkmanager.inputs.GetCoreNetworkPolicyDocumentAttachmentPolicyArgs;
/// import com.pulumi.aws.networkmanager.inputs.GetCoreNetworkPolicyDocumentAttachmentPolicyActionArgs;
/// import com.pulumi.aws.networkmanager.inputs.GetCoreNetworkPolicyDocumentAttachmentPolicyConditionArgs;
/// import com.pulumi.aws.networkmanager.inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArgs;
/// import com.pulumi.aws.networkmanager.inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs;
/// import com.pulumi.aws.networkmanager.inputs.GetCoreNetworkPolicyDocumentSegmentActionArgs;
/// import com.pulumi.aws.networkmanager.inputs.GetCoreNetworkPolicyDocumentSegmentArgs;
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
///         final var test = NetworkmanagerFunctions.getCoreNetworkPolicyDocument(GetCoreNetworkPolicyDocumentArgs.builder()
///             .attachmentPolicies(
///                 GetCoreNetworkPolicyDocumentAttachmentPolicyArgs.builder()
///                     .action(GetCoreNetworkPolicyDocumentAttachmentPolicyActionArgs.builder()
///                         .associationMethod("constant")
///                         .segment("shared")
///                         .build())
///                     .conditions(GetCoreNetworkPolicyDocumentAttachmentPolicyConditionArgs.builder()
///                         .type("tag-value")
///                         .operator("equals")
///                         .key("segment")
///                         .value("shared")
///                         .build())
///                     .ruleNumber(100)
///                     .conditionLogic("or")
///                     .build(),
///                 GetCoreNetworkPolicyDocumentAttachmentPolicyArgs.builder()
///                     .action(GetCoreNetworkPolicyDocumentAttachmentPolicyActionArgs.builder()
///                         .associationMethod("constant")
///                         .segment("prod")
///                         .build())
///                     .conditions(GetCoreNetworkPolicyDocumentAttachmentPolicyConditionArgs.builder()
///                         .type("tag-value")
///                         .operator("equals")
///                         .key("segment")
///                         .value("prod")
///                         .build())
///                     .ruleNumber(200)
///                     .conditionLogic("or")
///                     .build())
///             .coreNetworkConfigurations(GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArgs.builder()
///                 .edgeLocations(
///                     GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs.builder()
///                         .location("us-east-1")
///                         .asn("64512")
///                         .build(),
///                     GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs.builder()
///                         .location("eu-central-1")
///                         .asn("64513")
///                         .build())
///                 .vpnEcmpSupport(false)
///                 .asnRanges("64512-64555")
///                 .build())
///             .segmentActions(GetCoreNetworkPolicyDocumentSegmentActionArgs.builder()
///                 .action("share")
///                 .mode("attachment-route")
///                 .segment("shared")
///                 .shareWiths("*")
///                 .build())
///             .segments(
///                 GetCoreNetworkPolicyDocumentSegmentArgs.builder()
///                     .name("shared")
///                     .description("Segment for shared services")
///                     .requireAttachmentAcceptance(true)
///                     .build(),
///                 GetCoreNetworkPolicyDocumentSegmentArgs.builder()
///                     .name("prod")
///                     .description("Segment for prod services")
///                     .requireAttachmentAcceptance(true)
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:networkmanager:getCoreNetworkPolicyDocument
///       arguments:
///         attachmentPolicies:
///           - action:
///               associationMethod: constant
///               segment: shared
///             conditions:
///               - type: tag-value
///                 operator: equals
///                 key: segment
///                 value: shared
///             ruleNumber: 100
///             conditionLogic: or
///           - action:
///               associationMethod: constant
///               segment: prod
///             conditions:
///               - type: tag-value
///                 operator: equals
///                 key: segment
///                 value: prod
///             ruleNumber: 200
///             conditionLogic: or
///         coreNetworkConfigurations:
///           - edgeLocations:
///               - location: us-east-1
///                 asn: 64512
///               - location: eu-central-1
///                 asn: 64513
///             vpnEcmpSupport: false
///             asnRanges:
///               - 64512-64555
///         segmentActions:
///           - action: share
///             mode: attachment-route
///             segment: shared
///             shareWiths:
///               - '*'
///         segments:
///           - name: shared
///             description: Segment for shared services
///             requireAttachmentAcceptance: true
///           - name: prod
///             description: Segment for prod services
///             requireAttachmentAcceptance: true
/// ```
///
///
/// `data.aws_networkmanager_core_network_policy_document.test.json` will evaluate to:
///
/// ```json
/// {
///   "version": "2021.12",
///   "core-network-configuration": {
///     "asn-ranges": [
///       "64512-64555"
///     ],
///     "vpn-ecmp-support": false,
///     "edge-locations": [
///       {
///         "location": "us-east-1",
///         "asn": 64512
///       },
///       {
///         "location": "eu-central-1",
///         "asn": 64513
///       }
///     ]
///   },
///   "segments": [
///     {
///       "name": "shared",
///       "description": "Segment for shared services",
///       "require-attachment-acceptance": true
///     },
///     {
///       "name": "prod",
///       "description": "Segment for prod services",
///       "require-attachment-acceptance": true
///     }
///   ],
///   "attachment-policies": [
///     {
///       "rule-number": 100,
///       "action": {
///         "association-method": "constant",
///         "segment": "shared"
///       },
///       "conditions": [
///         {
///           "type": "tag-value",
///           "operator": "equals",
///           "key": "segment",
///           "value": "shared"
///         }
///       ],
///       "condition-logic": "or"
///     },
///     {
///       "rule-number": 200,
///       "action": {
///         "association-method": "constant",
///         "segment": "prod"
///       },
///       "conditions": [
///         {
///           "type": "tag-value",
///           "operator": "equals",
///           "key": "segment",
///           "value": "prod"
///         }
///       ],
///       "condition-logic": "or"
///     }
///   ],
///   "segment-actions": [
///     {
///       "action": "share",
///       "mode": "attachment-route",
///       "segment": "shared",
///       "share-with": "*"
///     }
///   ]
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networkmanager_get_core_network_policy_document_get_core_network_policy_document_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCoreNetworkPolicyDocumentResult> getCoreNetworkPolicyDocument(
  GetCoreNetworkPolicyDocumentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkmanager/getCoreNetworkPolicyDocument:getCoreNetworkPolicyDocument',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCoreNetworkPolicyDocumentResult.fromMap(result);
}

pulumi.Output<GetCoreNetworkPolicyDocumentResult> getCoreNetworkPolicyDocumentOutput(
  GetCoreNetworkPolicyDocumentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:networkmanager/getCoreNetworkPolicyDocument:getCoreNetworkPolicyDocument',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCoreNetworkPolicyDocumentResult.fromMap);
}

/// Provides details about an existing Network Manager device.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.networkmanager.getDevice({
///     globalNetworkId: globalNetworkId,
///     deviceId: deviceId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.get_device(global_network_id=global_network_id,
///     device_id=device_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.NetworkManager.GetDevice.Invoke(new()
///     {
///         GlobalNetworkId = globalNetworkId,
///         DeviceId = deviceId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkmanager.LookupDevice(ctx, &networkmanager.LookupDeviceArgs{
/// 			GlobalNetworkId: globalNetworkId,
/// 			DeviceId:        deviceId,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_networkmanager_getdevice" "example" {
///   global_network_id = globalNetworkId
///   device_id         = deviceId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetDeviceArgs;
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
///         final var example = NetworkmanagerFunctions.getDevice(GetDeviceArgs.builder()
///             .globalNetworkId(globalNetworkId)
///             .deviceId(deviceId)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:networkmanager:getDevice
///       arguments:
///         globalNetworkId: ${globalNetworkId}
///         deviceId: ${deviceId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networkmanager_get_device_get_device_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeviceResult> getDevice(
  GetDeviceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkmanager/getDevice:getDevice',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeviceResult.fromMap(result);
}

pulumi.Output<GetDeviceResult> getDeviceOutput(
  GetDeviceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:networkmanager/getDevice:getDevice',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDeviceResult.fromMap);
}

/// Provides details about existing Network Manager devices.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.networkmanager.getDevices({
///     globalNetworkId: globalNetworkId,
///     tags: {
///         Env: "test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.get_devices(global_network_id=global_network_id,
///     tags={
///         "Env": "test",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.NetworkManager.GetDevices.Invoke(new()
///     {
///         GlobalNetworkId = globalNetworkId,
///         Tags =
///         {
///             { "Env", "test" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkmanager.GetDevices(ctx, &networkmanager.GetDevicesArgs{
/// 			GlobalNetworkId: globalNetworkId,
/// 			Tags: map[string]string{
/// 				"Env": "test",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_networkmanager_getdevices" "example" {
///   global_network_id = globalNetworkId
///   tags = {
///     "Env" = "test"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetDevicesArgs;
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
///         final var example = NetworkmanagerFunctions.getDevices(GetDevicesArgs.builder()
///             .globalNetworkId(globalNetworkId)
///             .tags(Map.of("Env", "test"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:networkmanager:getDevices
///       arguments:
///         globalNetworkId: ${globalNetworkId}
///         tags:
///           Env: test
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networkmanager_get_devices_get_devices_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDevicesResult> getDevices(
  GetDevicesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkmanager/getDevices:getDevices',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDevicesResult.fromMap(result);
}

pulumi.Output<GetDevicesResult> getDevicesOutput(
  GetDevicesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:networkmanager/getDevices:getDevices',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDevicesResult.fromMap);
}

/// Provides details about an existing Network Manager global network.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.networkmanager.getGlobalNetwork({
///     globalNetworkId: globalNetworkId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.get_global_network(global_network_id=global_network_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.NetworkManager.GetGlobalNetwork.Invoke(new()
///     {
///         GlobalNetworkId = globalNetworkId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkmanager.LookupGlobalNetwork(ctx, &networkmanager.LookupGlobalNetworkArgs{
/// 			GlobalNetworkId: globalNetworkId,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_networkmanager_getglobalnetwork" "example" {
///   global_network_id = globalNetworkId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetGlobalNetworkArgs;
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
///         final var example = NetworkmanagerFunctions.getGlobalNetwork(GetGlobalNetworkArgs.builder()
///             .globalNetworkId(globalNetworkId)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:networkmanager:getGlobalNetwork
///       arguments:
///         globalNetworkId: ${globalNetworkId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networkmanager_get_global_network_get_global_network_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGlobalNetworkResult> getGlobalNetwork(
  GetGlobalNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkmanager/getGlobalNetwork:getGlobalNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalNetworkResult.fromMap(result);
}

pulumi.Output<GetGlobalNetworkResult> getGlobalNetworkOutput(
  GetGlobalNetworkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:networkmanager/getGlobalNetwork:getGlobalNetwork',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGlobalNetworkResult.fromMap);
}

/// Provides details about existing Network Manager global networks.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.networkmanager.getGlobalNetworks({
///     tags: {
///         Env: "test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.get_global_networks(tags={
///     "Env": "test",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.NetworkManager.GetGlobalNetworks.Invoke(new()
///     {
///         Tags =
///         {
///             { "Env", "test" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkmanager.GetGlobalNetworks(ctx, &networkmanager.GetGlobalNetworksArgs{
/// 			Tags: map[string]string{
/// 				"Env": "test",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_networkmanager_getglobalnetworks" "example" {
///   tags = {
///     "Env" = "test"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetGlobalNetworksArgs;
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
///         final var example = NetworkmanagerFunctions.getGlobalNetworks(GetGlobalNetworksArgs.builder()
///             .tags(Map.of("Env", "test"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:networkmanager:getGlobalNetworks
///       arguments:
///         tags:
///           Env: test
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networkmanager_get_global_networks_get_global_networks_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGlobalNetworksResult> getGlobalNetworks(
  GetGlobalNetworksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkmanager/getGlobalNetworks:getGlobalNetworks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalNetworksResult.fromMap(result);
}

pulumi.Output<GetGlobalNetworksResult> getGlobalNetworksOutput(
  GetGlobalNetworksArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:networkmanager/getGlobalNetworks:getGlobalNetworks',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGlobalNetworksResult.fromMap);
}

/// Provides details about an existing Network Manager link.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.networkmanager.getLink({
///     globalNetworkId: globalNetworkId,
///     linkId: linkId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.get_link(global_network_id=global_network_id,
///     link_id=link_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.NetworkManager.GetLink.Invoke(new()
///     {
///         GlobalNetworkId = globalNetworkId,
///         LinkId = linkId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkmanager.LookupLink(ctx, &networkmanager.LookupLinkArgs{
/// 			GlobalNetworkId: globalNetworkId,
/// 			LinkId:          linkId,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_networkmanager_getlink" "example" {
///   global_network_id = globalNetworkId
///   link_id           = linkId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetLinkArgs;
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
///         final var example = NetworkmanagerFunctions.getLink(GetLinkArgs.builder()
///             .globalNetworkId(globalNetworkId)
///             .linkId(linkId)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:networkmanager:getLink
///       arguments:
///         globalNetworkId: ${globalNetworkId}
///         linkId: ${linkId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networkmanager_get_link_get_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLinkResult> getLink(
  GetLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkmanager/getLink:getLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLinkResult.fromMap(result);
}

pulumi.Output<GetLinkResult> getLinkOutput(
  GetLinkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:networkmanager/getLink:getLink',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLinkResult.fromMap);
}

/// Provides details about existing Network Manager links.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.networkmanager.getLinks({
///     globalNetworkId: globalNetworkId,
///     tags: {
///         Env: "test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.get_links(global_network_id=global_network_id,
///     tags={
///         "Env": "test",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.NetworkManager.GetLinks.Invoke(new()
///     {
///         GlobalNetworkId = globalNetworkId,
///         Tags =
///         {
///             { "Env", "test" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkmanager.GetLinks(ctx, &networkmanager.GetLinksArgs{
/// 			GlobalNetworkId: globalNetworkId,
/// 			Tags: map[string]string{
/// 				"Env": "test",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_networkmanager_getlinks" "example" {
///   global_network_id = globalNetworkId
///   tags = {
///     "Env" = "test"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetLinksArgs;
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
///         final var example = NetworkmanagerFunctions.getLinks(GetLinksArgs.builder()
///             .globalNetworkId(globalNetworkId)
///             .tags(Map.of("Env", "test"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:networkmanager:getLinks
///       arguments:
///         globalNetworkId: ${globalNetworkId}
///         tags:
///           Env: test
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networkmanager_get_links_get_links_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLinksResult> getLinks(
  GetLinksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkmanager/getLinks:getLinks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLinksResult.fromMap(result);
}

pulumi.Output<GetLinksResult> getLinksOutput(
  GetLinksArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:networkmanager/getLinks:getLinks',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLinksResult.fromMap);
}

/// Provides details about an existing Network Manager site.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.networkmanager.getSite({
///     globalNetworkId: globalNetworkId,
///     siteId: siteId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.get_site(global_network_id=global_network_id,
///     site_id=site_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.NetworkManager.GetSite.Invoke(new()
///     {
///         GlobalNetworkId = globalNetworkId,
///         SiteId = siteId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkmanager.LookupSite(ctx, &networkmanager.LookupSiteArgs{
/// 			GlobalNetworkId: globalNetworkId,
/// 			SiteId:          siteId,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_networkmanager_getsite" "example" {
///   global_network_id = globalNetworkId
///   site_id           = siteId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetSiteArgs;
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
///         final var example = NetworkmanagerFunctions.getSite(GetSiteArgs.builder()
///             .globalNetworkId(globalNetworkId)
///             .siteId(siteId)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:networkmanager:getSite
///       arguments:
///         globalNetworkId: ${globalNetworkId}
///         siteId: ${siteId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networkmanager_get_site_get_site_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSiteResult> getSite(
  GetSiteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkmanager/getSite:getSite',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSiteResult.fromMap(result);
}

pulumi.Output<GetSiteResult> getSiteOutput(
  GetSiteArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:networkmanager/getSite:getSite',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSiteResult.fromMap);
}

/// Provides details about existing Network Manager sites.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.networkmanager.getSites({
///     globalNetworkId: globalNetworkId,
///     tags: {
///         Env: "test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.get_sites(global_network_id=global_network_id,
///     tags={
///         "Env": "test",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.NetworkManager.GetSites.Invoke(new()
///     {
///         GlobalNetworkId = globalNetworkId,
///         Tags =
///         {
///             { "Env", "test" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkmanager.GetSites(ctx, &networkmanager.GetSitesArgs{
/// 			GlobalNetworkId: globalNetworkId,
/// 			Tags: map[string]string{
/// 				"Env": "test",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_networkmanager_getsites" "example" {
///   global_network_id = globalNetworkId
///   tags = {
///     "Env" = "test"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetSitesArgs;
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
///         final var example = NetworkmanagerFunctions.getSites(GetSitesArgs.builder()
///             .globalNetworkId(globalNetworkId)
///             .tags(Map.of("Env", "test"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:networkmanager:getSites
///       arguments:
///         globalNetworkId: ${globalNetworkId}
///         tags:
///           Env: test
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networkmanager_get_sites_get_sites_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSitesResult> getSites(
  GetSitesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkmanager/getSites:getSites',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSitesResult.fromMap(result);
}

pulumi.Output<GetSitesResult> getSitesOutput(
  GetSitesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:networkmanager/getSites:getSites',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSitesResult.fromMap);
}
