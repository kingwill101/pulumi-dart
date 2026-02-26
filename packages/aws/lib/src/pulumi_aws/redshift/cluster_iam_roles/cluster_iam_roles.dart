import 'package:pulumi/pulumi.dart';
import 'cluster_iam_roles_args.dart';

/// Provides a Redshift Cluster IAM Roles resource.
///
/// > **NOTE:** A Redshift cluster's default IAM role can be managed both by this resource's <span pulumi-lang-nodejs="`defaultIamRoleArn`" pulumi-lang-dotnet="`DefaultIamRoleArn`" pulumi-lang-go="`defaultIamRoleArn`" pulumi-lang-python="`default_iam_role_arn`" pulumi-lang-yaml="`defaultIamRoleArn`" pulumi-lang-java="`defaultIamRoleArn`">`default_iam_role_arn`</span> argument and the <span pulumi-lang-nodejs="`aws.redshift.Cluster`" pulumi-lang-dotnet="`aws.redshift.Cluster`" pulumi-lang-go="`redshift.Cluster`" pulumi-lang-python="`redshift.Cluster`" pulumi-lang-yaml="`aws.redshift.Cluster`" pulumi-lang-java="`aws.redshift.Cluster`">`aws.redshift.Cluster`</span> resource's <span pulumi-lang-nodejs="`defaultIamRoleArn`" pulumi-lang-dotnet="`DefaultIamRoleArn`" pulumi-lang-go="`defaultIamRoleArn`" pulumi-lang-python="`default_iam_role_arn`" pulumi-lang-yaml="`defaultIamRoleArn`" pulumi-lang-java="`defaultIamRoleArn`">`default_iam_role_arn`</span> argument. Do not configure different values for both arguments. Doing so will cause a conflict of default IAM roles.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshift.ClusterIamRoles("example", {
/// clusterIdentifier: exampleAwsRedshiftCluster.clusterIdentifier,
/// iamRoleArns: [exampleAwsIamRole.arn],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.ClusterIamRoles("example",
/// cluster_identifier=example_aws_redshift_cluster["clusterIdentifier"],
/// iam_role_arns=[example_aws_iam_role["arn"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.RedShift.ClusterIamRoles("example", new()
/// {
/// ClusterIdentifier = exampleAwsRedshiftCluster.ClusterIdentifier,
/// IamRoleArns = new[]
/// {
/// exampleAwsIamRole.Arn,
/// },
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
/// _, err := redshift.NewClusterIamRoles(ctx, "example", &redshift.ClusterIamRolesArgs{
/// ClusterIdentifier: pulumi.Any(exampleAwsRedshiftCluster.ClusterIdentifier),
/// IamRoleArns: pulumi.StringArray{
/// exampleAwsIamRole.Arn,
/// },
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new ClusterIamRoles("example", ClusterIamRolesArgs.builder()
/// .clusterIdentifier(exampleAwsRedshiftCluster.clusterIdentifier())
/// .iamRoleArns(exampleAwsIamRole.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:redshift:ClusterIamRoles
/// properties:
/// clusterIdentifier: ${exampleAwsRedshiftCluster.clusterIdentifier}
/// iamRoleArns:
/// - ${exampleAwsIamRole.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Cluster IAM Roless using the <span pulumi-lang-nodejs="`clusterIdentifier`" pulumi-lang-dotnet="`ClusterIdentifier`" pulumi-lang-go="`clusterIdentifier`" pulumi-lang-python="`cluster_identifier`" pulumi-lang-yaml="`clusterIdentifier`" pulumi-lang-java="`clusterIdentifier`">`cluster_identifier`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/clusterIamRoles:ClusterIamRoles examplegroup1 example
/// ```
class ClusterIamRoles extends CustomResource {
  /// The name of the Redshift Cluster IAM Roles.
  late final Output<String> clusterIdentifier;

  /// The Amazon Resource Name (ARN) for the IAM role that was set as default for the cluster when the cluster was created.
  late final Output<String> defaultIamRoleArn;

  /// A list of IAM Role ARNs to associate with the cluster. A Maximum of 10 can be associated to the cluster at any time.
  late final Output<List<String>> iamRoleArns;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  ClusterIamRoles(
    String name, {
    ClusterIamRolesArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshift/clusterIamRoles:ClusterIamRoles',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.clusterIdentifier = Output.createUnknown<String>();
    this.defaultIamRoleArn = Output.createUnknown<String>();
    this.iamRoleArns = Output.createUnknown<List<String>>();
    this.region = Output.createUnknown<String>();
  }
}
