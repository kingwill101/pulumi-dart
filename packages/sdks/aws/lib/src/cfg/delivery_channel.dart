import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_channel_args.dart';
import 'delivery_channel_snapshot_delivery_properties.dart';
import 'delivery_channel_state.dart';

/// Provides an AWS Config Delivery Channel.
///
/// &gt; **Note:** Delivery Channel requires a Configuration Recorder to be present. Use of `depends_on` (as shown below) is recommended to avoid race conditions.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const b = new aws.s3.Bucket("b", {
///     bucket: "example-awsconfig",
///     forceDestroy: true,
/// });
/// const assumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: ["config.amazonaws.com"],
///         }],
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const r = new aws.iam.Role("r", {
///     name: "awsconfig-example",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const fooRecorder = new aws.cfg.Recorder("foo", {
///     name: "example",
///     roleArn: r.arn,
/// });
/// const foo = new aws.cfg.DeliveryChannel("foo", {
///     name: "example",
///     s3BucketName: b.bucket,
/// }, {
///     dependsOn: [fooRecorder],
/// });
/// const p = aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         effect: "Allow",
///         actions: ["s3:*"],
///         resources: [
///             b.arn,
///             pulumi.interpolate`${b.arn}/*`,
///         ],
///     }],
/// });
/// const pRolePolicy = new aws.iam.RolePolicy("p", {
///     name: "awsconfig-example",
///     role: r.id,
///     policy: p.apply(p => p.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// b = aws.s3.Bucket("b",
///     bucket="example-awsconfig",
///     force_destroy=True)
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["config.amazonaws.com"],
///     }],
///     "actions": ["sts:AssumeRole"],
/// }])
/// r = aws.iam.Role("r",
///     name="awsconfig-example",
///     assume_role_policy=assume_role.json)
/// foo_recorder = aws.cfg.Recorder("foo",
///     name="example",
///     role_arn=r.arn)
/// foo = aws.cfg.DeliveryChannel("foo",
///     name="example",
///     s3_bucket_name=b.bucket,
///     opts = pulumi.ResourceOptions(depends_on=[foo_recorder]))
/// p = aws.iam.get_policy_document_output(statements=[{
///     "effect": "Allow",
///     "actions": ["s3:*"],
///     "resources": [
///         b.arn,
///         b.arn.apply(lambda arn: f"{arn}/*"),
///     ],
/// }])
/// p_role_policy = aws.iam.RolePolicy("p",
///     name="awsconfig-example",
///     role=r.id,
///     policy=p.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var b = new Aws.S3.Bucket("b", new()
///     {
///         BucketName = "example-awsconfig",
///         ForceDestroy = true,
///     });
///
///     var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "config.amazonaws.com",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///             },
///         },
///     });
///
///     var r = new Aws.Iam.Role("r", new()
///     {
///         Name = "awsconfig-example",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var fooRecorder = new Aws.Cfg.Recorder("foo", new()
///     {
///         Name = "example",
///         RoleArn = r.Arn,
///     });
///
///     var foo = new Aws.Cfg.DeliveryChannel("foo", new()
///     {
///         Name = "example",
///         S3BucketName = b.BucketName,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             fooRecorder,
///         },
///     });
///
///     var p = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "s3:*",
///                 },
///                 Resources = new[]
///                 {
///                     b.Arn,
///                     $"{b.Arn}/*",
///                 },
///             },
///         },
///     });
///
///     var pRolePolicy = new Aws.Iam.RolePolicy("p", new()
///     {
///         Name = "awsconfig-example",
///         Role = r.Id,
///         Policy = p.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cfg"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		b, err := s3.NewBucket(ctx, "b", &s3.BucketArgs{
/// 			Bucket:       pulumi.String("example-awsconfig"),
/// 			ForceDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"config.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		r, err := iam.NewRole(ctx, "r", &iam.RoleArgs{
/// 			Name:             pulumi.String("awsconfig-example"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooRecorder, err := cfg.NewRecorder(ctx, "foo", &cfg.RecorderArgs{
/// 			Name:    pulumi.String("example"),
/// 			RoleArn: r.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cfg.NewDeliveryChannel(ctx, "foo", &cfg.DeliveryChannelArgs{
/// 			Name:         pulumi.String("example"),
/// 			S3BucketName: b.Bucket,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			fooRecorder,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		p := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("s3:*"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						b.Arn,
/// 						b.Arn.ApplyT(func(arn string) (string, error) {
/// 							return fmt.Sprintf("%v/*", arn), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = iam.NewRolePolicy(ctx, "p", &iam.RolePolicyArgs{
/// 			Name: pulumi.String("awsconfig-example"),
/// 			Role: r.ID(),
/// 			Policy: pulumi.String(p.ApplyT(func(p iam.GetPolicyDocumentResult) (*string, error) {
/// 				return &p.Json, nil
/// 			}).(pulumi.StringPtrOutput)),
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.cfg.Recorder;
/// import com.pulumi.aws.cfg.RecorderArgs;
/// import com.pulumi.aws.cfg.DeliveryChannel;
/// import com.pulumi.aws.cfg.DeliveryChannelArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var b = new Bucket("b", BucketArgs.builder()
///             .bucket("example-awsconfig")
///             .forceDestroy(true)
///             .build());
///
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("config.amazonaws.com")
///                     .build())
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var r = new Role("r", RoleArgs.builder()
///             .name("awsconfig-example")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         var fooRecorder = new Recorder("fooRecorder", RecorderArgs.builder()
///             .name("example")
///             .roleArn(r.arn())
///             .build());
///
///         var foo = new DeliveryChannel("foo", DeliveryChannelArgs.builder()
///             .name("example")
///             .s3BucketName(b.bucket())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(fooRecorder)
///                 .build());
///
///         final var p = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .actions("s3:*")
///                 .resources(
///                     b.arn(),
///                     b.arn().applyValue(_arn -> String.format("%s/*", _arn)))
///                 .build())
///             .build());
///
///         var pRolePolicy = new RolePolicy("pRolePolicy", RolePolicyArgs.builder()
///             .name("awsconfig-example")
///             .role(r.id())
///             .policy(p.applyValue(_p -> _p.json()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: aws:cfg:DeliveryChannel
///     properties:
///       name: example
///       s3BucketName: ${b.bucket}
///     options:
///       dependsOn:
///         - ${fooRecorder}
///   b:
///     type: aws:s3:Bucket
///     properties:
///       bucket: example-awsconfig
///       forceDestroy: true
///   fooRecorder:
///     type: aws:cfg:Recorder
///     name: foo
///     properties:
///       name: example
///       roleArn: ${r.arn}
///   r:
///     type: aws:iam:Role
///     properties:
///       name: awsconfig-example
///       assumeRolePolicy: ${assumeRole.json}
///   pRolePolicy:
///     type: aws:iam:RolePolicy
///     name: p
///     properties:
///       name: awsconfig-example
///       role: ${r.id}
///       policy: ${p.json}
/// variables:
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - config.amazonaws.com
///             actions:
///               - sts:AssumeRole
///   p:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             actions:
///               - s3:*
///             resources:
///               - ${b.arn}
///               - ${b.arn}/*
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Delivery Channel using the name. For example:
///
/// ```sh
/// $ pulumi import aws:cfg/deliveryChannel:DeliveryChannel foo example
/// ```
class DeliveryChannel extends pulumi.CustomResource {
  /// The name of the delivery channel. Defaults to `default`. Changing it recreates the resource.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The name of the S3 bucket used to store the configuration history.
  late final pulumi.Output<String> s3BucketName;

  /// The prefix for the specified S3 bucket.
  late final pulumi.Output<String?> s3KeyPrefix;

  /// The ARN of the AWS KMS key used to encrypt objects delivered by AWS Config. Must belong to the same Region as the destination S3 bucket.
  late final pulumi.Output<String?> s3KmsKeyArn;

  /// Options for how AWS Config delivers configuration snapshots. See below
  late final pulumi.Output<DeliveryChannelSnapshotDeliveryProperties?>
  snapshotDeliveryProperties;

  /// The ARN of the SNS topic that AWS Config delivers notifications to.
  late final pulumi.Output<String?> snsTopicArn;

  /// Creates a new [DeliveryChannel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeliveryChannel]. {@macro pulumi_cfg_delivery_channel_delivery_channel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeliveryChannel(
    String name, {
    DeliveryChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:cfg/deliveryChannel:DeliveryChannel',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    s3BucketName = registerOutput<String>('s3BucketName');
    s3KeyPrefix = registerOutput<String?>('s3KeyPrefix');
    s3KmsKeyArn = registerOutput<String?>('s3KmsKeyArn');
    snapshotDeliveryProperties =
        registerOutput<DeliveryChannelSnapshotDeliveryProperties?>(
          'snapshotDeliveryProperties',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return DeliveryChannelSnapshotDeliveryProperties.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    snsTopicArn = registerOutput<String?>('snsTopicArn');
  }

  /// Gets an existing [DeliveryChannel] resource's state with the given [name] and [id].
  static DeliveryChannel get(
    String name,
    pulumi.Input<String> id, {
    DeliveryChannelState? state,
  }) {
    return DeliveryChannel._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DeliveryChannel._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:cfg/deliveryChannel:DeliveryChannel',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    s3BucketName = registerOutput<String>('s3BucketName');
    s3KeyPrefix = registerOutput<String?>('s3KeyPrefix');
    s3KmsKeyArn = registerOutput<String?>('s3KmsKeyArn');
    snapshotDeliveryProperties =
        registerOutput<DeliveryChannelSnapshotDeliveryProperties?>(
          'snapshotDeliveryProperties',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return DeliveryChannelSnapshotDeliveryProperties.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    snsTopicArn = registerOutput<String?>('snsTopicArn');
  }
}
