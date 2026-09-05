// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InternetGateway resources.
class InternetGatewayState {
  /// The ARN of the Internet Gateway.
  final pulumi.Input<String?>? arn;
  /// The ID of the AWS account that owns the internet gateway.
  final pulumi.Input<String?>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// &gt; **Note:** It's recommended to denote that the AWS Instance or Elastic IP depends on the Internet Gateway. For example:
  ///
  ///
  /// ```typescript
  /// import * as pulumi from "@pulumi/pulumi";
  /// import * as aws from "@pulumi/aws";
  ///
  /// const gw = new aws.ec2.InternetGateway("gw", {vpcId: main.id});
  /// const foo = new aws.ec2.Instance("foo", {}, {
  ///     dependsOn: [gw],
  /// });
  /// ```
  /// ```python
  /// import pulumi
  /// import pulumi_aws as aws
  ///
  /// gw = aws.ec2.InternetGateway("gw", vpc_id=main["id"])
  /// foo = aws.ec2.Instance("foo", opts = pulumi.ResourceOptions(depends_on=[gw]))
  /// ```
  /// ```csharp
  /// using System.Collections.Generic;
  /// using System.Linq;
  /// using Pulumi;
  /// using Aws = Pulumi.Aws;
  ///
  /// return await Deployment.RunAsync(() =>
  /// {
  ///     var gw = new Aws.Ec2.InternetGateway("gw", new()
  ///     {
  ///         VpcId = main.Id,
  ///     });
  ///
  ///     var foo = new Aws.Ec2.Instance("foo", new()
  ///     {
  ///     }, new CustomResourceOptions
  ///     {
  ///         DependsOn =
  ///         {
  ///             gw,
  ///         },
  ///     });
  ///
  /// });
  /// ```
  /// ```go
  /// package main
  ///
  /// import (
  /// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
  /// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
  /// )
  ///
  /// func main() {
  /// 	pulumi.Run(func(ctx *pulumi.Context) error {
  /// 		gw, err := ec2.NewInternetGateway(ctx, "gw", &ec2.InternetGatewayArgs{
  /// 			VpcId: pulumi.Any(main.Id),
  /// 		})
  /// 		if err != nil {
  /// 			return err
  /// 		}
  /// 		_, err = ec2.NewInstance(ctx, "foo", nil, pulumi.DependsOn([]pulumi.Resource{
  /// 			gw,
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
  /// resource "aws_ec2_internetgateway" "gw" {
  ///   vpc_id = main.id
  /// }
  /// resource "aws_ec2_instance" "foo" {
  ///   depends_on = [aws_ec2_internetgateway.gw]
  /// }
  /// ```
  /// ```java
  /// package generated_program;
  ///
  /// import com.pulumi.Context;
  /// import com.pulumi.Pulumi;
  /// import com.pulumi.core.Output;
  /// import com.pulumi.aws.ec2.InternetGateway;
  /// import com.pulumi.aws.ec2.InternetGatewayArgs;
  /// import com.pulumi.aws.ec2.Instance;
  /// import com.pulumi.aws.ec2.InstanceArgs;
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
  ///         var gw = new InternetGateway("gw", InternetGatewayArgs.builder()
  ///             .vpcId(main.id())
  ///             .build());
  ///
  ///         var foo = new Instance("foo", InstanceArgs.Empty, CustomResourceOptions.builder()
  ///             .dependsOn(gw)
  ///             .build());
  ///
  ///     }
  /// }
  /// ```
  /// ```yaml
  /// resources:
  ///   gw:
  ///     type: aws:ec2:InternetGateway
  ///     properties:
  ///       vpcId: ${main.id}
  ///   foo:
  ///     type: aws:ec2:Instance
  ///     options:
  ///       dependsOn:
  ///         - ${gw}
  /// ```
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// The VPC ID to create in.  See the aws.ec2.InternetGatewayAttachment resource for an alternate way to attach an Internet Gateway to a VPC.
  final pulumi.Input<String?>? vpcId;

  /// Creates a new [InternetGatewayState].
  /// [arn] The ARN of the Internet Gateway.
  /// [ownerId] The ID of the AWS account that owns the internet gateway.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [vpcId] The VPC ID to create in.  See the aws.ec2.InternetGatewayAttachment resource for an alternate way to attach an Internet Gateway to a VPC.
  const InternetGatewayState({
    this.arn,
    this.ownerId,
    this.region,
    this.tags,
    this.tagsAll,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'ownerId': ?ownerId,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcId': ?vpcId,
    };
  }

  factory InternetGatewayState.fromMap(Map<String, dynamic> map) {
    return InternetGatewayState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
