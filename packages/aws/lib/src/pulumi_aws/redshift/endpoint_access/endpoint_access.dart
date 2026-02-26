import 'package:pulumi/pulumi.dart';
import '../endpoint_access_vpc_endpoint/endpoint_access_vpc_endpoint.dart';
import 'endpoint_access_args.dart';

/// Creates a new Amazon Redshift endpoint access.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshift.EndpointAccess("example", {
/// endpointName: "example",
/// subnetGroupName: exampleAwsRedshiftSubnetGroup.id,
/// clusterIdentifier: exampleAwsRedshiftCluster.clusterIdentifier,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.EndpointAccess("example",
/// endpoint_name="example",
/// subnet_group_name=example_aws_redshift_subnet_group["id"],
/// cluster_identifier=example_aws_redshift_cluster["clusterIdentifier"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.RedShift.EndpointAccess("example", new()
/// {
/// EndpointName = "example",
/// SubnetGroupName = exampleAwsRedshiftSubnetGroup.Id,
/// ClusterIdentifier = exampleAwsRedshiftCluster.ClusterIdentifier,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := redshift.NewEndpointAccess(ctx, "example", &redshift.EndpointAccessArgs{
/// EndpointName:      pulumi.String("example"),
/// SubnetGroupName:   pulumi.Any(exampleAwsRedshiftSubnetGroup.Id),
/// ClusterIdentifier: pulumi.Any(exampleAwsRedshiftCluster.ClusterIdentifier),
/// })
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
/// import com.pulumi.aws.redshift.EndpointAccess;
/// import com.pulumi.aws.redshift.EndpointAccessArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new EndpointAccess("example", EndpointAccessArgs.builder()
/// .endpointName("example")
/// .subnetGroupName(exampleAwsRedshiftSubnetGroup.id())
/// .clusterIdentifier(exampleAwsRedshiftCluster.clusterIdentifier())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:redshift:EndpointAccess
/// properties:
/// endpointName: example
/// subnetGroupName: ${exampleAwsRedshiftSubnetGroup.id}
/// clusterIdentifier: ${exampleAwsRedshiftCluster.clusterIdentifier}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Redshift endpoint access using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/endpointAccess:EndpointAccess example example
/// ```
class EndpointAccess extends CustomResource {
  /// The DNS address of the endpoint.
  late final Output<String> address;

  /// The cluster identifier of the cluster to access.
  late final Output<String> clusterIdentifier;

  /// The Redshift-managed VPC endpoint name.
  late final Output<String> endpointName;

  /// The port number on which the cluster accepts incoming connections.
  late final Output<int> port;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Web Services account ID of the owner of the cluster. This is only required if the cluster is in another Amazon Web Services account.
  late final Output<String> resourceOwner;

  /// The subnet group from which Amazon Redshift chooses the subnet to deploy the endpoint.
  late final Output<String> subnetGroupName;

  /// The connection endpoint for connecting to an Amazon Redshift cluster through the proxy. See details below.
  late final Output<List<EndpointAccessVpcEndpoint>> vpcEndpoints;

  /// The security group that defines the ports, protocols, and sources for inbound traffic that you are authorizing into your endpoint.
  late final Output<List<String>> vpcSecurityGroupIds;

  EndpointAccess(
    String name, {
    EndpointAccessArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshift/endpointAccess:EndpointAccess',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.address = Output.createUnknown<String>();
    this.clusterIdentifier = Output.createUnknown<String>();
    this.endpointName = Output.createUnknown<String>();
    this.port = Output.createUnknown<int>();
    this.region = Output.createUnknown<String>();
    this.resourceOwner = Output.createUnknown<String>();
    this.subnetGroupName = Output.createUnknown<String>();
    this.vpcEndpoints = Output.createUnknown<List<EndpointAccessVpcEndpoint>>();
    this.vpcSecurityGroupIds = Output.createUnknown<List<String>>();
  }
}
