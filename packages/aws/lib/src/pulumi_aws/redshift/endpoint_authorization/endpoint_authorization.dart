import 'package:pulumi/pulumi.dart';
import 'endpoint_authorization_args.dart';

/// Creates a new Amazon Redshift endpoint authorization.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshift.EndpointAuthorization("example", {
/// account: "01234567910",
/// clusterIdentifier: exampleAwsRedshiftCluster.clusterIdentifier,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.EndpointAuthorization("example",
/// account="01234567910",
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
/// var example = new Aws.RedShift.EndpointAuthorization("example", new()
/// {
/// Account = "01234567910",
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
/// _, err := redshift.NewEndpointAuthorization(ctx, "example", &redshift.EndpointAuthorizationArgs{
/// Account:           pulumi.String("01234567910"),
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
/// import com.pulumi.aws.redshift.EndpointAuthorization;
/// import com.pulumi.aws.redshift.EndpointAuthorizationArgs;
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
/// var example = new EndpointAuthorization("example", EndpointAuthorizationArgs.builder()
/// .account("01234567910")
/// .clusterIdentifier(exampleAwsRedshiftCluster.clusterIdentifier())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:redshift:EndpointAuthorization
/// properties:
/// account: '01234567910'
/// clusterIdentifier: ${exampleAwsRedshiftCluster.clusterIdentifier}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Redshift endpoint authorization using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/endpointAuthorization:EndpointAuthorization example 01234567910:cluster-example-id
/// ```
class EndpointAuthorization extends CustomResource {
  /// The Amazon Web Services account ID to grant access to.
  late final Output<String> account;

  /// Indicates whether all VPCs in the grantee account are allowed access to the cluster.
  late final Output<bool> allowedAllVpcs;

  /// The cluster identifier of the cluster to grant access to.
  late final Output<String> clusterIdentifier;

  /// The number of Redshift-managed VPC endpoints created for the authorization.
  late final Output<int> endpointCount;

  /// Indicates whether to force the revoke action. If true, the Redshift-managed VPC endpoints associated with the endpoint authorization are also deleted. Default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> forceDelete;

  /// The Amazon Web Services account ID of the grantee of the cluster.
  late final Output<String> grantee;

  /// The Amazon Web Services account ID of the cluster owner.
  late final Output<String> grantor;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The virtual private cloud (VPC) identifiers to grant access to. If none are specified all VPCs in shared account are allowed.
  late final Output<List<String>?> vpcIds;

  EndpointAuthorization(
    String name, {
    EndpointAuthorizationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshift/endpointAuthorization:EndpointAuthorization',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.account = registerOutput<String>('account');
    this.allowedAllVpcs = registerOutput<bool>('allowedAllVpcs');
    this.clusterIdentifier = registerOutput<String>('clusterIdentifier');
    this.endpointCount = registerOutput<int>('endpointCount');
    this.forceDelete = registerOutput<bool?>('forceDelete');
    this.grantee = registerOutput<String>('grantee');
    this.grantor = registerOutput<String>('grantor');
    this.region = registerOutput<String>('region');
    this.vpcIds = registerOutput<List<String>?>('vpcIds');
  }
}
