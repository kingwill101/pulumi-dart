import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_args.dart';

/// Provides a resource to manage an Amazon Kinesis Streams resource policy.
/// Use a resource policy to manage cross-account access to your data streams or consumers.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kinesis.ResourcePolicy("example", {
///     resourceArn: exampleAwsKinesisStream.arn,
///     policy: `{
///   \"Version\": \"2012-10-17\",
///   \"Id\": \"writePolicy\",
///   \"Statement\": [{
///     \"Sid\": \"writestatement\",
///     \"Effect\": \"Allow\",
///     \"Principal\": {
///       \"AWS\": \"123456789456\"
///     },
///     \"Action\": [
///       \"kinesis:DescribeStreamSummary\",
///       \"kinesis:ListShards\",
///       \"kinesis:PutRecord\",
///       \"kinesis:PutRecords\"
///     ],
///     \"Resource\": \"${exampleAwsKinesisStream.arn}\"
///   }]
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kinesis.ResourcePolicy("example",
///     resource_arn=example_aws_kinesis_stream["arn"],
///     policy=f"""{{
///   \"Version\": \"2012-10-17\",
///   \"Id\": \"writePolicy\",
///   \"Statement\": [{{
///     \"Sid\": \"writestatement\",
///     \"Effect\": \"Allow\",
///     \"Principal\": {{
///       \"AWS\": \"123456789456\"
///     }},
///     \"Action\": [
///       \"kinesis:DescribeStreamSummary\",
///       \"kinesis:ListShards\",
///       \"kinesis:PutRecord\",
///       \"kinesis:PutRecords\"
///     ],
///     \"Resource\": \"{example_aws_kinesis_stream["arn"]}\"
///   }}]
/// }}
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kinesis.ResourcePolicy("example", new()
///     {
///         ResourceArn = exampleAwsKinesisStream.Arn,
///         Policy = @$"{{
///   \""Version\"": \""2012-10-17\"",
///   \""Id\"": \""writePolicy\"",
///   \""Statement\"": [{{
///     \""Sid\"": \""writestatement\"",
///     \""Effect\"": \""Allow\"",
///     \""Principal\"": {{
///       \""AWS\"": \""123456789456\""
///     }},
///     \""Action\"": [
///       \""kinesis:DescribeStreamSummary\"",
///       \""kinesis:ListShards\"",
///       \""kinesis:PutRecord\"",
///       \""kinesis:PutRecords\""
///     ],
///     \""Resource\"": \""{exampleAwsKinesisStream.Arn}\""
///   }}]
/// }}
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kinesis.NewResourcePolicy(ctx, "example", &kinesis.ResourcePolicyArgs{
/// 			ResourceArn: pulumi.Any(exampleAwsKinesisStream.Arn),
/// 			Policy: pulumi.Sprintf(`{
///   \"Version\": \"2012-10-17\",
///   \"Id\": \"writePolicy\",
///   \"Statement\": [{
///     \"Sid\": \"writestatement\",
///     \"Effect\": \"Allow\",
///     \"Principal\": {
///       \"AWS\": \"123456789456\"
///     },
///     \"Action\": [
///       \"kinesis:DescribeStreamSummary\",
///       \"kinesis:ListShards\",
///       \"kinesis:PutRecord\",
///       \"kinesis:PutRecords\"
///     ],
///     \"Resource\": \"%v\"
///   }]
/// }
/// `, exampleAwsKinesisStream.Arn),
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
/// import com.pulumi.aws.kinesis.ResourcePolicy;
/// import com.pulumi.aws.kinesis.ResourcePolicyArgs;
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
///         var example = new ResourcePolicy("example", ResourcePolicyArgs.builder()
///             .resourceArn(exampleAwsKinesisStream.arn())
///             .policy("""
/// {
///   \"Version\": \"2012-10-17\",
///   \"Id\": \"writePolicy\",
///   \"Statement\": [{
///     \"Sid\": \"writestatement\",
///     \"Effect\": \"Allow\",
///     \"Principal\": {
///       \"AWS\": \"123456789456\"
///     },
///     \"Action\": [
///       \"kinesis:DescribeStreamSummary\",
///       \"kinesis:ListShards\",
///       \"kinesis:PutRecord\",
///       \"kinesis:PutRecords\"
///     ],
///     \"Resource\": \"%s\"
///   }]
/// }
/// ", exampleAwsKinesisStream.arn()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kinesis:ResourcePolicy
///     properties:
///       resourceArn: ${exampleAwsKinesisStream.arn}
///       policy: |
///         {
///           \"Version\": \"2012-10-17\",
///           \"Id\": \"writePolicy\",
///           \"Statement\": [{
///             \"Sid\": \"writestatement\",
///             \"Effect\": \"Allow\",
///             \"Principal\": {
///               \"AWS\": \"123456789456\"
///             },
///             \"Action\": [
///               \"kinesis:DescribeStreamSummary\",
///               \"kinesis:ListShards\",
///               \"kinesis:PutRecord\",
///               \"kinesis:PutRecords\"
///             ],
///             \"Resource\": \"${exampleAwsKinesisStream.arn}\"
///           }]
///         }
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Kinesis stream.
///
///
/// Using `pulumi import`, import Kinesis resource policies using the `resource_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:kinesis/resourcePolicy:ResourcePolicy example arn:aws:kinesis:us-west-2:123456789012:stream/example
/// ```
class ResourcePolicy extends pulumi.CustomResource {
  /// The policy document.
  late final pulumi.Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Name (ARN) of the data stream or consumer.
  late final pulumi.Output<String> resourceArn;

  /// Creates a new [ResourcePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourcePolicy]. {@macro pulumi_kinesis_resource_policy_resource_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourcePolicy(
    String name, {
    ResourcePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:kinesis/resourcePolicy:ResourcePolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
  }
}
