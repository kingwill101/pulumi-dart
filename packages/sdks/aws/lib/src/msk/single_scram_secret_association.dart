import 'package:pulumi/pulumi.dart' as pulumi;
import 'single_scram_secret_association_args.dart';
import 'single_scram_secret_association_state.dart';

/// Associates a single SCRAM secret with a Managed Streaming for Kafka (MSK) cluster.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.msk.SingleScramSecretAssociation("example", {
///     clusterArn: exampleAwsMskCluster.arn,
///     secretArn: exampleAwsSecretsmanagerSecret.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.msk.SingleScramSecretAssociation("example",
///     cluster_arn=example_aws_msk_cluster["arn"],
///     secret_arn=example_aws_secretsmanager_secret["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Msk.SingleScramSecretAssociation("example", new()
///     {
///         ClusterArn = exampleAwsMskCluster.Arn,
///         SecretArn = exampleAwsSecretsmanagerSecret.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/msk"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := msk.NewSingleScramSecretAssociation(ctx, "example", &msk.SingleScramSecretAssociationArgs{
/// 			ClusterArn: pulumi.Any(exampleAwsMskCluster.Arn),
/// 			SecretArn:  pulumi.Any(exampleAwsSecretsmanagerSecret.Arn),
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
/// resource "aws_msk_singlescramsecretassociation" "example" {
///   cluster_arn = exampleAwsMskCluster.arn
///   secret_arn  = exampleAwsSecretsmanagerSecret.arn
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
///         var example = new SingleScramSecretAssociation("example", SingleScramSecretAssociationArgs.builder()
///             .clusterArn(exampleAwsMskCluster.arn())
///             .secretArn(exampleAwsSecretsmanagerSecret.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:msk:SingleScramSecretAssociation
///     properties:
///       clusterArn: ${exampleAwsMskCluster.arn}
///       secretArn: ${exampleAwsSecretsmanagerSecret.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import an MSK SCRAM Secret Association using the `clusterArn` and `secretArn`. For example:
///
/// ```sh
/// $ pulumi import aws:msk/singleScramSecretAssociation:SingleScramSecretAssociation example arn:aws:kafka:us-west-2:123456789012:cluster/example/279c0212-d057-4dba-9aa9-1c4e5a25bfc7-3,arn:aws:secretsmanager:us-east-1:123456789012:secret:example-123456
/// ```
class SingleScramSecretAssociation extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the MSK cluster.
  late final pulumi.Output<String> clusterArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// AWS Secrets Manager secret ARN.
  late final pulumi.Output<String> secretArn;

  /// Creates a new [SingleScramSecretAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SingleScramSecretAssociation]. {@macro pulumi_msk_single_scram_secret_association_single_scram_secret_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SingleScramSecretAssociation(
    String name, {
    SingleScramSecretAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:msk/singleScramSecretAssociation:SingleScramSecretAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clusterArn = registerOutput<String>('clusterArn');
    region = registerOutput<String>('region');
    secretArn = registerOutput<String>('secretArn');
  }

  /// Gets an existing [SingleScramSecretAssociation] resource's state with the given [name] and [id].
  static SingleScramSecretAssociation get(
    String name,
    pulumi.Input<String> id, {
    SingleScramSecretAssociationState? state,
  }) {
    return SingleScramSecretAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SingleScramSecretAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:msk/singleScramSecretAssociation:SingleScramSecretAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clusterArn = registerOutput<String>('clusterArn');
    region = registerOutput<String>('region');
    secretArn = registerOutput<String>('secretArn');
  }
}
