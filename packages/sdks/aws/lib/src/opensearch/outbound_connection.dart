import 'package:pulumi/pulumi.dart' as pulumi;
import 'outbound_connection_args.dart';
import 'outbound_connection_connection_properties.dart';
import 'outbound_connection_local_domain_info.dart';
import 'outbound_connection_remote_domain_info.dart';
import 'outbound_connection_state.dart';

/// Manages an AWS Opensearch Outbound Connection.
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
/// const current = aws.getCallerIdentity({});
/// const currentGetRegion = aws.getRegion({});
/// const foo = new aws.opensearch.OutboundConnection("foo", {
///     connectionAlias: "outbound_connection",
///     connectionMode: "DIRECT",
///     localDomainInfo: {
///         ownerId: current.then(current => current.accountId),
///         region: currentGetRegion.then(currentGetRegion => currentGetRegion.region),
///         domainName: localDomain.domainName,
///     },
///     remoteDomainInfo: {
///         ownerId: current.then(current => current.accountId),
///         region: currentGetRegion.then(currentGetRegion => currentGetRegion.region),
///         domainName: remoteDomain.domainName,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// current_get_region = aws.get_region()
/// foo = aws.opensearch.OutboundConnection("foo",
///     connection_alias="outbound_connection",
///     connection_mode="DIRECT",
///     local_domain_info={
///         "owner_id": current.account_id,
///         "region": current_get_region.region,
///         "domain_name": local_domain["domainName"],
///     },
///     remote_domain_info={
///         "owner_id": current.account_id,
///         "region": current_get_region.region,
///         "domain_name": remote_domain["domainName"],
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
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var currentGetRegion = Aws.GetRegion.Invoke();
///
///     var foo = new Aws.OpenSearch.OutboundConnection("foo", new()
///     {
///         ConnectionAlias = "outbound_connection",
///         ConnectionMode = "DIRECT",
///         LocalDomainInfo = new Aws.OpenSearch.Inputs.OutboundConnectionLocalDomainInfoArgs
///         {
///             OwnerId = current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///             Region = currentGetRegion.Apply(getRegionResult => getRegionResult.Region),
///             DomainName = localDomain.DomainName,
///         },
///         RemoteDomainInfo = new Aws.OpenSearch.Inputs.OutboundConnectionRemoteDomainInfoArgs
///         {
///             OwnerId = current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///             Region = currentGetRegion.Apply(getRegionResult => getRegionResult.Region),
///             DomainName = remoteDomain.DomainName,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetRegion, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = opensearch.NewOutboundConnection(ctx, "foo", &opensearch.OutboundConnectionArgs{
/// 			ConnectionAlias: pulumi.String("outbound_connection"),
/// 			ConnectionMode:  pulumi.String("DIRECT"),
/// 			LocalDomainInfo: &opensearch.OutboundConnectionLocalDomainInfoArgs{
/// 				OwnerId:    pulumi.String(current.AccountId),
/// 				Region:     pulumi.String(currentGetRegion.Region),
/// 				DomainName: pulumi.Any(localDomain.DomainName),
/// 			},
/// 			RemoteDomainInfo: &opensearch.OutboundConnectionRemoteDomainInfoArgs{
/// 				OwnerId:    pulumi.String(current.AccountId),
/// 				Region:     pulumi.String(currentGetRegion.Region),
/// 				DomainName: pulumi.Any(remoteDomain.DomainName),
/// 			},
/// 		})
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
/// data "aws_getcalleridentity" "current" {
/// }
/// data "aws_getregion" "currentGetRegion" {
/// }
///
/// resource "aws_opensearch_outboundconnection" "foo" {
///   connection_alias = "outbound_connection"
///   connection_mode  = "DIRECT"
///   local_domain_info = {
///     owner_id    = data.aws_getcalleridentity.current.account_id
///     region      = data.aws_getregion.currentGetRegion.region
///     domain_name = localDomain.domainName
///   }
///   remote_domain_info = {
///     owner_id    = data.aws_getcalleridentity.current.account_id
///     region      = data.aws_getregion.currentGetRegion.region
///     domain_name = remoteDomain.domainName
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.opensearch.OutboundConnection;
/// import com.pulumi.aws.opensearch.OutboundConnectionArgs;
/// import com.pulumi.aws.opensearch.inputs.OutboundConnectionLocalDomainInfoArgs;
/// import com.pulumi.aws.opensearch.inputs.OutboundConnectionRemoteDomainInfoArgs;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         final var currentGetRegion = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         var foo = new OutboundConnection("foo", OutboundConnectionArgs.builder()
///             .connectionAlias("outbound_connection")
///             .connectionMode("DIRECT")
///             .localDomainInfo(OutboundConnectionLocalDomainInfoArgs.builder()
///                 .ownerId(current.accountId())
///                 .region(currentGetRegion.region())
///                 .domainName(localDomain.domainName())
///                 .build())
///             .remoteDomainInfo(OutboundConnectionRemoteDomainInfoArgs.builder()
///                 .ownerId(current.accountId())
///                 .region(currentGetRegion.region())
///                 .domainName(remoteDomain.domainName())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: aws:opensearch:OutboundConnection
///     properties:
///       connectionAlias: outbound_connection
///       connectionMode: DIRECT
///       localDomainInfo:
///         ownerId: ${current.accountId}
///         region: ${currentGetRegion.region}
///         domainName: ${localDomain.domainName}
///       remoteDomainInfo:
///         ownerId: ${current.accountId}
///         region: ${currentGetRegion.region}
///         domainName: ${remoteDomain.domainName}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   currentGetRegion:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import AWS Opensearch Outbound Connections using the Outbound Connection ID. For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/outboundConnection:OutboundConnection foo connection-id
/// ```
class OutboundConnection extends pulumi.CustomResource {
  /// Accepts the connection.
  late final pulumi.Output<bool?> acceptConnection;
  /// Specifies the connection alias that will be used by the customer for this connection.
  late final pulumi.Output<String> connectionAlias;
  /// Specifies the connection mode. Accepted values are `DIRECT` or `VPC_ENDPOINT`.
  late final pulumi.Output<String> connectionMode;
  /// Configuration block for the outbound connection.
  late final pulumi.Output<OutboundConnectionConnectionProperties> connectionProperties;
  /// Status of the connection request.
  late final pulumi.Output<String> connectionStatus;
  /// Configuration block for the local Opensearch domain.
  late final pulumi.Output<OutboundConnectionLocalDomainInfo> localDomainInfo;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration block for the remote Opensearch domain.
  late final pulumi.Output<OutboundConnectionRemoteDomainInfo> remoteDomainInfo;

