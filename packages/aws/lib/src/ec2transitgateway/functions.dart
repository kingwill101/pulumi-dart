import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_attachment_args.dart';
import 'get_attachment_result.dart';
import 'get_attachments_args.dart';
import 'get_attachments_result.dart';
import 'get_connect_args.dart';
import 'get_connect_peer_args.dart';
import 'get_connect_peer_result.dart';
import 'get_connect_result.dart';
import 'get_direct_connect_gateway_attachment_args.dart';
import 'get_direct_connect_gateway_attachment_result.dart';
import 'get_multicast_domain_args.dart';
import 'get_multicast_domain_result.dart';
import 'get_peering_attachment_args.dart';
import 'get_peering_attachment_result.dart';
import 'get_peering_attachments_args.dart';
import 'get_peering_attachments_result.dart';
import 'get_route_table_args.dart';
import 'get_route_table_associations_args.dart';
import 'get_route_table_associations_result.dart';
import 'get_route_table_propagations_args.dart';
import 'get_route_table_propagations_result.dart';
import 'get_route_table_result.dart';
import 'get_route_table_routes_args.dart';
import 'get_route_table_routes_result.dart';
import 'get_transit_gateway_args.dart';
import 'get_transit_gateway_result.dart';
import 'get_vpc_attachment_args.dart';
import 'get_vpc_attachment_result.dart';
import 'get_vpc_attachments_args.dart';
import 'get_vpc_attachments_result.dart';
import 'get_vpn_attachment_args.dart';
import 'get_vpn_attachment_result.dart';

/// Get information on an EC2 Transit Gateway's attachment to a resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2transitgateway.getAttachment({
///     filters: [
///         {
///             name: "transit-gateway-id",
///             values: [exampleAwsEc2TransitGateway.id],
///         },
///         {
///             name: "resource-type",
///             values: ["peering"],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.get_attachment(filters=[
///     {
///         "name": "transit-gateway-id",
///         "values": [example_aws_ec2_transit_gateway["id"]],
///     },
///     {
///         "name": "resource-type",
///         "values": ["peering"],
///     },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2TransitGateway.GetAttachment.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2TransitGateway.Inputs.GetAttachmentFilterInputArgs
///             {
///                 Name = "transit-gateway-id",
///                 Values = new[]
///                 {
///                     exampleAwsEc2TransitGateway.Id,
///                 },
///             },
///             new Aws.Ec2TransitGateway.Inputs.GetAttachmentFilterInputArgs
///             {
///                 Name = "resource-type",
///                 Values = new[]
///                 {
///                     "peering",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2transitgateway.GetAttachment(ctx, &ec2transitgateway.GetAttachmentArgs{
/// Filters: []ec2transitgateway.GetAttachmentFilter{
/// {
/// Name: "transit-gateway-id",
/// Values: interface{}{
/// exampleAwsEc2TransitGateway.Id,
/// },
/// },
/// {
/// Name: "resource-type",
/// Values: []string{
/// "peering",
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2transitgateway.Ec2transitgatewayFunctions;
/// import com.pulumi.aws.ec2transitgateway.inputs.GetAttachmentArgs;
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
///         final var example = Ec2transitgatewayFunctions.getAttachment(GetAttachmentArgs.builder()
///             .filters(
///                 GetAttachmentFilterArgs.builder()
///                     .name("transit-gateway-id")
///                     .values(exampleAwsEc2TransitGateway.id())
///                     .build(),
///                 GetAttachmentFilterArgs.builder()
///                     .name("resource-type")
///                     .values("peering")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2transitgateway:getAttachment
///       arguments:
///         filters:
///           - name: transit-gateway-id
///             values:
///               - ${exampleAwsEc2TransitGateway.id}
///           - name: resource-type
///             values:
///               - peering
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2transitgateway_get_attachment_get_attachment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAttachmentResult> getAttachment(
  GetAttachmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getAttachment:getAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAttachmentResult.fromMap(result);
}

