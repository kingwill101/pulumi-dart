import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_iam_roles_args.dart';
import 'cluster_iam_roles_state.dart';

/// Provides a Redshift Cluster IAM Roles resource.
///
/// &gt; **NOTE:** A Redshift cluster's default IAM role can be managed both by this resource's `default_iam_role_arn` argument and the `aws.redshift.Cluster` resource's `default_iam_role_arn` argument. Do not configure different values for both arguments. Doing so will cause a conflict of default IAM roles.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshift.ClusterIamRoles("example", {
///     clusterIdentifier: exampleAwsRedshiftCluster.clusterIdentifier,
///     iamRoleArns: [exampleAwsIamRole.arn],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.ClusterIamRoles("example",
///     cluster_identifier=example_aws_redshift_cluster["clusterIdentifier"],
///     iam_role_arns=[example_aws_iam_role["arn"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.RedShift.ClusterIamRoles("example", new()
///     {
///         ClusterIdentifier = exampleAwsRedshiftCluster.ClusterIdentifier,
///         IamRoleArns = new[]
///         {
///             exampleAwsIamRole.Arn,
///         },
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
/// 		_, err := redshift.NewClusterIamRoles(ctx, "example", &redshift.ClusterIamRolesArgs{
/// 			ClusterIdentifier: pulumi.Any(exampleAwsRedshiftCluster.ClusterIdentifier),
/// 			IamRoleArns: pulumi.StringArray{
/// 				exampleAwsIamRole.Arn,
/// 			},
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
/// import com.pulumi.aws.redshift.ClusterIamRoles;
/// import com.pulumi.aws.redshift.ClusterIamRolesArgs;
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
///         var example = new ClusterIamRoles("example", ClusterIamRolesArgs.builder()
///             .clusterIdentifier(exampleAwsRedshiftCluster.clusterIdentifier())
///             .iamRoleArns(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:redshift:ClusterIamRoles
///     properties:
///       clusterIdentifier: ${exampleAwsRedshiftCluster.clusterIdentifier}
///       iamRoleArns:
///         - ${exampleAwsIamRole.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Cluster IAM Roless using the `cluster_identifier`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/clusterIamRoles:ClusterIamRoles examplegroup1 example
/// ```
class ClusterIamRoles extends pulumi.CustomResource {
  /// The name of the Redshift Cluster IAM Roles.
  late final pulumi.Output<String> clusterIdentifier;
  /// The Amazon Resource Name (ARN) for the IAM role that was set as default for the cluster when the cluster was created.
  late final pulumi.Output<String> defaultIamRoleArn;
  /// A list of IAM Role ARNs to associate with the cluster. A Maximum of 10 can be associated to the cluster at any time.
  late final pulumi.Output<List<String>> iamRoleArns;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [ClusterIamRoles].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterIamRoles]. {@macro pulumi_redshift_cluster_iam_roles_cluster_iam_roles_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterIamRoles(
    String name, {
    ClusterIamRolesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/clusterIamRoles:ClusterIamRoles',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clusterIdentifier = registerOutput<String>('clusterIdentifier');
    defaultIamRoleArn = registerOutput<String>('defaultIamRoleArn');
    iamRoleArns = registerOutput<List<String>>('iamRoleArns');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [ClusterIamRoles] resource's state with the given [name] and [id].
  static ClusterIamRoles get(
    String name,
    pulumi.Input<String> id, {
    ClusterIamRolesState? state,
  }) {
    return ClusterIamRoles._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ClusterIamRoles._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/clusterIamRoles:ClusterIamRoles',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clusterIdentifier = registerOutput<String>('clusterIdentifier');
    defaultIamRoleArn = registerOutput<String>('defaultIamRoleArn');
    iamRoleArns = registerOutput<List<String>>('iamRoleArns');
    region = registerOutput<String>('region');
  }
}
