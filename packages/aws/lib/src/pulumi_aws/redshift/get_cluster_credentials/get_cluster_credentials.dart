import 'package:pulumi/pulumi.dart';
import 'get_cluster_credentials_args.dart';
import 'get_cluster_credentials_result.dart';

/// Provides redshift cluster temporary credentials.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.redshift.getClusterCredentials({
/// clusterIdentifier: exampleAwsRedshiftCluster.clusterIdentifier,
/// dbUser: exampleAwsRedshiftCluster.masterUsername,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.get_cluster_credentials(cluster_identifier=example_aws_redshift_cluster["clusterIdentifier"],
/// db_user=example_aws_redshift_cluster["masterUsername"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.RedShift.GetClusterCredentials.Invoke(new()
/// {
/// ClusterIdentifier = exampleAwsRedshiftCluster.ClusterIdentifier,
/// DbUser = exampleAwsRedshiftCluster.MasterUsername,
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
/// _, err := redshift.GetClusterCredentials(ctx, &redshift.GetClusterCredentialsArgs{
/// ClusterIdentifier: exampleAwsRedshiftCluster.ClusterIdentifier,
/// DbUser:            exampleAwsRedshiftCluster.MasterUsername,
/// }, nil)
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
/// import com.pulumi.aws.redshift.RedshiftFunctions;
/// import com.pulumi.aws.redshift.inputs.GetClusterCredentialsArgs;
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
/// final var example = RedshiftFunctions.getClusterCredentials(GetClusterCredentialsArgs.builder()
/// .clusterIdentifier(exampleAwsRedshiftCluster.clusterIdentifier())
/// .dbUser(exampleAwsRedshiftCluster.masterUsername())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:redshift:getClusterCredentials
/// arguments:
/// clusterIdentifier: ${exampleAwsRedshiftCluster.clusterIdentifier}
/// dbUser: ${exampleAwsRedshiftCluster.masterUsername}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetClusterCredentialsResult> getClusterCredentials(
  GetClusterCredentialsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:redshift/getClusterCredentials:getClusterCredentials',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterCredentialsResult.fromMap(result);
}
