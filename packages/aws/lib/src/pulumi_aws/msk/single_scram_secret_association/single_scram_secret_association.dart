import 'package:pulumi/pulumi.dart';
import 'single_scram_secret_association_args.dart';

/// Associates a single SCRAM secret with a Managed Streaming for Kafka (MSK) cluster.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.msk.SingleScramSecretAssociation("example", {
/// clusterArn: exampleAwsMskCluster.arn,
/// secretArn: exampleAwsSecretsmanagerSecret.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.msk.SingleScramSecretAssociation("example",
/// cluster_arn=example_aws_msk_cluster["arn"],
/// secret_arn=example_aws_secretsmanager_secret["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Msk.SingleScramSecretAssociation("example", new()
/// {
/// ClusterArn = exampleAwsMskCluster.Arn,
/// SecretArn = exampleAwsSecretsmanagerSecret.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/msk"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := msk.NewSingleScramSecretAssociation(ctx, "example", &msk.SingleScramSecretAssociationArgs{
/// ClusterArn: pulumi.Any(exampleAwsMskCluster.Arn),
/// SecretArn:  pulumi.Any(exampleAwsSecretsmanagerSecret.Arn),
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
/// import com.pulumi.aws.msk.SingleScramSecretAssociation;
/// import com.pulumi.aws.msk.SingleScramSecretAssociationArgs;
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
/// var example = new SingleScramSecretAssociation("example", SingleScramSecretAssociationArgs.builder()
/// .clusterArn(exampleAwsMskCluster.arn())
/// .secretArn(exampleAwsSecretsmanagerSecret.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:msk:SingleScramSecretAssociation
/// properties:
/// clusterArn: ${exampleAwsMskCluster.arn}
/// secretArn: ${exampleAwsSecretsmanagerSecret.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import an MSK SCRAM Secret Association using the <span pulumi-lang-nodejs="`clusterArn`" pulumi-lang-dotnet="`ClusterArn`" pulumi-lang-go="`clusterArn`" pulumi-lang-python="`cluster_arn`" pulumi-lang-yaml="`clusterArn`" pulumi-lang-java="`clusterArn`">`cluster_arn`</span> and <span pulumi-lang-nodejs="`secretArn`" pulumi-lang-dotnet="`SecretArn`" pulumi-lang-go="`secretArn`" pulumi-lang-python="`secret_arn`" pulumi-lang-yaml="`secretArn`" pulumi-lang-java="`secretArn`">`secret_arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:msk/singleScramSecretAssociation:SingleScramSecretAssociation example arn:aws:kafka:us-west-2:123456789012:cluster/example/279c0212-d057-4dba-9aa9-1c4e5a25bfc7-3,arn:aws:secretsmanager:us-east-1:123456789012:secret:example-123456
/// ```
class SingleScramSecretAssociation extends CustomResource {
  /// Amazon Resource Name (ARN) of the MSK cluster.
  late final Output<String> clusterArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// AWS Secrets Manager secret ARN.
  late final Output<String> secretArn;

  SingleScramSecretAssociation(
    String name, {
    SingleScramSecretAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:msk/singleScramSecretAssociation:SingleScramSecretAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.clusterArn = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.secretArn = Output.createUnknown<String>();
  }
}
