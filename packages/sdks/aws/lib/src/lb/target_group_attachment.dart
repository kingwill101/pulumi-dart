import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_group_attachment_args.dart';
import 'target_group_attachment_state.dart';

/// Provides the ability to register instances and containers with an Application Load Balancer (ALB) or Network Load Balancer (NLB) target group. For attaching resources with Elastic Load Balancer (ELB), see the `aws.elb.Attachment` resource.
///
/// &gt; **Note:** `aws.alb.TargetGroupAttachment` is known as `aws.lb.TargetGroupAttachment`. The functionality is identical.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testTargetGroup = new aws.lb.TargetGroup("test", {});
/// const testInstance = new aws.ec2.Instance("test", {});
/// const test = new aws.lb.TargetGroupAttachment("test", {
///     targetGroupArn: testTargetGroup.arn,
///     targetId: testInstance.id,
///     port: 80,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_target_group = aws.lb.TargetGroup("test")
/// test_instance = aws.ec2.Instance("test")
/// test = aws.lb.TargetGroupAttachment("test",
///     target_group_arn=test_target_group.arn,
///     target_id=test_instance.id,
///     port=80)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testTargetGroup = new Aws.LB.TargetGroup("test");
///
///     var testInstance = new Aws.Ec2.Instance("test");
///
///     var test = new Aws.LB.TargetGroupAttachment("test", new()
///     {
///         TargetGroupArn = testTargetGroup.Arn,
///         TargetId = testInstance.Id,
///         Port = 80,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testTargetGroup, err := lb.NewTargetGroup(ctx, "test", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testInstance, err := ec2.NewInstance(ctx, "test", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lb.NewTargetGroupAttachment(ctx, "test", &lb.TargetGroupAttachmentArgs{
/// 			TargetGroupArn: testTargetGroup.Arn,
/// 			TargetId:       testInstance.ID().ToIDOutput().ToStringOutput(),
/// 			Port:           pulumi.Int(80),
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
/// resource "aws_lb_targetgroupattachment" "test" {
///   target_group_arn = aws_lb_targetgroup.test.arn
///   target_id        = aws_ec2_instance.test.id
///   port             = 80
/// }
/// resource "aws_lb_targetgroup" "test" {
/// }
/// resource "aws_ec2_instance" "test" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lb.TargetGroup;
/// import com.pulumi.aws.ec2.Instance;
/// import com.pulumi.aws.lb.TargetGroupAttachment;
/// import com.pulumi.aws.lb.TargetGroupAttachmentArgs;
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
///         var testTargetGroup = new TargetGroup("testTargetGroup");
///
///         var testInstance = new Instance("testInstance");
///
///         var test = new TargetGroupAttachment("test", TargetGroupAttachmentArgs.builder()
///             .targetGroupArn(testTargetGroup.arn())
///             .targetId(testInstance.id())
///             .port(80)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:lb:TargetGroupAttachment
///     properties:
///       targetGroupArn: ${testTargetGroup.arn}
///       targetId: ${testInstance.id}
///       port: 80
///   testTargetGroup:
///     type: aws:lb:TargetGroup
///     name: test
///   testInstance:
///     type: aws:ec2:Instance
///     name: test
/// ```
///
///
/// ### Lambda Target
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.lb.TargetGroup("test", {
///     name: "test",
///     targetType: "lambda",
/// });
/// const testFunction = new aws.lambda.Function("test", {});
/// const withLb = new aws.lambda.Permission("with_lb", {
///     statementId: "AllowExecutionFromlb",
///     action: "lambda:InvokeFunction",
///     "function": testFunction.name,
///     principal: "elasticloadbalancing.amazonaws.com",
///     sourceArn: test.arn,
/// });
/// const testTargetGroupAttachment = new aws.lb.TargetGroupAttachment("test", {
///     targetGroupArn: test.arn,
///     targetId: testFunction.arn,
/// }, {
///     dependsOn: [withLb],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.lb.TargetGroup("test",
///     name="test",
///     target_type="lambda")
/// test_function = aws.lambda_.Function("test")
/// with_lb = aws.lambda_.Permission("with_lb",
///     statement_id="AllowExecutionFromlb",
///     action="lambda:InvokeFunction",
///     function=test_function.name,
///     principal="elasticloadbalancing.amazonaws.com",
///     source_arn=test.arn)
/// test_target_group_attachment = aws.lb.TargetGroupAttachment("test",
///     target_group_arn=test.arn,
///     target_id=test_function.arn,
///     opts = pulumi.ResourceOptions(depends_on=[with_lb]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.LB.TargetGroup("test", new()
///     {
///         Name = "test",
///         TargetType = "lambda",
///     });
///
///     var testFunction = new Aws.Lambda.Function("test");
///
///     var withLb = new Aws.Lambda.Permission("with_lb", new()
///     {
///         StatementId = "AllowExecutionFromlb",
///         Action = "lambda:InvokeFunction",
///         Function = testFunction.Name,
///         Principal = "elasticloadbalancing.amazonaws.com",
///         SourceArn = test.Arn,
///     });
///
///     var testTargetGroupAttachment = new Aws.LB.TargetGroupAttachment("test", new()
///     {
///         TargetGroupArn = test.Arn,
///         TargetId = testFunction.Arn,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             withLb,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := lb.NewTargetGroup(ctx, "test", &lb.TargetGroupArgs{
/// 			Name:       pulumi.String("test"),
/// 			TargetType: pulumi.String("lambda"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testFunction, err := lambda.NewFunction(ctx, "test", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		withLb, err := lambda.NewPermission(ctx, "with_lb", &lambda.PermissionArgs{
/// 			StatementId: pulumi.String("AllowExecutionFromlb"),
/// 			Action:      pulumi.String("lambda:InvokeFunction"),
/// 			Function:    testFunction.Name,
/// 			Principal:   pulumi.String("elasticloadbalancing.amazonaws.com"),
/// 			SourceArn:   test.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lb.NewTargetGroupAttachment(ctx, "test", &lb.TargetGroupAttachmentArgs{
/// 			TargetGroupArn: test.Arn,
/// 			TargetId:       testFunction.Arn,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			withLb,
/// 		}))
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
/// resource "aws_lambda_permission" "with_lb" {
///   statement_id = "AllowExecutionFromlb"
///   action       = "lambda:InvokeFunction"
///   function     = aws_lambda_function.test.name
///   principal    = "elasticloadbalancing.amazonaws.com"
///   source_arn   = aws_lb_targetgroup.test.arn
/// }
/// resource "aws_lb_targetgroup" "test" {
///   name        = "test"
///   target_type = "lambda"
/// }
/// resource "aws_lambda_function" "test" {
/// }
/// resource "aws_lb_targetgroupattachment" "test" {
///   depends_on       = [aws_lambda_permission.with_lb]
///   target_group_arn = aws_lb_targetgroup.test.arn
///   target_id        = aws_lambda_function.test.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lb.TargetGroup;
/// import com.pulumi.aws.lb.TargetGroupArgs;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.Permission;
/// import com.pulumi.aws.lambda.PermissionArgs;
/// import com.pulumi.aws.lb.TargetGroupAttachment;
/// import com.pulumi.aws.lb.TargetGroupAttachmentArgs;
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
///         var test = new TargetGroup("test", TargetGroupArgs.builder()
///             .name("test")
///             .targetType("lambda")
///             .build());
///
///         var testFunction = new Function("testFunction");
///
///         var withLb = new Permission("withLb", PermissionArgs.builder()
///             .statementId("AllowExecutionFromlb")
///             .action("lambda:InvokeFunction")
///             .function(testFunction.name())
///             .principal("elasticloadbalancing.amazonaws.com")
///             .sourceArn(test.arn())
///             .build());
///
///         var testTargetGroupAttachment = new TargetGroupAttachment("testTargetGroupAttachment", TargetGroupAttachmentArgs.builder()
///             .targetGroupArn(test.arn())
///             .targetId(testFunction.arn())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(withLb)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   withLb:
///     type: aws:lambda:Permission
///     name: with_lb
///     properties:
///       statementId: AllowExecutionFromlb
///       action: lambda:InvokeFunction
///       function: ${testFunction.name}
///       principal: elasticloadbalancing.amazonaws.com
///       sourceArn: ${test.arn}
///   test:
///     type: aws:lb:TargetGroup
///     properties:
///       name: test
///       targetType: lambda
///   testFunction:
///     type: aws:lambda:Function
///     name: test
///   testTargetGroupAttachment:
///     type: aws:lb:TargetGroupAttachment
///     name: test
///     properties:
///       targetGroupArn: ${test.arn}
///       targetId: ${testFunction.arn}
///     options:
///       dependsOn:
///         - ${withLb}
/// ```
///
///
/// ### Target using QUIC
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.lb.TargetGroup("test", {
///     name: "test",
///     port: 443,
///     protocol: "QUIC",
/// });
/// const testInstance = new aws.ec2.Instance("test", {});
/// const testTargetGroupAttachment = new aws.lb.TargetGroupAttachment("test", {
///     targetGroupArn: test.arn,
///     targetId: testInstance.id,
///     port: 443,
///     quicServerId: "0x1a2b3c4d5e6f7a8b",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.lb.TargetGroup("test",
///     name="test",
///     port=443,
///     protocol="QUIC")
/// test_instance = aws.ec2.Instance("test")
/// test_target_group_attachment = aws.lb.TargetGroupAttachment("test",
///     target_group_arn=test.arn,
///     target_id=test_instance.id,
///     port=443,
///     quic_server_id="0x1a2b3c4d5e6f7a8b")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.LB.TargetGroup("test", new()
///     {
///         Name = "test",
///         Port = 443,
///         Protocol = "QUIC",
///     });
///
///     var testInstance = new Aws.Ec2.Instance("test");
///
///     var testTargetGroupAttachment = new Aws.LB.TargetGroupAttachment("test", new()
///     {
///         TargetGroupArn = test.Arn,
///         TargetId = testInstance.Id,
///         Port = 443,
///         QuicServerId = "0x1a2b3c4d5e6f7a8b",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := lb.NewTargetGroup(ctx, "test", &lb.TargetGroupArgs{
/// 			Name:     pulumi.String("test"),
/// 			Port:     pulumi.Int(443),
/// 			Protocol: pulumi.String("QUIC"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testInstance, err := ec2.NewInstance(ctx, "test", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lb.NewTargetGroupAttachment(ctx, "test", &lb.TargetGroupAttachmentArgs{
/// 			TargetGroupArn: test.Arn,
/// 			TargetId:       testInstance.ID().ToIDOutput().ToStringOutput(),
/// 			Port:           pulumi.Int(443),
/// 			QuicServerId:   pulumi.String("0x1a2b3c4d5e6f7a8b"),
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
/// resource "aws_lb_targetgroup" "test" {
///   name     = "test"
///   port     = 443
///   protocol = "QUIC"
/// }
/// resource "aws_lb_targetgroupattachment" "test" {
///   target_group_arn = aws_lb_targetgroup.test.arn
///   target_id        = aws_ec2_instance.test.id
///   port             = 443
///   quic_server_id   = "0x1a2b3c4d5e6f7a8b"
/// }
/// resource "aws_ec2_instance" "test" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lb.TargetGroup;
/// import com.pulumi.aws.lb.TargetGroupArgs;
/// import com.pulumi.aws.ec2.Instance;
/// import com.pulumi.aws.lb.TargetGroupAttachment;
/// import com.pulumi.aws.lb.TargetGroupAttachmentArgs;
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
///         var test = new TargetGroup("test", TargetGroupArgs.builder()
///             .name("test")
///             .port(443)
///             .protocol("QUIC")
///             .build());
///
///         var testInstance = new Instance("testInstance");
///
///         var testTargetGroupAttachment = new TargetGroupAttachment("testTargetGroupAttachment", TargetGroupAttachmentArgs.builder()
///             .targetGroupArn(test.arn())
///             .targetId(testInstance.id())
///             .port(443)
///             .quicServerId("0x1a2b3c4d5e6f7a8b")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:lb:TargetGroup
///     properties:
///       name: test
///       port: 443
///       protocol: QUIC
///   testTargetGroupAttachment:
///     type: aws:lb:TargetGroupAttachment
///     name: test
///     properties:
///       targetGroupArn: ${test.arn}
///       targetId: ${testInstance.id}
///       port: 443
///       quicServerId: 0x1a2b3c4d5e6f7a8b
///   testInstance:
///     type: aws:ec2:Instance
///     name: test
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `targetGroupArn` - (String) ARN of the target group.
/// * `targetId` - (String) ID of the target (instance ID, IP address, Lambda ARN, or ALB ARN).
///
/// #### Optional
///
/// * `port` - (Number) Port on which targets receive traffic.
/// * `availabilityZone` - (String) Availability zone where the target is registered.
/// * `quicServerId` - (String) QUIC server ID for the target.
/// * `accountId` - (String) AWS Account where this resource is managed.
/// * `region` - (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Target Group Attachments using the same format. For example:
///
/// ```sh
/// $ pulumi import aws:lb/targetGroupAttachment:TargetGroupAttachment example arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-tg/abc123,i-0123456789abcdef0,8080
/// ```
class TargetGroupAttachment extends pulumi.CustomResource {
  /// The Availability Zone where the IP address of the target is to be registered. If the private IP address is outside of the VPC scope, this value must be set to `all`.
  late final pulumi.Output<String?> availabilityZone;
  /// The port on which targets receive traffic.
  late final pulumi.Output<int?> port;
  /// Server ID for the targets, consisting of the 0x prefix followed by 16 hexadecimal characters. The value must be unique at the listener level. Required if `aws.lb.TargetGroup` protocol is `QUIC` or `TCP_QUIC`. Not valid with other protocols. Forces replacement if modified.
  late final pulumi.Output<String?> quicServerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ARN of the target group with which to register targets.
  late final pulumi.Output<String> targetGroupArn;
  /// The ID of the target. This is the Instance ID for an instance, or the container ID for an ECS container. If the target type is `ip`, specify an IP address. If the target type is `lambda`, specify the Lambda function ARN. If the target type is `alb`, specify the ALB ARN.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> targetId;

  /// Creates a new [TargetGroupAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TargetGroupAttachment]. {@macro pulumi_lb_target_group_attachment_target_group_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TargetGroupAttachment(
    String name, {
    TargetGroupAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lb/targetGroupAttachment:TargetGroupAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    availabilityZone = registerOutput<String?>('availabilityZone');
    port = registerOutput<int?>('port');
    quicServerId = registerOutput<String?>('quicServerId');
    region = registerOutput<String>('region');
    targetGroupArn = registerOutput<String>('targetGroupArn');
    targetId = registerOutput<String>('targetId');
  }

  /// Gets an existing [TargetGroupAttachment] resource's state with the given [name] and [id].
  static TargetGroupAttachment get(
    String name,
    pulumi.Input<String> id, {
    TargetGroupAttachmentState? state,
  }) {
    return TargetGroupAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TargetGroupAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lb/targetGroupAttachment:TargetGroupAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    availabilityZone = registerOutput<String?>('availabilityZone');
    port = registerOutput<int?>('port');
    quicServerId = registerOutput<String?>('quicServerId');
    region = registerOutput<String>('region');
    targetGroupArn = registerOutput<String>('targetGroupArn');
    targetId = registerOutput<String>('targetId');
  }
}
