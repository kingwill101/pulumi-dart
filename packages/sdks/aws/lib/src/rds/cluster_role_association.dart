import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_role_association_args.dart';
import 'cluster_role_association_state.dart';

/// Manages a RDS DB Cluster association with an IAM Role. Example use cases:
///
/// * [Creating an IAM Role to Allow Amazon Aurora to Access AWS Services](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Integrating.Authorizing.IAM.CreateRole.html)
/// * [Importing Amazon S3 Data into an RDS PostgreSQL DB Cluster](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PostgreSQL.S3Import.html)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rds.ClusterRoleAssociation("example", {
///     dbClusterIdentifier: exampleAwsRdsCluster.id,
///     featureName: "S3_INTEGRATION",
///     roleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.ClusterRoleAssociation("example",
///     db_cluster_identifier=example_aws_rds_cluster["id"],
///     feature_name="S3_INTEGRATION",
///     role_arn=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Rds.ClusterRoleAssociation("example", new()
///     {
///         DbClusterIdentifier = exampleAwsRdsCluster.Id,
///         FeatureName = "S3_INTEGRATION",
///         RoleArn = exampleAwsIamRole.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := rds.NewClusterRoleAssociation(ctx, "example", &rds.ClusterRoleAssociationArgs{
/// 			DbClusterIdentifier: pulumi.Any(exampleAwsRdsCluster.Id),
/// 			FeatureName:         pulumi.String("S3_INTEGRATION"),
/// 			RoleArn:             pulumi.Any(exampleAwsIamRole.Arn),
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
/// resource "aws_rds_clusterroleassociation" "example" {
///   db_cluster_identifier = exampleAwsRdsCluster.id
///   feature_name          = "S3_INTEGRATION"
///   role_arn              = exampleAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.ClusterRoleAssociation;
/// import com.pulumi.aws.rds.ClusterRoleAssociationArgs;
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
///         var example = new ClusterRoleAssociation("example", ClusterRoleAssociationArgs.builder()
///             .dbClusterIdentifier(exampleAwsRdsCluster.id())
///             .featureName("S3_INTEGRATION")
///             .roleArn(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:rds:ClusterRoleAssociation
///     properties:
///       dbClusterIdentifier: ${exampleAwsRdsCluster.id}
///       featureName: S3_INTEGRATION
///       roleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.rds.ClusterRoleAssociation` using the DB Cluster Identifier and IAM Role ARN separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:rds/clusterRoleAssociation:ClusterRoleAssociation example my-db-cluster,arn:aws:iam::123456789012:role/my-role
/// ```
class ClusterRoleAssociation extends pulumi.CustomResource {
  /// DB Cluster Identifier to associate with the IAM Role.
  late final pulumi.Output<String> dbClusterIdentifier;
  /// Name of the feature for association. This can be found in the AWS documentation relevant to the integration or a full list is available in the `SupportedFeatureNames` list returned by [AWS CLI rds describe-db-engine-versions](https://docs.aws.amazon.com/cli/latest/reference/rds/describe-db-engine-versions.html).
  late final pulumi.Output<String?> featureName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the IAM Role to associate with the DB Cluster.
  late final pulumi.Output<String> roleArn;

  /// Creates a new [ClusterRoleAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterRoleAssociation]. {@macro pulumi_rds_cluster_role_association_cluster_role_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterRoleAssociation(
    String name, {
    ClusterRoleAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/clusterRoleAssociation:ClusterRoleAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    dbClusterIdentifier = registerOutput<String>('dbClusterIdentifier');
    featureName = registerOutput<String?>('featureName');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
  }

  /// Gets an existing [ClusterRoleAssociation] resource's state with the given [name] and [id].
  static ClusterRoleAssociation get(
    String name,
    pulumi.Input<String> id, {
    ClusterRoleAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ClusterRoleAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ClusterRoleAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/clusterRoleAssociation:ClusterRoleAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dbClusterIdentifier = registerOutput<String>('dbClusterIdentifier');
    featureName = registerOutput<String?>('featureName');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
  }

  /// Creates a typed reference to an existing [ClusterRoleAssociation] resource.
  ClusterRoleAssociation.reference(String urn)
    : super(
        'aws:rds/clusterRoleAssociation:ClusterRoleAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    dbClusterIdentifier = registerOutput<String>('dbClusterIdentifier');
    featureName = registerOutput<String?>('featureName');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
  }
}