  /// Creates a new [OutboundConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OutboundConnection]. {@macro pulumi_opensearch_outbound_connection_outbound_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OutboundConnection(
    String name, {
    OutboundConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/outboundConnection:OutboundConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceptConnection = registerOutput<bool?>('acceptConnection');
    connectionAlias = registerOutput<String>('connectionAlias');
    connectionMode = registerOutput<String>('connectionMode');
    connectionProperties = registerOutput<OutboundConnectionConnectionProperties>('connectionProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OutboundConnectionConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    connectionStatus = registerOutput<String>('connectionStatus');
    localDomainInfo = registerOutput<OutboundConnectionLocalDomainInfo>('localDomainInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OutboundConnectionLocalDomainInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    remoteDomainInfo = registerOutput<OutboundConnectionRemoteDomainInfo>('remoteDomainInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OutboundConnectionRemoteDomainInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [OutboundConnection] resource's state with the given [name] and [id].
  static OutboundConnection get(
    String name,
    pulumi.Input<String> id, {
    OutboundConnectionState? state,
  }) {
    return OutboundConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OutboundConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/outboundConnection:OutboundConnection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceptConnection = registerOutput<bool?>('acceptConnection');
    connectionAlias = registerOutput<String>('connectionAlias');
    connectionMode = registerOutput<String>('connectionMode');
    connectionProperties = registerOutput<OutboundConnectionConnectionProperties>('connectionProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OutboundConnectionConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    connectionStatus = registerOutput<String>('connectionStatus');
    localDomainInfo = registerOutput<OutboundConnectionLocalDomainInfo>('localDomainInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OutboundConnectionLocalDomainInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    remoteDomainInfo = registerOutput<OutboundConnectionRemoteDomainInfo>('remoteDomainInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OutboundConnectionRemoteDomainInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
