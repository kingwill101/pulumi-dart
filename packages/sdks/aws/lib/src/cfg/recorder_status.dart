import 'package:pulumi/pulumi.dart' as pulumi;
import 'recorder_status_args.dart';
import 'recorder_status_state.dart';

/// Manages status (recording / stopped) of an AWS Config Configuration Recorder.
///
/// &gt; **Note:** Starting Configuration Recorder requires a Delivery Channel to be present. Use of `dependsOn` (as shown below) is recommended to avoid race conditions.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const b = new aws.s3.Bucket("b", {bucket: "awsconfig-example"});
/// const fooDeliveryChannel = new aws.cfg.DeliveryChannel("foo", {
///     name: "example",
///     s3BucketName: b.bucket,
/// });
/// const assumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             type: "Service",
///             identifiers: ["config.amazonaws.com"],
///         }],
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const r = new aws.iam.Role("r", {
///     name: "example-awsconfig",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const fooRecorder = new aws.cfg.Recorder("foo", {
///     name: "example",
///     roleArn: r.arn,
/// });
/// const foo = new aws.cfg.RecorderStatus("foo", {
///     name: fooRecorder.name,
///     isEnabled: true,
/// }, {
///     dependsOn: [fooDeliveryChannel],
/// });
/// const a = new aws.iam.RolePolicyAttachment("a", {
///     role: r.name,
///     policyArn: "arn:aws:iam::aws:policy/service-role/AWS_ConfigRole",
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
///     policy: p.json,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// b = aws.s3.Bucket("b", bucket="awsconfig-example")
/// foo_delivery_channel = aws.cfg.DeliveryChannel("foo",
///     name="example",
///     s3_bucket_name=b.bucket)
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["config.amazonaws.com"],
///     }],
///     "effect": "Allow",
///     "actions": ["sts:AssumeRole"],
/// }])
/// r = aws.iam.Role("r",
///     name="example-awsconfig",
///     assume_role_policy=assume_role.json)
/// foo_recorder = aws.cfg.Recorder("foo",
///     name="example",
///     role_arn=r.arn)
/// foo = aws.cfg.RecorderStatus("foo",
///     name=foo_recorder.name,
///     is_enabled=True,
///     opts = pulumi.ResourceOptions(depends_on=[foo_delivery_channel]))
/// a = aws.iam.RolePolicyAttachment("a",
///     role=r.name,
///     policy_arn="arn:aws:iam::aws:policy/service-role/AWS_ConfigRole")
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
///         BucketName = "awsconfig-example",
///     });
///
///     var fooDeliveryChannel = new Aws.Cfg.DeliveryChannel("foo", new()
///     {
///         Name = "example",
///         S3BucketName = b.BucketName,
///     });
///
///     var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
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
///                 Effect = "Allow",
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
///         Name = "example-awsconfig",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var fooRecorder = new Aws.Cfg.Recorder("foo", new()
///     {
///         Name = "example",
///         RoleArn = r.Arn,
///     });
///
///     var foo = new Aws.Cfg.RecorderStatus("foo", new()
///     {
///         Name = fooRecorder.Name,
///         IsEnabled = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             fooDeliveryChannel,
///         },
///     });
///
///     var a = new Aws.Iam.RolePolicyAttachment("a", new()
///     {
///         Role = r.Name,
///         PolicyArn = "arn:aws:iam::aws:policy/service-role/AWS_ConfigRole",
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
/// 			Bucket: pulumi.String("awsconfig-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooDeliveryChannel, err := cfg.NewDeliveryChannel(ctx, "foo", &cfg.DeliveryChannelArgs{
/// 			Name:         pulumi.String("example"),
/// 			S3BucketName: b.Bucket,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"config.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Effect: pulumi.StringRef("Allow"),
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
/// 			Name:             pulumi.String("example-awsconfig"),
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
/// 		_, err = cfg.NewRecorderStatus(ctx, "foo", &cfg.RecorderStatusArgs{
/// 			Name:      fooRecorder.Name,
/// 			IsEnabled: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			fooDeliveryChannel,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicyAttachment(ctx, "a", &iam.RolePolicyAttachmentArgs{
/// 			Role:      r.Name,
/// 			PolicyArn: pulumi.String("arn:aws:iam::aws:policy/service-role/AWS_ConfigRole"),
/// 		})
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
/// 			Name:   pulumi.String("awsconfig-example"),
/// 			Role:   r.ID().ToIDOutput().ToStringOutput(),
/// 			Policy: p.Json(),
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
/// data "aws_iam_getpolicydocument" "assumeRole" {
///   statements {
///     principals {
///       type        = "Service"
///       identifiers = ["config.amazonaws.com"]
///     }
///     effect  = "Allow"
///     actions = ["sts:AssumeRole"]
///   }
/// }
/// data "aws_iam_getpolicydocument" "p" {
///   statements {
///     effect    = "Allow"
///     actions   = ["s3:*"]
///     resources = [aws_s3_bucket.b.arn, "${aws_s3_bucket.b.arn}/*"]
///   }
/// }
///
/// resource "aws_cfg_recorderstatus" "foo" {
///   depends_on = [aws_cfg_deliverychannel.foo]
///   name       = aws_cfg_recorder.foo.name
///   is_enabled = true
/// }
/// resource "aws_iam_rolepolicyattachment" "a" {
///   role       = aws_iam_role.r.name
///   policy_arn = "arn:aws:iam::aws:policy/service-role/AWS_ConfigRole"
/// }
/// resource "aws_s3_bucket" "b" {
///   bucket = "awsconfig-example"
/// }
/// resource "aws_cfg_deliverychannel" "foo" {
///   name           = "example"
///   s3_bucket_name = aws_s3_bucket.b.bucket
/// }
/// resource "aws_cfg_recorder" "foo" {
///   name     = "example"
///   role_arn = aws_iam_role.r.arn
/// }
/// resource "aws_iam_role" "r" {
///   name               = "example-awsconfig"
///   assume_role_policy = data.aws_iam_getpolicydocument.assumeRole.json
/// }
/// resource "aws_iam_rolepolicy" "p" {
///   name   = "awsconfig-example"
///   role   = aws_iam_role.r.id
///   policy = data.aws_iam_getpolicydocument.p.json
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
/// import com.pulumi.aws.cfg.DeliveryChannel;
/// import com.pulumi.aws.cfg.DeliveryChannelArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.cfg.Recorder;
/// import com.pulumi.aws.cfg.RecorderArgs;
/// import com.pulumi.aws.cfg.RecorderStatus;
/// import com.pulumi.aws.cfg.RecorderStatusArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var b = new Bucket("b", BucketArgs.builder()
///             .bucket("awsconfig-example")
///             .build());
///
///         var fooDeliveryChannel = new DeliveryChannel("fooDeliveryChannel", DeliveryChannelArgs.builder()
///             .name("example")
///             .s3BucketName(b.bucket())
///             .build());
///
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("config.amazonaws.com")
///                     .build())
///                 .effect("Allow")
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var r = new Role("r", RoleArgs.builder()
///             .name("example-awsconfig")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         var fooRecorder = new Recorder("fooRecorder", RecorderArgs.builder()
///             .name("example")
///             .roleArn(r.arn())
///             .build());
///
///         var foo = new RecorderStatus("foo", RecorderStatusArgs.builder()
///             .name(fooRecorder.name())
///             .isEnabled(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(fooDeliveryChannel)
///                 .build());
///
///         var a = new RolePolicyAttachment("a", RolePolicyAttachmentArgs.builder()
///             .role(r.name())
///             .policyArn("arn:aws:iam::aws:policy/service-role/AWS_ConfigRole")
///             .build());
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
///     type: aws:cfg:RecorderStatus
///     properties:
///       name: ${fooRecorder.name}
///       isEnabled: true
///     options:
///       dependsOn:
///         - ${fooDeliveryChannel}
///   a:
///     type: aws:iam:RolePolicyAttachment
///     properties:
///       role: ${r.name}
///       policyArn: arn:aws:iam::aws:policy/service-role/AWS_ConfigRole
///   b:
///     type: aws:s3:Bucket
///     properties:
///       bucket: awsconfig-example
///   fooDeliveryChannel:
///     type: aws:cfg:DeliveryChannel
///     name: foo
///     properties:
///       name: example
///       s3BucketName: ${b.bucket}
///   fooRecorder:
///     type: aws:cfg:Recorder
///     name: foo
///     properties:
///       name: example
///       roleArn: ${r.arn}
///   r:
///     type: aws:iam:Role
///     properties:
///       name: example-awsconfig
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
///           - principals:
///               - type: Service
///                 identifiers:
///                   - config.amazonaws.com
///             effect: Allow
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
/// ### Identity Schema
///
/// #### Required
///
/// * `name` (String) Name of the configuration recorder.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Configuration Recorder Statuses using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cfg/recorderStatus:RecorderStatus example example
/// ```
class RecorderStatus extends pulumi.CustomResource {
  /// Whether the configuration recorder should be enabled or disabled.
  late final pulumi.Output<bool> isEnabled;
  /// The name of the configuration recorder.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [RecorderStatus].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RecorderStatus]. {@macro pulumi_cfg_recorder_status_recorder_status_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RecorderStatus(
    String name, {
    RecorderStatusArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cfg/recorderStatus:RecorderStatus',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    isEnabled = registerOutput<bool>('isEnabled');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [RecorderStatus] resource's state with the given [name] and [id].
  static RecorderStatus get(
    String name,
    pulumi.Input<String> id, {
    RecorderStatusState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RecorderStatus._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RecorderStatus._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cfg/recorderStatus:RecorderStatus',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    isEnabled = registerOutput<bool>('isEnabled');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [RecorderStatus] resource.
  RecorderStatus.reference(String urn)
    : super(
        'aws:cfg/recorderStatus:RecorderStatus',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    isEnabled = registerOutput<bool>('isEnabled');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }
}
