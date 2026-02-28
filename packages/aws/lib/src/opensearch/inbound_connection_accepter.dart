import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_connection_accepter_args.dart';

/// Manages an [AWS Opensearch Inbound Connection Accepter](https://docs.aws.amazon.com/opensearch-service/latest/APIReference/API_AcceptInboundConnection.html). If connecting domains from different AWS accounts, ensure that the accepter is configured to use the AWS account where the _remote_ opensearch domain exists.
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
/// const fooInboundConnectionAccepter = new aws.opensearch.InboundConnectionAccepter("foo", {connectionId: foo.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// current_get_region = aws.get_region()
/// foo = aws.opensearch.OutboundConnection("foo",
///     connection_alias="outbound_connection",
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
/// foo_inbound_connection_accepter = aws.opensearch.InboundConnectionAccepter("foo", connection_id=foo.id)
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
///     var fooInboundConnectionAccepter = new Aws.OpenSearch.InboundConnectionAccepter("foo", new()
///     {
///         ConnectionId = foo.Id,
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
/// 		foo, err := opensearch.NewOutboundConnection(ctx, "foo", &opensearch.OutboundConnectionArgs{
/// 			ConnectionAlias: pulumi.String("outbound_connection"),
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
/// 		_, err = opensearch.NewInboundConnectionAccepter(ctx, "foo", &opensearch.InboundConnectionAccepterArgs{
/// 			ConnectionId: foo.ID(),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.opensearch.OutboundConnection;
/// import com.pulumi.aws.opensearch.OutboundConnectionArgs;
/// import com.pulumi.aws.opensearch.inputs.OutboundConnectionLocalDomainInfoArgs;
/// import com.pulumi.aws.opensearch.inputs.OutboundConnectionRemoteDomainInfoArgs;
/// import com.pulumi.aws.opensearch.InboundConnectionAccepter;
/// import com.pulumi.aws.opensearch.InboundConnectionAccepterArgs;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         final var currentGetRegion = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         var foo = new OutboundConnection("foo", OutboundConnectionArgs.builder()
///             .connectionAlias("outbound_connection")
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
///         var fooInboundConnectionAccepter = new InboundConnectionAccepter("fooInboundConnectionAccepter", InboundConnectionAccepterArgs.builder()
///             .connectionId(foo.id())
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
///       localDomainInfo:
///         ownerId: ${current.accountId}
///         region: ${currentGetRegion.region}
///         domainName: ${localDomain.domainName}
///       remoteDomainInfo:
///         ownerId: ${current.accountId}
///         region: ${currentGetRegion.region}
///         domainName: ${remoteDomain.domainName}
///   fooInboundConnectionAccepter:
///     type: aws:opensearch:InboundConnectionAccepter
///     name: foo
///     properties:
///       connectionId: ${foo.id}
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
/// Using `pulumi import`, import AWS Opensearch Inbound Connection Accepters using the Inbound Connection ID. For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/inboundConnectionAccepter:InboundConnectionAccepter foo connection-id
/// ```
class InboundConnectionAccepter extends pulumi.CustomResource {
  /// Specifies the ID of the connection to accept.
  late final pulumi.Output<String> connectionId;

  /// Status of the connection request.
  late final pulumi.Output<String> connectionStatus;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [InboundConnectionAccepter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InboundConnectionAccepter]. {@macro pulumi_opensearch_inbound_connection_accepter_inbound_connection_accepter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InboundConnectionAccepter(
    String name, {
    InboundConnectionAccepterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/inboundConnectionAccepter:InboundConnectionAccepter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.connectionId = registerOutput<String>('connectionId');
    this.connectionStatus = registerOutput<String>('connectionStatus');
    this.region = registerOutput<String>('region');
  }
}
