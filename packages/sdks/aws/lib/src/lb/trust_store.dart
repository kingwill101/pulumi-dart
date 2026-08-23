import 'package:pulumi/pulumi.dart' as pulumi;
import 'trust_store_args.dart';
import 'trust_store_state.dart';

/// Provides a ELBv2 Trust Store for use with Application Load Balancer Listener resources.
///
/// ## Example Usage
///
/// ### Trust Store Load Balancer Listener
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.lb.TrustStore("test", {
///     name: "tf-example-lb-ts",
///     caCertificatesBundleS3Bucket: "...",
///     caCertificatesBundleS3Key: "...",
/// });
/// const example = new aws.lb.Listener("example", {
///     loadBalancerArn: exampleAwsLb.id,
///     defaultActions: [{
///         targetGroupArn: exampleAwsLbTargetGroup.id,
///         type: "forward",
///     }],
///     mutualAuthentication: {
///         mode: "verify",
///         trustStoreArn: test.arn,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.lb.TrustStore("test",
///     name="tf-example-lb-ts",
///     ca_certificates_bundle_s3_bucket="...",
///     ca_certificates_bundle_s3_key="...")
/// example = aws.lb.Listener("example",
///     load_balancer_arn=example_aws_lb["id"],
///     default_actions=[{
///         "target_group_arn": example_aws_lb_target_group["id"],
///         "type": "forward",
///     }],
///     mutual_authentication={
///         "mode": "verify",
///         "trust_store_arn": test.arn,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.LB.TrustStore("test", new()
///     {
///         Name = "tf-example-lb-ts",
///         CaCertificatesBundleS3Bucket = "...",
///         CaCertificatesBundleS3Key = "...",
///     });
///
///     var example = new Aws.LB.Listener("example", new()
///     {
///         LoadBalancerArn = exampleAwsLb.Id,
///         DefaultActions = new[]
///         {
///             new Aws.LB.Inputs.ListenerDefaultActionArgs
///             {
///                 TargetGroupArn = exampleAwsLbTargetGroup.Id,
///                 Type = "forward",
///             },
///         },
///         MutualAuthentication = new Aws.LB.Inputs.ListenerMutualAuthenticationArgs
///         {
///             Mode = "verify",
///             TrustStoreArn = test.Arn,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := lb.NewTrustStore(ctx, "test", &lb.TrustStoreArgs{
/// 			Name:                         pulumi.String("tf-example-lb-ts"),
/// 			CaCertificatesBundleS3Bucket: pulumi.String("..."),
/// 			CaCertificatesBundleS3Key:    pulumi.String("..."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lb.NewListener(ctx, "example", &lb.ListenerArgs{
/// 			LoadBalancerArn: pulumi.Any(exampleAwsLb.Id),
/// 			DefaultActions: lb.ListenerDefaultActionArray{
/// 				&lb.ListenerDefaultActionArgs{
/// 					TargetGroupArn: pulumi.Any(exampleAwsLbTargetGroup.Id),
/// 					Type:           pulumi.String("forward"),
/// 				},
/// 			},
/// 			MutualAuthentication: &lb.ListenerMutualAuthenticationArgs{
/// 				Mode:          pulumi.String("verify"),
/// 				TrustStoreArn: test.Arn,
/// 			},
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
/// resource "aws_lb_truststore" "test" {
///   name                             = "tf-example-lb-ts"
///   ca_certificates_bundle_s3_bucket = "..."
///   ca_certificates_bundle_s3_key    = "..."
/// }
/// resource "aws_lb_listener" "example" {
///   load_balancer_arn = exampleAwsLb.id
///   default_actions {
///     target_group_arn = exampleAwsLbTargetGroup.id
///     type             = "forward"
///   }
///   mutual_authentication = {
///     mode            = "verify"
///     trust_store_arn = aws_lb_truststore.test.arn
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lb.TrustStore;
/// import com.pulumi.aws.lb.TrustStoreArgs;
/// import com.pulumi.aws.lb.Listener;
/// import com.pulumi.aws.lb.ListenerArgs;
/// import com.pulumi.aws.lb.inputs.ListenerDefaultActionArgs;
/// import com.pulumi.aws.lb.inputs.ListenerMutualAuthenticationArgs;
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
///         var test = new TrustStore("test", TrustStoreArgs.builder()
///             .name("tf-example-lb-ts")
///             .caCertificatesBundleS3Bucket("...")
///             .caCertificatesBundleS3Key("...")
///             .build());
///
///         var example = new Listener("example", ListenerArgs.builder()
///             .loadBalancerArn(exampleAwsLb.id())
///             .defaultActions(ListenerDefaultActionArgs.builder()
///                 .targetGroupArn(exampleAwsLbTargetGroup.id())
///                 .type("forward")
///                 .build())
///             .mutualAuthentication(ListenerMutualAuthenticationArgs.builder()
///                 .mode("verify")
///                 .trustStoreArn(test.arn())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:lb:TrustStore
///     properties:
///       name: tf-example-lb-ts
///       caCertificatesBundleS3Bucket: '...'
///       caCertificatesBundleS3Key: '...'
///   example:
///     type: aws:lb:Listener
///     properties:
///       loadBalancerArn: ${exampleAwsLb.id}
///       defaultActions:
///         - targetGroupArn: ${exampleAwsLbTargetGroup.id}
///           type: forward
///       mutualAuthentication:
///         mode: verify
///         trustStoreArn: ${test.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the trust store.
///
///
/// Using `pulumi import`, import Target Groups using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:lb/trustStore:TrustStore example arn:aws:elasticloadbalancing:us-west-2:187416307283:truststore/my-trust-store/20cfe21448b66314
/// ```
class TrustStore extends pulumi.CustomResource {
  /// ARN of the Trust Store (matches `id`).
  late final pulumi.Output<String> arn;
  /// ARN suffix for use with CloudWatch Metrics.
  late final pulumi.Output<String> arnSuffix;
  /// S3 Bucket name holding the client certificate CA bundle.
  late final pulumi.Output<String> caCertificatesBundleS3Bucket;
  /// S3 object key holding the client certificate CA bundle.
  late final pulumi.Output<String> caCertificatesBundleS3Key;
  /// Version Id of CA bundle S3 bucket object, if versioned, defaults to latest if omitted.
  late final pulumi.Output<String?> caCertificatesBundleS3ObjectVersion;
  /// Name of the Trust Store. If omitted, the provider will assign a random, unique name. This name must be unique per region per account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen.
  late final pulumi.Output<String> name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`. Cannot be longer than 6 characters.
  late final pulumi.Output<String> namePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [TrustStore].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TrustStore]. {@macro pulumi_lb_trust_store_trust_store_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TrustStore(
    String name, {
    TrustStoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lb/trustStore:TrustStore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    arnSuffix = registerOutput<String>('arnSuffix');
    caCertificatesBundleS3Bucket = registerOutput<String>('caCertificatesBundleS3Bucket');
    caCertificatesBundleS3Key = registerOutput<String>('caCertificatesBundleS3Key');
    caCertificatesBundleS3ObjectVersion = registerOutput<String?>('caCertificatesBundleS3ObjectVersion');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [TrustStore] resource's state with the given [name] and [id].
  static TrustStore get(
    String name,
    pulumi.Input<String> id, {
    TrustStoreState? state,
  }) {
    return TrustStore._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TrustStore._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lb/trustStore:TrustStore',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    arnSuffix = registerOutput<String>('arnSuffix');
    caCertificatesBundleS3Bucket = registerOutput<String>('caCertificatesBundleS3Bucket');
    caCertificatesBundleS3Key = registerOutput<String>('caCertificatesBundleS3Key');
    caCertificatesBundleS3ObjectVersion = registerOutput<String?>('caCertificatesBundleS3ObjectVersion');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
