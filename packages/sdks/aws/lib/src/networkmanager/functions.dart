import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_args.dart';
import 'get_connection_result.dart';
import 'get_connections_args.dart';
import 'get_connections_result.dart';
import 'get_core_network_policy_document_args.dart';
import 'get_core_network_policy_document_result.dart';
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetConnectionArgs;
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
/// 			Tags: map[string]interface{}{
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetConnectionsArgs;
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

/// Generates a Core Network policy document in JSON format for use with resources that expect core network policy documents such as `awscc_networkmanager_core_network`. It follows the API definition from the [core-network-policy documentation](https://docs.aws.amazon.com/vpc/latest/cloudwan/cloudwan-policies-json.html).
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
///     coreNetworkConfigurations: [{
///         vpnEcmpSupport: false,
///         asnRanges: ["64512-64555"],
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
///     segmentActions: [{
///         action: "share",
///         mode: "attachment-route",
///         segment: "shared",
///         shareWiths: ["*"],
///     }],
///     attachmentPolicies: [
///         {
///             ruleNumber: 100,
///             conditionLogic: "or",
///             conditions: [{
///                 type: "tag-value",
///                 operator: "equals",
///                 key: "segment",
///                 value: "shared",
///             }],
///             action: {
///                 associationMethod: "constant",
///                 segment: "shared",
///             },
///         },
///         {
///             ruleNumber: 200,
///             conditionLogic: "or",
///             conditions: [{
///                 type: "tag-value",
///                 operator: "equals",
///                 key: "segment",
///                 value: "prod",
///             }],
///             action: {
///                 associationMethod: "constant",
///                 segment: "prod",
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.networkmanager.get_core_network_policy_document(core_network_configurations=[{
///         "vpn_ecmp_support": False,
///         "asn_ranges": ["64512-64555"],
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
///     ],
///     segment_actions=[{
///         "action": "share",
///         "mode": "attachment-route",
///         "segment": "shared",
///         "share_withs": ["*"],
///     }],
///     attachment_policies=[
///         {
///             "rule_number": 100,
///             "condition_logic": "or",
///             "conditions": [{
///                 "type": "tag-value",
///                 "operator": "equals",
///                 "key": "segment",
///                 "value": "shared",
///             }],
///             "action": {
///                 "association_method": "constant",
///                 "segment": "shared",
///             },
///         },
///         {
///             "rule_number": 200,
///             "condition_logic": "or",
///             "conditions": [{
///                 "type": "tag-value",
///                 "operator": "equals",
///                 "key": "segment",
///                 "value": "prod",
///             }],
///             "action": {
///                 "association_method": "constant",
///                 "segment": "prod",
///             },
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
///         CoreNetworkConfigurations = new[]
///         {
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationInputArgs
///             {
///                 VpnEcmpSupport = false,
///                 AsnRanges = new[]
///                 {
///                     "64512-64555",
///                 },
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
///         AttachmentPolicies = new[]
///         {
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentAttachmentPolicyInputArgs
///             {
///                 RuleNumber = 100,
///                 ConditionLogic = "or",
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
///                 Action = new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentAttachmentPolicyActionInputArgs
///                 {
///                     AssociationMethod = "constant",
///                     Segment = "shared",
///                 },
///             },
///             new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentAttachmentPolicyInputArgs
///             {
///                 RuleNumber = 200,
///                 ConditionLogic = "or",
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
///                 Action = new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentAttachmentPolicyActionInputArgs
///                 {
///                     AssociationMethod = "constant",
///                     Segment = "prod",
///                 },
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
/// 			CoreNetworkConfigurations: []networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfiguration{
/// 				{
/// 					VpnEcmpSupport: pulumi.BoolRef(false),
/// 					AsnRanges: []string{
/// 						"64512-64555",
/// 					},
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
/// 			AttachmentPolicies: []networkmanager.GetCoreNetworkPolicyDocumentAttachmentPolicy{
/// 				{
/// 					RuleNumber:     100,
/// 					ConditionLogic: pulumi.StringRef("or"),
/// 					Conditions: []networkmanager.GetCoreNetworkPolicyDocumentAttachmentPolicyCondition{
/// 						{
/// 							Type:     "tag-value",
/// 							Operator: pulumi.StringRef("equals"),
/// 							Key:      pulumi.StringRef("segment"),
/// 							Value:    pulumi.StringRef("shared"),
/// 						},
/// 					},
/// 					Action: {
/// 						AssociationMethod: pulumi.StringRef("constant"),
/// 						Segment:           pulumi.StringRef("shared"),
/// 					},
/// 				},
/// 				{
/// 					RuleNumber:     200,
/// 					ConditionLogic: pulumi.StringRef("or"),
/// 					Conditions: []networkmanager.GetCoreNetworkPolicyDocumentAttachmentPolicyCondition{
/// 						{
/// 							Type:     "tag-value",
/// 							Operator: pulumi.StringRef("equals"),
/// 							Key:      pulumi.StringRef("segment"),
/// 							Value:    pulumi.StringRef("prod"),
/// 						},
/// 					},
/// 					Action: {
/// 						AssociationMethod: pulumi.StringRef("constant"),
/// 						Segment:           pulumi.StringRef("prod"),
/// 					},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetCoreNetworkPolicyDocumentArgs;
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
///         final var test = NetworkmanagerFunctions.getCoreNetworkPolicyDocument(GetCoreNetworkPolicyDocumentArgs.builder()
///             .coreNetworkConfigurations(GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArgs.builder()
///                 .vpnEcmpSupport(false)
///                 .asnRanges("64512-64555")
///                 .edgeLocations(
///                     GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs.builder()
///                         .location("us-east-1")
///                         .asn("64512")
///                         .build(),
///                     GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs.builder()
///                         .location("eu-central-1")
///                         .asn("64513")
///                         .build())
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
///             .segmentActions(GetCoreNetworkPolicyDocumentSegmentActionArgs.builder()
///                 .action("share")
///                 .mode("attachment-route")
///                 .segment("shared")
///                 .shareWiths("*")
///                 .build())
///             .attachmentPolicies(
///                 GetCoreNetworkPolicyDocumentAttachmentPolicyArgs.builder()
///                     .ruleNumber(100)
///                     .conditionLogic("or")
///                     .conditions(GetCoreNetworkPolicyDocumentAttachmentPolicyConditionArgs.builder()
///                         .type("tag-value")
///                         .operator("equals")
///                         .key("segment")
///                         .value("shared")
///                         .build())
///                     .action(GetCoreNetworkPolicyDocumentAttachmentPolicyActionArgs.builder()
///                         .associationMethod("constant")
///                         .segment("shared")
///                         .build())
///                     .build(),
///                 GetCoreNetworkPolicyDocumentAttachmentPolicyArgs.builder()
///                     .ruleNumber(200)
///                     .conditionLogic("or")
///                     .conditions(GetCoreNetworkPolicyDocumentAttachmentPolicyConditionArgs.builder()
///                         .type("tag-value")
///                         .operator("equals")
///                         .key("segment")
///                         .value("prod")
///                         .build())
///                     .action(GetCoreNetworkPolicyDocumentAttachmentPolicyActionArgs.builder()
///                         .associationMethod("constant")
///                         .segment("prod")
///                         .build())
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
///         coreNetworkConfigurations:
///           - vpnEcmpSupport: false
///             asnRanges:
///               - 64512-64555
///             edgeLocations:
///               - location: us-east-1
///                 asn: 64512
///               - location: eu-central-1
///                 asn: 64513
///         segments:
///           - name: shared
///             description: Segment for shared services
///             requireAttachmentAcceptance: true
///           - name: prod
///             description: Segment for prod services
///             requireAttachmentAcceptance: true
///         segmentActions:
///           - action: share
///             mode: attachment-route
///             segment: shared
///             shareWiths:
///               - '*'
///         attachmentPolicies:
///           - ruleNumber: 100
///             conditionLogic: or
///             conditions:
///               - type: tag-value
///                 operator: equals
///                 key: segment
///                 value: shared
///             action:
///               associationMethod: constant
///               segment: shared
///           - ruleNumber: 200
///             conditionLogic: or
///             conditions:
///               - type: tag-value
///                 operator: equals
///                 key: segment
///                 value: prod
///             action:
///               associationMethod: constant
///               segment: prod
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetDeviceArgs;
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
/// 			Tags: map[string]interface{}{
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetDevicesArgs;
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetGlobalNetworkArgs;
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
/// 			Tags: map[string]interface{}{
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetGlobalNetworksArgs;
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetLinkArgs;
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
/// 			Tags: map[string]interface{}{
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetLinksArgs;
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetSiteArgs;
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
/// 			Tags: map[string]interface{}{
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetSitesArgs;
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
