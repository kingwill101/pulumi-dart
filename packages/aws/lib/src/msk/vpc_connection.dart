import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_connection_args.dart';

/// Resource for managing an AWS Managed Streaming for Kafka VPC Connection.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.msk.VpcConnection("test", {
///     authentication: "SASL_IAM",
///     targetClusterArn: "aws_msk_cluster.arn",
///     vpcId: testAwsVpc.id,
///     clientSubnets: testAwsSubnet.map(__item => __item.id),
///     securityGroups: [testAwsSecurityGroup.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.msk.VpcConnection("test",
///     authentication="SASL_IAM",
///     target_cluster_arn="aws_msk_cluster.arn",
///     vpc_id=test_aws_vpc["id"],
///     client_subnets=[__item["id"] for __item in test_aws_subnet],
///     security_groups=[test_aws_security_group["id"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Msk.VpcConnection("test", new()
///     {
///         Authentication = "SASL_IAM",
///         TargetClusterArn = "aws_msk_cluster.arn",
///         VpcId = testAwsVpc.Id,
///         ClientSubnets = testAwsSubnet.Select(__item => __item.Id).ToList(),
///         SecurityGroups = new[]
///         {
///             testAwsSecurityGroup.Id,
///         },
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
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// var splat0 []interface{}
/// for _, val0 := range testAwsSubnet {
/// splat0 = append(splat0, val0.Id)
/// }
/// _, err := msk.NewVpcConnection(ctx, "test", &msk.VpcConnectionArgs{
/// Authentication: pulumi.String("SASL_IAM"),
/// TargetClusterArn: pulumi.String("aws_msk_cluster.arn"),
/// VpcId: pulumi.Any(testAwsVpc.Id),
/// ClientSubnets: toPulumiArray(splat0),
/// SecurityGroups: pulumi.StringArray{
/// testAwsSecurityGroup.Id,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// func toPulumiArray(arr []) pulumi.Array {
/// var pulumiArr pulumi.Array
/// for _, v := range arr {
/// pulumiArr = append(pulumiArr, pulumi.(v))
/// }
/// return pulumiArr
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.msk.VpcConnection;
/// import com.pulumi.aws.msk.VpcConnectionArgs;
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
///         var test = new VpcConnection("test", VpcConnectionArgs.builder()
///             .authentication("SASL_IAM")
///             .targetClusterArn("aws_msk_cluster.arn")
///             .vpcId(testAwsVpc.id())
///             .clientSubnets(testAwsSubnet.stream().map(element -> element.id()).collect(toList()))
///             .securityGroups(testAwsSecurityGroup.id())
///             .build());
///
///     }
/// }
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import MSK configurations using the configuration ARN. For example:
///
/// ```sh
/// $ pulumi import aws:msk/vpcConnection:VpcConnection example arn:aws:kafka:eu-west-2:123456789012:vpc-connection/123456789012/example/38173259-79cd-4ee8-87f3-682ea6023f48-2
/// ```
class VpcConnection extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the VPC connection.
  late final pulumi.Output<String> arn;

  /// The authentication type for the client VPC connection. Specify one of these auth type strings: SASL_IAM, SASL_SCRAM, or TLS.
  late final pulumi.Output<String> authentication;

  /// The list of subnets in the client VPC to connect to.
  late final pulumi.Output<List<String>> clientSubnets;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The security groups to attach to the ENIs for the broker nodes.
  late final pulumi.Output<List<String>> securityGroups;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The Amazon Resource Name (ARN) of the cluster.
  late final pulumi.Output<String> targetClusterArn;

  /// The VPC ID of the remote client.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [VpcConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcConnection]. {@macro pulumi_msk_vpc_connection_vpc_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcConnection(
    String name, {
    VpcConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:msk/vpcConnection:VpcConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.authentication = registerOutput<String>('authentication');
    this.clientSubnets = registerOutput<List<String>>('clientSubnets');
    this.region = registerOutput<String>('region');
    this.securityGroups = registerOutput<List<String>>('securityGroups');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetClusterArn = registerOutput<String>('targetClusterArn');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
