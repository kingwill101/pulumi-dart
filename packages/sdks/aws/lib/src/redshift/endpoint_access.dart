import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_access_args.dart';
import 'endpoint_access_state.dart';
import 'endpoint_access_vpc_endpoint.dart';

/// Creates a new Amazon Redshift endpoint access.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshift.EndpointAccess("example", {
///     endpointName: "example",
///     subnetGroupName: exampleAwsRedshiftSubnetGroup.id,
///     clusterIdentifier: exampleAwsRedshiftCluster.clusterIdentifier,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.EndpointAccess("example",
///     endpoint_name="example",
///     subnet_group_name=example_aws_redshift_subnet_group["id"],
///     cluster_identifier=example_aws_redshift_cluster["clusterIdentifier"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.RedShift.EndpointAccess("example", new()
///     {
///         EndpointName = "example",
///         SubnetGroupName = exampleAwsRedshiftSubnetGroup.Id,
///         ClusterIdentifier = exampleAwsRedshiftCluster.ClusterIdentifier,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redshift.NewEndpointAccess(ctx, "example", &redshift.EndpointAccessArgs{
/// 			EndpointName:      pulumi.String("example"),
/// 			SubnetGroupName:   pulumi.Any(exampleAwsRedshiftSubnetGroup.Id),
/// 			ClusterIdentifier: pulumi.Any(exampleAwsRedshiftCluster.ClusterIdentifier),
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
/// resource "aws_redshift_endpointaccess" "example" {
///   endpoint_name      = "example"
///   subnet_group_name  = exampleAwsRedshiftSubnetGroup.id
///   cluster_identifier = exampleAwsRedshiftCluster.clusterIdentifier
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.redshift.EndpointAccess;
/// import com.pulumi.aws.redshift.EndpointAccessArgs;
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
///         var example = new EndpointAccess("example", EndpointAccessArgs.builder()
///             .endpointName("example")
///             .subnetGroupName(exampleAwsRedshiftSubnetGroup.id())
///             .clusterIdentifier(exampleAwsRedshiftCluster.clusterIdentifier())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:redshift:EndpointAccess
///     properties:
///       endpointName: example
///       subnetGroupName: ${exampleAwsRedshiftSubnetGroup.id}
///       clusterIdentifier: ${exampleAwsRedshiftCluster.clusterIdentifier}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift endpoint access using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/endpointAccess:EndpointAccess example example
/// ```
class EndpointAccess extends pulumi.CustomResource {
  /// The DNS address of the endpoint.
  late final pulumi.Output<String> address;
  /// The cluster identifier of the cluster to access.
  late final pulumi.Output<String> clusterIdentifier;
  /// The Redshift-managed VPC endpoint name.
  late final pulumi.Output<String> endpointName;
  /// The port number on which the cluster accepts incoming connections.
  late final pulumi.Output<int> port;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The Amazon Web Services account ID of the owner of the cluster. This is only required if the cluster is in another Amazon Web Services account.
  late final pulumi.Output<String> resourceOwner;
  /// The subnet group from which Amazon Redshift chooses the subnet to deploy the endpoint.
  late final pulumi.Output<String> subnetGroupName;
  /// The connection endpoint for connecting to an Amazon Redshift cluster through the proxy. See details below.
  late final pulumi.Output<List<EndpointAccessVpcEndpoint>> vpcEndpoints;
  /// The security group that defines the ports, protocols, and sources for inbound traffic that you are authorizing into your endpoint.
  late final pulumi.Output<List<String>> vpcSecurityGroupIds;

  /// Creates a new [EndpointAccess].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointAccess]. {@macro pulumi_redshift_endpoint_access_endpoint_access_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointAccess(
    String name, {
    EndpointAccessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/endpointAccess:EndpointAccess',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    address = registerOutput<String>('address');
    clusterIdentifier = registerOutput<String>('clusterIdentifier');
    endpointName = registerOutput<String>('endpointName');
    port = registerOutput<int>('port');
    region = registerOutput<String>('region');
    resourceOwner = registerOutput<String>('resourceOwner');
    subnetGroupName = registerOutput<String>('subnetGroupName');
    vpcEndpoints = registerOutput<List<EndpointAccessVpcEndpoint>>('vpcEndpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EndpointAccessVpcEndpoint>(guardedValue, (value) => EndpointAccessVpcEndpoint.fromMap((value as Map).cast<String, dynamic>())); });
    vpcSecurityGroupIds = registerOutput<List<String>>('vpcSecurityGroupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [EndpointAccess] resource's state with the given [name] and [id].
  static EndpointAccess get(
    String name,
    pulumi.Input<String> id, {
    EndpointAccessState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EndpointAccess._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EndpointAccess._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/endpointAccess:EndpointAccess',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    address = registerOutput<String>('address');
    clusterIdentifier = registerOutput<String>('clusterIdentifier');
    endpointName = registerOutput<String>('endpointName');
    port = registerOutput<int>('port');
    region = registerOutput<String>('region');
    resourceOwner = registerOutput<String>('resourceOwner');
    subnetGroupName = registerOutput<String>('subnetGroupName');
    vpcEndpoints = registerOutput<List<EndpointAccessVpcEndpoint>>('vpcEndpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EndpointAccessVpcEndpoint>(guardedValue, (value) => EndpointAccessVpcEndpoint.fromMap((value as Map).cast<String, dynamic>())); });
    vpcSecurityGroupIds = registerOutput<List<String>>('vpcSecurityGroupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [EndpointAccess] resource.
  EndpointAccess.reference(String urn)
    : super(
        'aws:redshift/endpointAccess:EndpointAccess',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    address = registerOutput<String>('address');
    clusterIdentifier = registerOutput<String>('clusterIdentifier');
    endpointName = registerOutput<String>('endpointName');
    port = registerOutput<int>('port');
    region = registerOutput<String>('region');
    resourceOwner = registerOutput<String>('resourceOwner');
    subnetGroupName = registerOutput<String>('subnetGroupName');
    vpcEndpoints = registerOutput<List<EndpointAccessVpcEndpoint>>('vpcEndpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EndpointAccessVpcEndpoint>(guardedValue, (value) => EndpointAccessVpcEndpoint.fromMap((value as Map).cast<String, dynamic>())); });
    vpcSecurityGroupIds = registerOutput<List<String>>('vpcSecurityGroupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
