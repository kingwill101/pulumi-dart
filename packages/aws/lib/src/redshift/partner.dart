import 'package:pulumi/pulumi.dart' as pulumi;
import 'partner_args.dart';

/// Creates a new Amazon Redshift Partner Integration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshift.Partner("example", {
///     clusterIdentifier: exampleAwsRedshiftCluster.id,
///     accountId: "1234567910",
///     databaseName: exampleAwsRedshiftCluster.databaseName,
///     partnerName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.Partner("example",
///     cluster_identifier=example_aws_redshift_cluster["id"],
///     account_id="1234567910",
///     database_name=example_aws_redshift_cluster["databaseName"],
///     partner_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.RedShift.Partner("example", new()
///     {
///         ClusterIdentifier = exampleAwsRedshiftCluster.Id,
///         AccountId = "1234567910",
///         DatabaseName = exampleAwsRedshiftCluster.DatabaseName,
///         PartnerName = "example",
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
/// 		_, err := redshift.NewPartner(ctx, "example", &redshift.PartnerArgs{
/// 			ClusterIdentifier: pulumi.Any(exampleAwsRedshiftCluster.Id),
/// 			AccountId:         pulumi.String("1234567910"),
/// 			DatabaseName:      pulumi.Any(exampleAwsRedshiftCluster.DatabaseName),
/// 			PartnerName:       pulumi.String("example"),
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
/// import com.pulumi.aws.redshift.Partner;
/// import com.pulumi.aws.redshift.PartnerArgs;
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
///         var example = new Partner("example", PartnerArgs.builder()
///             .clusterIdentifier(exampleAwsRedshiftCluster.id())
///             .accountId("1234567910")
///             .databaseName(exampleAwsRedshiftCluster.databaseName())
///             .partnerName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:redshift:Partner
///     properties:
///       clusterIdentifier: ${exampleAwsRedshiftCluster.id}
///       accountId: 1.23456791e+09
///       databaseName: ${exampleAwsRedshiftCluster.databaseName}
///       partnerName: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift usage limits using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/partner:Partner example 01234567910:cluster-example-id:example:example
/// ```
class Partner extends pulumi.CustomResource {
  /// The Amazon Web Services account ID that owns the cluster.
  late final pulumi.Output<String> accountId;

  /// The cluster identifier of the cluster that receives data from the partner.
  late final pulumi.Output<String> clusterIdentifier;

  /// The name of the database that receives data from the partner.
  late final pulumi.Output<String> databaseName;

  /// The name of the partner that is authorized to send data.
  late final pulumi.Output<String> partnerName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// (Optional) The partner integration status.
  late final pulumi.Output<String> status;

  /// (Optional) The status message provided by the partner.
  late final pulumi.Output<String> statusMessage;

  /// Creates a new [Partner].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Partner]. {@macro pulumi_redshift_partner_partner_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Partner(
    String name, {
    PartnerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:redshift/partner:Partner',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.accountId = registerOutput<String>('accountId');
    this.clusterIdentifier = registerOutput<String>('clusterIdentifier');
    this.databaseName = registerOutput<String>('databaseName');
    this.partnerName = registerOutput<String>('partnerName');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.statusMessage = registerOutput<String>('statusMessage');
  }
}