/// Get information on EC2 Transit Gateway Attachments.
///
/// ## Example Usage
///
/// ### By Filter
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const filtered = aws.ec2transitgateway.getAttachments({
///     filters: [
///         {
///             name: "state",
///             values: ["pendingAcceptance"],
///         },
///         {
///             name: "resource-type",
///             values: ["vpc"],
///         },
///     ],
/// });
/// const unit = .map(__index => (aws.ec2transitgateway.getAttachment({
///     transitGatewayAttachmentId: _arg0_.ids[__index],
/// })));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// filtered = aws.ec2transitgateway.get_attachments(filters=[
///     {
///         "name": "state",
///         "values": ["pendingAcceptance"],
///     },
///     {
///         "name": "resource-type",
///         "values": ["vpc"],
///     },
/// ])
/// unit = [aws.ec2transitgateway.get_attachment(transit_gateway_attachment_id=filtered.ids[__index]) for __index in len(filtered.ids).apply(lambda length: range(length))]
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var filtered = Aws.Ec2TransitGateway.GetAttachments.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2TransitGateway.Inputs.GetAttachmentsFilterInputArgs
///             {
///                 Name = "state",
///                 Values = new[]
///                 {
///                     "pendingAcceptance",
///                 },
///             },
///             new Aws.Ec2TransitGateway.Inputs.GetAttachmentsFilterInputArgs
///             {
///                 Name = "resource-type",
///                 Values = new[]
///                 {
///                     "vpc",
///                 },
///             },
///         },
///     });
///
///     var unit = ;
///
/// });
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2transitgateway_get_attachments_get_attachments_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAttachmentsResult> getAttachments(
  GetAttachmentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getAttachments:getAttachments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAttachmentsResult.fromMap(result);
}

/// Get information on an EC2 Transit Gateway Connect.
///
/// ## Example Usage
///
/// ### By Filter
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2transitgateway.getConnect({
///     filters: [{
///         name: "transport-transit-gateway-attachment-id",
///         values: ["tgw-attach-12345678"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.get_connect(filters=[{
///     "name": "transport-transit-gateway-attachment-id",
///     "values": ["tgw-attach-12345678"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2TransitGateway.GetConnect.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2TransitGateway.Inputs.GetConnectFilterInputArgs
///             {
///                 Name = "transport-transit-gateway-attachment-id",
///                 Values = new[]
///                 {
///                     "tgw-attach-12345678",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2transitgateway.LookupConnect(ctx, &ec2transitgateway.LookupConnectArgs{
/// 			Filters: []ec2transitgateway.GetConnectFilter{
/// 				{
/// 					Name: "transport-transit-gateway-attachment-id",
/// 					Values: []string{
/// 						"tgw-attach-12345678",
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
/// import com.pulumi.aws.ec2transitgateway.Ec2transitgatewayFunctions;
/// import com.pulumi.aws.ec2transitgateway.inputs.GetConnectArgs;
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
///         final var example = Ec2transitgatewayFunctions.getConnect(GetConnectArgs.builder()
///             .filters(GetConnectFilterArgs.builder()
///                 .name("transport-transit-gateway-attachment-id")
///                 .values("tgw-attach-12345678")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2transitgateway:getConnect
///       arguments:
///         filters:
///           - name: transport-transit-gateway-attachment-id
///             values:
///               - tgw-attach-12345678
/// ```
///
///
/// ### By Identifier
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2transitgateway.getConnect({
///     transitGatewayConnectId: "tgw-attach-12345678",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.get_connect(transit_gateway_connect_id="tgw-attach-12345678")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2TransitGateway.GetConnect.Invoke(new()
///     {
///         TransitGatewayConnectId = "tgw-attach-12345678",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2transitgateway.LookupConnect(ctx, &ec2transitgateway.LookupConnectArgs{
/// 			TransitGatewayConnectId: pulumi.StringRef("tgw-attach-12345678"),
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
/// import com.pulumi.aws.ec2transitgateway.Ec2transitgatewayFunctions;
/// import com.pulumi.aws.ec2transitgateway.inputs.GetConnectArgs;
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
///         final var example = Ec2transitgatewayFunctions.getConnect(GetConnectArgs.builder()
///             .transitGatewayConnectId("tgw-attach-12345678")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2transitgateway:getConnect
///       arguments:
///         transitGatewayConnectId: tgw-attach-12345678
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2transitgateway_get_connect_get_connect_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectResult> getConnect(
  GetConnectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getConnect:getConnect',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectResult.fromMap(result);
}

/// Get information on an EC2 Transit Gateway Connect Peer.
///
/// ## Example Usage
///
/// ### By Filter
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2transitgateway.getConnectPeer({
///     filters: [{
///         name: "transit-gateway-attachment-id",
///         values: ["tgw-attach-12345678"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.get_connect_peer(filters=[{
///     "name": "transit-gateway-attachment-id",
///     "values": ["tgw-attach-12345678"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2TransitGateway.GetConnectPeer.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2TransitGateway.Inputs.GetConnectPeerFilterInputArgs
///             {
///                 Name = "transit-gateway-attachment-id",
///                 Values = new[]
///                 {
///                     "tgw-attach-12345678",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2transitgateway.LookupConnectPeer(ctx, &ec2transitgateway.LookupConnectPeerArgs{
/// 			Filters: []ec2transitgateway.GetConnectPeerFilter{
/// 				{
/// 					Name: "transit-gateway-attachment-id",
/// 					Values: []string{
/// 						"tgw-attach-12345678",
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
/// import com.pulumi.aws.ec2transitgateway.Ec2transitgatewayFunctions;
/// import com.pulumi.aws.ec2transitgateway.inputs.GetConnectPeerArgs;
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
///         final var example = Ec2transitgatewayFunctions.getConnectPeer(GetConnectPeerArgs.builder()
///             .filters(GetConnectPeerFilterArgs.builder()
///                 .name("transit-gateway-attachment-id")
///                 .values("tgw-attach-12345678")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2transitgateway:getConnectPeer
///       arguments:
///         filters:
///           - name: transit-gateway-attachment-id
///             values:
///               - tgw-attach-12345678
/// ```
///
///
/// ### By Identifier
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2transitgateway.getConnectPeer({
///     transitGatewayConnectPeerId: "tgw-connect-peer-12345678",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.get_connect_peer(transit_gateway_connect_peer_id="tgw-connect-peer-12345678")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2TransitGateway.GetConnectPeer.Invoke(new()
///     {
///         TransitGatewayConnectPeerId = "tgw-connect-peer-12345678",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2transitgateway.LookupConnectPeer(ctx, &ec2transitgateway.LookupConnectPeerArgs{
/// 			TransitGatewayConnectPeerId: pulumi.StringRef("tgw-connect-peer-12345678"),
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
/// import com.pulumi.aws.ec2transitgateway.Ec2transitgatewayFunctions;
/// import com.pulumi.aws.ec2transitgateway.inputs.GetConnectPeerArgs;
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
///         final var example = Ec2transitgatewayFunctions.getConnectPeer(GetConnectPeerArgs.builder()
///             .transitGatewayConnectPeerId("tgw-connect-peer-12345678")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2transitgateway:getConnectPeer
///       arguments:
///         transitGatewayConnectPeerId: tgw-connect-peer-12345678
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2transitgateway_get_connect_peer_get_connect_peer_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectPeerResult> getConnectPeer(
  GetConnectPeerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getConnectPeer:getConnectPeer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectPeerResult.fromMap(result);
}

/// Get information on an EC2 Transit Gateway's attachment to a Direct Connect Gateway.
///
/// !> **Warning:** Using the `aws.ec2transitgateway.getDirectConnectGatewayAttachment` data source in combination with  `aws.ec2transitgateway.RouteTablePropagation` or `aws.ec2transitgateway.RouteTableAssociation` may result in lost connectivity due to unnecessary resource re-creation. To avoid this, use the `transit_gateway_attachment_id` attribute directly from the `aws.directconnect.GatewayAssociation` resource. For example, `transit_gateway_attachment_id  = aws_dx_gateway_association.example.transit_gateway_attachment_id`.
///
/// ## Example Usage
///
/// ### By Transit Gateway and Direct Connect Gateway Identifiers
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2transitgateway.getDirectConnectGatewayAttachment({
///     transitGatewayId: exampleAwsEc2TransitGateway.id,
///     dxGatewayId: exampleAwsDxGateway.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.get_direct_connect_gateway_attachment(transit_gateway_id=example_aws_ec2_transit_gateway["id"],
///     dx_gateway_id=example_aws_dx_gateway["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2TransitGateway.GetDirectConnectGatewayAttachment.Invoke(new()
///     {
///         TransitGatewayId = exampleAwsEc2TransitGateway.Id,
///         DxGatewayId = exampleAwsDxGateway.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2transitgateway.GetDirectConnectGatewayAttachment(ctx, &ec2transitgateway.GetDirectConnectGatewayAttachmentArgs{
/// 			TransitGatewayId: pulumi.StringRef(exampleAwsEc2TransitGateway.Id),
/// 			DxGatewayId:      pulumi.StringRef(exampleAwsDxGateway.Id),
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
/// import com.pulumi.aws.ec2transitgateway.Ec2transitgatewayFunctions;
/// import com.pulumi.aws.ec2transitgateway.inputs.GetDirectConnectGatewayAttachmentArgs;
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
///         final var example = Ec2transitgatewayFunctions.getDirectConnectGatewayAttachment(GetDirectConnectGatewayAttachmentArgs.builder()
///             .transitGatewayId(exampleAwsEc2TransitGateway.id())
///             .dxGatewayId(exampleAwsDxGateway.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2transitgateway:getDirectConnectGatewayAttachment
///       arguments:
///         transitGatewayId: ${exampleAwsEc2TransitGateway.id}
///         dxGatewayId: ${exampleAwsDxGateway.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2transitgateway_get_direct_connect_gateway_attachment_get_direct_connect_gateway_attachment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDirectConnectGatewayAttachmentResult>
    getDirectConnectGatewayAttachment(
  GetDirectConnectGatewayAttachmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getDirectConnectGatewayAttachment:getDirectConnectGatewayAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDirectConnectGatewayAttachmentResult.fromMap(result);
}

/// Get information on an EC2 Transit Gateway Multicast Domain.
///
/// ## Example Usage
///
/// ### By Filter
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2transitgateway.getMulticastDomain({
///     filters: [{
///         name: "transit-gateway-multicast-domain-id",
///         values: ["tgw-mcast-domain-12345678"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.get_multicast_domain(filters=[{
///     "name": "transit-gateway-multicast-domain-id",
///     "values": ["tgw-mcast-domain-12345678"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2TransitGateway.GetMulticastDomain.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2TransitGateway.Inputs.GetMulticastDomainFilterInputArgs
///             {
///                 Name = "transit-gateway-multicast-domain-id",
///                 Values = new[]
///                 {
///                     "tgw-mcast-domain-12345678",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2transitgateway.LookupMulticastDomain(ctx, &ec2transitgateway.LookupMulticastDomainArgs{
/// 			Filters: []ec2transitgateway.GetMulticastDomainFilter{
/// 				{
/// 					Name: "transit-gateway-multicast-domain-id",
/// 					Values: []string{
/// 						"tgw-mcast-domain-12345678",
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
/// import com.pulumi.aws.ec2transitgateway.Ec2transitgatewayFunctions;
/// import com.pulumi.aws.ec2transitgateway.inputs.GetMulticastDomainArgs;
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
///         final var example = Ec2transitgatewayFunctions.getMulticastDomain(GetMulticastDomainArgs.builder()
///             .filters(GetMulticastDomainFilterArgs.builder()
///                 .name("transit-gateway-multicast-domain-id")
///                 .values("tgw-mcast-domain-12345678")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2transitgateway:getMulticastDomain
///       arguments:
///         filters:
///           - name: transit-gateway-multicast-domain-id
///             values:
///               - tgw-mcast-domain-12345678
/// ```
///
///
/// ### By Identifier
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2transitgateway.getMulticastDomain({
///     transitGatewayMulticastDomainId: "tgw-mcast-domain-12345678",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.get_multicast_domain(transit_gateway_multicast_domain_id="tgw-mcast-domain-12345678")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2TransitGateway.GetMulticastDomain.Invoke(new()
///     {
///         TransitGatewayMulticastDomainId = "tgw-mcast-domain-12345678",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2transitgateway.LookupMulticastDomain(ctx, &ec2transitgateway.LookupMulticastDomainArgs{
/// 			TransitGatewayMulticastDomainId: pulumi.StringRef("tgw-mcast-domain-12345678"),
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
/// import com.pulumi.aws.ec2transitgateway.Ec2transitgatewayFunctions;
/// import com.pulumi.aws.ec2transitgateway.inputs.GetMulticastDomainArgs;
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
///         final var example = Ec2transitgatewayFunctions.getMulticastDomain(GetMulticastDomainArgs.builder()
///             .transitGatewayMulticastDomainId("tgw-mcast-domain-12345678")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2transitgateway:getMulticastDomain
///       arguments:
///         transitGatewayMulticastDomainId: tgw-mcast-domain-12345678
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2transitgateway_get_multicast_domain_get_multicast_domain_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMulticastDomainResult> getMulticastDomain(
  GetMulticastDomainArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getMulticastDomain:getMulticastDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMulticastDomainResult.fromMap(result);
}

/// Get information on an EC2 Transit Gateway Peering Attachment.
///
/// ## Example Usage
///
/// ### By Filter
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2transitgateway.getPeeringAttachment({
///     filters: [{
///         name: "transit-gateway-attachment-id",
///         values: ["tgw-attach-12345678"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.get_peering_attachment(filters=[{
///     "name": "transit-gateway-attachment-id",
///     "values": ["tgw-attach-12345678"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2TransitGateway.GetPeeringAttachment.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2TransitGateway.Inputs.GetPeeringAttachmentFilterInputArgs
///             {
///                 Name = "transit-gateway-attachment-id",
///                 Values = new[]
///                 {
///                     "tgw-attach-12345678",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2transitgateway.LookupPeeringAttachment(ctx, &ec2transitgateway.LookupPeeringAttachmentArgs{
/// 			Filters: []ec2transitgateway.GetPeeringAttachmentFilter{
/// 				{
/// 					Name: "transit-gateway-attachment-id",
/// 					Values: []string{
/// 						"tgw-attach-12345678",
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
/// import com.pulumi.aws.ec2transitgateway.Ec2transitgatewayFunctions;
/// import com.pulumi.aws.ec2transitgateway.inputs.GetPeeringAttachmentArgs;
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
///         final var example = Ec2transitgatewayFunctions.getPeeringAttachment(GetPeeringAttachmentArgs.builder()
///             .filters(GetPeeringAttachmentFilterArgs.builder()
///                 .name("transit-gateway-attachment-id")
///                 .values("tgw-attach-12345678")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2transitgateway:getPeeringAttachment
///       arguments:
///         filters:
///           - name: transit-gateway-attachment-id
///             values:
///               - tgw-attach-12345678
/// ```
///
///
/// ### By Identifier
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const attachment = aws.ec2transitgateway.getPeeringAttachment({
///     id: "tgw-attach-12345678",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// attachment = aws.ec2transitgateway.get_peering_attachment(id="tgw-attach-12345678")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var attachment = Aws.Ec2TransitGateway.GetPeeringAttachment.Invoke(new()
///     {
///         Id = "tgw-attach-12345678",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2transitgateway.LookupPeeringAttachment(ctx, &ec2transitgateway.LookupPeeringAttachmentArgs{
/// 			Id: pulumi.StringRef("tgw-attach-12345678"),
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
/// import com.pulumi.aws.ec2transitgateway.Ec2transitgatewayFunctions;
/// import com.pulumi.aws.ec2transitgateway.inputs.GetPeeringAttachmentArgs;
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
///         final var attachment = Ec2transitgatewayFunctions.getPeeringAttachment(GetPeeringAttachmentArgs.builder()
///             .id("tgw-attach-12345678")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   attachment:
///     fn::invoke:
///       function: aws:ec2transitgateway:getPeeringAttachment
///       arguments:
///         id: tgw-attach-12345678
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2transitgateway_get_peering_attachment_get_peering_attachment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPeeringAttachmentResult> getPeeringAttachment(
  GetPeeringAttachmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getPeeringAttachment:getPeeringAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPeeringAttachmentResult.fromMap(result);
}

/// Get information on EC2 Transit Gateway Peering Attachments.
///
/// ## Example Usage
///
/// ### All Resources
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.ec2transitgateway.getPeeringAttachments({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2transitgateway.get_peering_attachments()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Ec2TransitGateway.GetPeeringAttachments.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2transitgateway.GetPeeringAttachments(ctx, &ec2transitgateway.GetPeeringAttachmentsArgs{}, nil)
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
/// import com.pulumi.aws.ec2transitgateway.Ec2transitgatewayFunctions;
/// import com.pulumi.aws.ec2transitgateway.inputs.GetPeeringAttachmentsArgs;
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
///         final var test = Ec2transitgatewayFunctions.getPeeringAttachments(GetPeeringAttachmentsArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:ec2transitgateway:getPeeringAttachments
///       arguments: {}
/// ```
///
///
/// ### By Filter
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const filtered = aws.ec2transitgateway.getPeeringAttachments({
///     filters: [{
///         name: "state",
///         values: ["pendingAcceptance"],
///     }],
/// });
/// const unit = .map(__index => (aws.ec2transitgateway.getPeeringAttachment({
///     id: _arg0_.ids[__index],
/// })));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// filtered = aws.ec2transitgateway.get_peering_attachments(filters=[{
///     "name": "state",
///     "values": ["pendingAcceptance"],
/// }])
/// unit = [aws.ec2transitgateway.get_peering_attachment(id=filtered.ids[__index]) for __index in len(filtered.ids).apply(lambda length: range(length))]
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var filtered = Aws.Ec2TransitGateway.GetPeeringAttachments.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2TransitGateway.Inputs.GetPeeringAttachmentsFilterInputArgs
///             {
///                 Name = "state",
///                 Values = new[]
///                 {
///                     "pendingAcceptance",
///                 },
///             },
///         },
///     });
///
///     var unit = ;
///
/// });
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2transitgateway_get_peering_attachments_get_peering_attachments_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPeeringAttachmentsResult> getPeeringAttachments(
  GetPeeringAttachmentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getPeeringAttachments:getPeeringAttachments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPeeringAttachmentsResult.fromMap(result);
}

/// Get information on an EC2 Transit Gateway Route Table.
///
/// ## Example Usage
///
/// ### By Filter
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2transitgateway.getRouteTable({
///     filters: [
///         {
///             name: "default-association-route-table",
///             values: ["true"],
///         },
///         {
///             name: "transit-gateway-id",
///             values: ["tgw-12345678"],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.get_route_table(filters=[
///     {
///         "name": "default-association-route-table",
///         "values": ["true"],
///     },
///     {
///         "name": "transit-gateway-id",
///         "values": ["tgw-12345678"],
///     },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2TransitGateway.GetRouteTable.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2TransitGateway.Inputs.GetRouteTableFilterInputArgs
///             {
///                 Name = "default-association-route-table",
///                 Values = new[]
///                 {
///                     "true",
///                 },
///             },
///             new Aws.Ec2TransitGateway.Inputs.GetRouteTableFilterInputArgs
///             {
///                 Name = "transit-gateway-id",
///                 Values = new[]
///                 {
///                     "tgw-12345678",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2transitgateway.LookupRouteTable(ctx, &ec2transitgateway.LookupRouteTableArgs{
/// 			Filters: []ec2transitgateway.GetRouteTableFilter{
/// 				{
/// 					Name: "default-association-route-table",
/// 					Values: []string{
/// 						"true",
/// 					},
/// 				},
/// 				{
/// 					Name: "transit-gateway-id",
/// 					Values: []string{
/// 						"tgw-12345678",
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
/// import com.pulumi.aws.ec2transitgateway.Ec2transitgatewayFunctions;
/// import com.pulumi.aws.ec2transitgateway.inputs.GetRouteTableArgs;
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
///         final var example = Ec2transitgatewayFunctions.getRouteTable(GetRouteTableArgs.builder()
///             .filters(
///                 GetRouteTableFilterArgs.builder()
///                     .name("default-association-route-table")
///                     .values("true")
///                     .build(),
///                 GetRouteTableFilterArgs.builder()
///                     .name("transit-gateway-id")
///                     .values("tgw-12345678")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2transitgateway:getRouteTable
///       arguments:
///         filters:
///           - name: default-association-route-table
///             values:
///               - 'true'
///           - name: transit-gateway-id
///             values:
///               - tgw-12345678
/// ```
///
///
/// ### By Identifier
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2transitgateway.getRouteTable({
///     id: "tgw-rtb-12345678",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.get_route_table(id="tgw-rtb-12345678")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2TransitGateway.GetRouteTable.Invoke(new()
///     {
///         Id = "tgw-rtb-12345678",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2transitgateway.LookupRouteTable(ctx, &ec2transitgateway.LookupRouteTableArgs{
/// 			Id: pulumi.StringRef("tgw-rtb-12345678"),
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
/// import com.pulumi.aws.ec2transitgateway.Ec2transitgatewayFunctions;
/// import com.pulumi.aws.ec2transitgateway.inputs.GetRouteTableArgs;
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
///         final var example = Ec2transitgatewayFunctions.getRouteTable(GetRouteTableArgs.builder()
///             .id("tgw-rtb-12345678")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2transitgateway:getRouteTable
///       arguments:
///         id: tgw-rtb-12345678
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2transitgateway_get_route_table_get_route_table_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouteTableResult> getRouteTable(
  GetRouteTableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getRouteTable:getRouteTable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteTableResult.fromMap(result);
}

/// Provides information for multiple EC2 Transit Gateway Route Table Associations, such as their identifiers.
///
/// ## Example Usage
///
/// ### By Transit Gateway Identifier
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2transitgateway.getRouteTableAssociations({
///     transitGatewayRouteTableId: exampleAwsEc2TransitGatewayRouteTable.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.get_route_table_associations(transit_gateway_route_table_id=example_aws_ec2_transit_gateway_route_table["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2TransitGateway.GetRouteTableAssociations.Invoke(new()
///     {
///         TransitGatewayRouteTableId = exampleAwsEc2TransitGatewayRouteTable.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2transitgateway.GetRouteTableAssociations(ctx, &ec2transitgateway.GetRouteTableAssociationsArgs{
/// 			TransitGatewayRouteTableId: exampleAwsEc2TransitGatewayRouteTable.Id,
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
/// import com.pulumi.aws.ec2transitgateway.Ec2transitgatewayFunctions;
/// import com.pulumi.aws.ec2transitgateway.inputs.GetRouteTableAssociationsArgs;
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
///         final var example = Ec2transitgatewayFunctions.getRouteTableAssociations(GetRouteTableAssociationsArgs.builder()
///             .transitGatewayRouteTableId(exampleAwsEc2TransitGatewayRouteTable.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2transitgateway:getRouteTableAssociations
///       arguments:
///         transitGatewayRouteTableId: ${exampleAwsEc2TransitGatewayRouteTable.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2transitgateway_get_route_table_associations_get_route_table_associations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouteTableAssociationsResult> getRouteTableAssociations(
  GetRouteTableAssociationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getRouteTableAssociations:getRouteTableAssociations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteTableAssociationsResult.fromMap(result);
}

/// Provides information for multiple EC2 Transit Gateway Route Table Propagations, such as their identifiers.
///
/// ## Example Usage
///
/// ### By Transit Gateway Identifier
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2transitgateway.getRouteTablePropagations({
///     transitGatewayRouteTableId: exampleAwsEc2TransitGatewayRouteTable.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.get_route_table_propagations(transit_gateway_route_table_id=example_aws_ec2_transit_gateway_route_table["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2TransitGateway.GetRouteTablePropagations.Invoke(new()
///     {
///         TransitGatewayRouteTableId = exampleAwsEc2TransitGatewayRouteTable.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2transitgateway.GetRouteTablePropagations(ctx, &ec2transitgateway.GetRouteTablePropagationsArgs{
/// 			TransitGatewayRouteTableId: exampleAwsEc2TransitGatewayRouteTable.Id,
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
/// import com.pulumi.aws.ec2transitgateway.Ec2transitgatewayFunctions;
/// import com.pulumi.aws.ec2transitgateway.inputs.GetRouteTablePropagationsArgs;
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
///         final var example = Ec2transitgatewayFunctions.getRouteTablePropagations(GetRouteTablePropagationsArgs.builder()
///             .transitGatewayRouteTableId(exampleAwsEc2TransitGatewayRouteTable.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2transitgateway:getRouteTablePropagations
///       arguments:
///         transitGatewayRouteTableId: ${exampleAwsEc2TransitGatewayRouteTable.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2transitgateway_get_route_table_propagations_get_route_table_propagations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouteTablePropagationsResult> getRouteTablePropagations(
  GetRouteTablePropagationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getRouteTablePropagations:getRouteTablePropagations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteTablePropagationsResult.fromMap(result);
}

/// Provides informations for routes of a specific transit gateway, such as state, type, cidr
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.ec2transitgateway.getRouteTableRoutes({
///     filters: [{
///         name: "type",
///         values: ["propagated"],
///     }],
///     transitGatewayRouteTableId: example.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2transitgateway.get_route_table_routes(filters=[{
///         "name": "type",
///         "values": ["propagated"],
///     }],
///     transit_gateway_route_table_id=example["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Ec2TransitGateway.GetRouteTableRoutes.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2TransitGateway.Inputs.GetRouteTableRoutesFilterInputArgs
///             {
///                 Name = "type",
///                 Values = new[]
///                 {
///                     "propagated",
///                 },
///             },
///         },
///         TransitGatewayRouteTableId = example.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2transitgateway.GetRouteTableRoutes(ctx, &ec2transitgateway.GetRouteTableRoutesArgs{
/// 			Filters: []ec2transitgateway.GetRouteTableRoutesFilter{
/// 				{
/// 					Name: "type",
/// 					Values: []string{
/// 						"propagated",
/// 					},
/// 				},
/// 			},
/// 			TransitGatewayRouteTableId: example.Id,
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
/// import com.pulumi.aws.ec2transitgateway.Ec2transitgatewayFunctions;
/// import com.pulumi.aws.ec2transitgateway.inputs.GetRouteTableRoutesArgs;
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
///         final var test = Ec2transitgatewayFunctions.getRouteTableRoutes(GetRouteTableRoutesArgs.builder()
///             .filters(GetRouteTableRoutesFilterArgs.builder()
///                 .name("type")
///                 .values("propagated")
///                 .build())
///             .transitGatewayRouteTableId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:ec2transitgateway:getRouteTableRoutes
///       arguments:
///         filters:
///           - name: type
///             values:
///               - propagated
///         transitGatewayRouteTableId: ${example.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2transitgateway_get_route_table_routes_get_route_table_routes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouteTableRoutesResult> getRouteTableRoutes(
  GetRouteTableRoutesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getRouteTableRoutes:getRouteTableRoutes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteTableRoutesResult.fromMap(result);
}

/// Get information on an EC2 Transit Gateway.
///
/// ## Example Usage
///
/// ### By Filter
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2transitgateway.getTransitGateway({
///     filters: [{
///         name: "options.amazon-side-asn",
///         values: ["64512"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.get_transit_gateway(filters=[{
///     "name": "options.amazon-side-asn",
///     "values": ["64512"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2TransitGateway.GetTransitGateway.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2TransitGateway.Inputs.GetTransitGatewayFilterInputArgs
///             {
///                 Name = "options.amazon-side-asn",
///                 Values = new[]
///                 {
///                     "64512",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2transitgateway.LookupTransitGateway(ctx, &ec2transitgateway.LookupTransitGatewayArgs{
/// 			Filters: []ec2transitgateway.GetTransitGatewayFilter{
/// 				{
/// 					Name: "options.amazon-side-asn",
/// 					Values: []string{
/// 						"64512",
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
/// import com.pulumi.aws.ec2transitgateway.Ec2transitgatewayFunctions;
/// import com.pulumi.aws.ec2transitgateway.inputs.GetTransitGatewayArgs;
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
///         final var example = Ec2transitgatewayFunctions.getTransitGateway(GetTransitGatewayArgs.builder()
///             .filters(GetTransitGatewayFilterArgs.builder()
///                 .name("options.amazon-side-asn")
///                 .values("64512")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2transitgateway:getTransitGateway
///       arguments:
///         filters:
///           - name: options.amazon-side-asn
///             values:
///               - '64512'
/// ```
///
///
/// ### By Identifier
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2transitgateway.getTransitGateway({
///     id: "tgw-12345678",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.get_transit_gateway(id="tgw-12345678")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2TransitGateway.GetTransitGateway.Invoke(new()
///     {
///         Id = "tgw-12345678",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2transitgateway.LookupTransitGateway(ctx, &ec2transitgateway.LookupTransitGatewayArgs{
/// 			Id: pulumi.StringRef("tgw-12345678"),
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
/// import com.pulumi.aws.ec2transitgateway.Ec2transitgatewayFunctions;
/// import com.pulumi.aws.ec2transitgateway.inputs.GetTransitGatewayArgs;
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
///         final var example = Ec2transitgatewayFunctions.getTransitGateway(GetTransitGatewayArgs.builder()
///             .id("tgw-12345678")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2transitgateway:getTransitGateway
///       arguments:
///         id: tgw-12345678
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2transitgateway_get_transit_gateway_get_transit_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTransitGatewayResult> getTransitGateway(
  GetTransitGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getTransitGateway:getTransitGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransitGatewayResult.fromMap(result);
}

/// Get information on an EC2 Transit Gateway VPC Attachment.
///
/// !> **Warning:** Using the `aws.ec2transitgateway.VpcAttachment` data source in combination with  `aws.ec2transitgateway.RouteTablePropagation` or `aws.ec2transitgateway.RouteTableAssociation` may result in lost connectivity due to unnecessary resource re-creation. To avoid this, use the `id` attribute directly from the `aws.ec2transitgateway.VpcAttachment` _resource_. For example, `transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.example.id`.
///
/// ## Example Usage
///
/// ### By Filter
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2transitgateway.getVpcAttachment({
///     filters: [{
///         name: "vpc-id",
///         values: ["vpc-12345678"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.get_vpc_attachment(filters=[{
///     "name": "vpc-id",
///     "values": ["vpc-12345678"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2TransitGateway.GetVpcAttachment.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2TransitGateway.Inputs.GetVpcAttachmentFilterInputArgs
///             {
///                 Name = "vpc-id",
///                 Values = new[]
///                 {
///                     "vpc-12345678",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2transitgateway.LookupVpcAttachment(ctx, &ec2transitgateway.LookupVpcAttachmentArgs{
/// 			Filters: []ec2transitgateway.GetVpcAttachmentFilter{
/// 				{
/// 					Name: "vpc-id",
/// 					Values: []string{
/// 						"vpc-12345678",
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
/// import com.pulumi.aws.ec2transitgateway.Ec2transitgatewayFunctions;
/// import com.pulumi.aws.ec2transitgateway.inputs.GetVpcAttachmentArgs;
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
///         final var example = Ec2transitgatewayFunctions.getVpcAttachment(GetVpcAttachmentArgs.builder()
///             .filters(GetVpcAttachmentFilterArgs.builder()
///                 .name("vpc-id")
///                 .values("vpc-12345678")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2transitgateway:getVpcAttachment
///       arguments:
///         filters:
///           - name: vpc-id
///             values:
///               - vpc-12345678
/// ```
///
///
/// ### By Identifier
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2transitgateway.getVpcAttachment({
///     id: "tgw-attach-12345678",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.get_vpc_attachment(id="tgw-attach-12345678")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2TransitGateway.GetVpcAttachment.Invoke(new()
///     {
///         Id = "tgw-attach-12345678",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2transitgateway.LookupVpcAttachment(ctx, &ec2transitgateway.LookupVpcAttachmentArgs{
/// 			Id: pulumi.StringRef("tgw-attach-12345678"),
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
/// import com.pulumi.aws.ec2transitgateway.Ec2transitgatewayFunctions;
/// import com.pulumi.aws.ec2transitgateway.inputs.GetVpcAttachmentArgs;
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
///         final var example = Ec2transitgatewayFunctions.getVpcAttachment(GetVpcAttachmentArgs.builder()
///             .id("tgw-attach-12345678")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2transitgateway:getVpcAttachment
///       arguments:
///         id: tgw-attach-12345678
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2transitgateway_get_vpc_attachment_get_vpc_attachment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcAttachmentResult> getVpcAttachment(
  GetVpcAttachmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getVpcAttachment:getVpcAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcAttachmentResult.fromMap(result);
}

/// Get information on EC2 Transit Gateway VPC Attachments.
///
/// ## Example Usage
///
/// ### By Filter
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const filtered = aws.ec2transitgateway.getVpcAttachments({
///     filters: [{
///         name: "state",
///         values: ["pendingAcceptance"],
///     }],
/// });
/// const unit = .map(__index => (aws.ec2transitgateway.getVpcAttachment({
///     id: _arg0_.ids[__index],
/// })));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// filtered = aws.ec2transitgateway.get_vpc_attachments(filters=[{
///     "name": "state",
///     "values": ["pendingAcceptance"],
/// }])
/// unit = [aws.ec2transitgateway.get_vpc_attachment(id=filtered.ids[__index]) for __index in len(filtered.ids).apply(lambda length: range(length))]
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var filtered = Aws.Ec2TransitGateway.GetVpcAttachments.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2TransitGateway.Inputs.GetVpcAttachmentsFilterInputArgs
///             {
///                 Name = "state",
///                 Values = new[]
///                 {
///                     "pendingAcceptance",
///                 },
///             },
///         },
///     });
///
///     var unit = ;
///
/// });
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2transitgateway_get_vpc_attachments_get_vpc_attachments_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcAttachmentsResult> getVpcAttachments(
  GetVpcAttachmentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getVpcAttachments:getVpcAttachments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcAttachmentsResult.fromMap(result);
}

/// Get information on an EC2 Transit Gateway VPN Attachment.
///
/// > EC2 Transit Gateway VPN Attachments are implicitly created by VPN Connections referencing an EC2 Transit Gateway so there is no managed resource. For ease, the `aws.ec2.VpnConnection` resource includes a `transit_gateway_attachment_id` attribute which can replace some usage of this data source. For tagging the attachment, see the `aws.ec2.Tag` resource.
///
/// ## Example Usage
///
/// ### By Transit Gateway and VPN Connection Identifiers
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2transitgateway.getVpnAttachment({
///     transitGatewayId: exampleAwsEc2TransitGateway.id,
///     vpnConnectionId: exampleAwsVpnConnection.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.get_vpn_attachment(transit_gateway_id=example_aws_ec2_transit_gateway["id"],
///     vpn_connection_id=example_aws_vpn_connection["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2TransitGateway.GetVpnAttachment.Invoke(new()
///     {
///         TransitGatewayId = exampleAwsEc2TransitGateway.Id,
///         VpnConnectionId = exampleAwsVpnConnection.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2transitgateway.GetVpnAttachment(ctx, &ec2transitgateway.GetVpnAttachmentArgs{
/// 			TransitGatewayId: pulumi.StringRef(exampleAwsEc2TransitGateway.Id),
/// 			VpnConnectionId:  pulumi.StringRef(exampleAwsVpnConnection.Id),
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
/// import com.pulumi.aws.ec2transitgateway.Ec2transitgatewayFunctions;
/// import com.pulumi.aws.ec2transitgateway.inputs.GetVpnAttachmentArgs;
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
///         final var example = Ec2transitgatewayFunctions.getVpnAttachment(GetVpnAttachmentArgs.builder()
///             .transitGatewayId(exampleAwsEc2TransitGateway.id())
///             .vpnConnectionId(exampleAwsVpnConnection.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2transitgateway:getVpnAttachment
///       arguments:
///         transitGatewayId: ${exampleAwsEc2TransitGateway.id}
///         vpnConnectionId: ${exampleAwsVpnConnection.id}
/// ```
///
///
/// ### Filter
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.ec2transitgateway.getVpnAttachment({
///     filters: [{
///         name: "resource-id",
///         values: ["some-resource"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2transitgateway.get_vpn_attachment(filters=[{
///     "name": "resource-id",
///     "values": ["some-resource"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Ec2TransitGateway.GetVpnAttachment.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2TransitGateway.Inputs.GetVpnAttachmentFilterInputArgs
///             {
///                 Name = "resource-id",
///                 Values = new[]
///                 {
///                     "some-resource",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2transitgateway.GetVpnAttachment(ctx, &ec2transitgateway.GetVpnAttachmentArgs{
/// 			Filters: []ec2transitgateway.GetVpnAttachmentFilter{
/// 				{
/// 					Name: "resource-id",
/// 					Values: []string{
/// 						"some-resource",
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
/// import com.pulumi.aws.ec2transitgateway.Ec2transitgatewayFunctions;
/// import com.pulumi.aws.ec2transitgateway.inputs.GetVpnAttachmentArgs;
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
///         final var test = Ec2transitgatewayFunctions.getVpnAttachment(GetVpnAttachmentArgs.builder()
///             .filters(GetVpnAttachmentFilterArgs.builder()
///                 .name("resource-id")
///                 .values("some-resource")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:ec2transitgateway:getVpnAttachment
///       arguments:
///         filters:
///           - name: resource-id
///             values:
///               - some-resource
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2transitgateway_get_vpn_attachment_get_vpn_attachment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpnAttachmentResult> getVpnAttachment(
  GetVpnAttachmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getVpnAttachment:getVpnAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpnAttachmentResult.fromMap(result);
}
