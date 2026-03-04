import 'package:pulumi/pulumi.dart' as pulumi;
import 'protection_health_check_association_args.dart';
import 'protection_health_check_association_state.dart';

/// Creates an association between a Route53 Health Check and a Shield Advanced protected resource.
/// This association uses the health of your applications to improve responsiveness and accuracy in attack detection and mitigation.
///
/// Blog post: [AWS Shield Advanced now supports Health Based Detection](https://aws.amazon.com/about-aws/whats-new/2020/02/aws-shield-advanced-now-supports-health-based-detection/)
///
/// ## Example Usage
///
/// ### Create an association between a protected EIP and a Route53 Health Check
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getRegion({});
/// const currentGetCallerIdentity = aws.getCallerIdentity({});
/// const currentGetPartition = aws.getPartition({});
/// const example = new aws.ec2.Eip("example", {
///     domain: "vpc",
///     tags: {
///         Name: "example",
///     },
/// });
/// const exampleProtection = new aws.shield.Protection("example", {
///     name: "example-protection",
///     resourceArn: pulumi.all([currentGetPartition, current, currentGetCallerIdentity, example.id]).apply(([currentGetPartition, current, currentGetCallerIdentity, id]) => `arn:${currentGetPartition.partition}:ec2:${current.region}:${currentGetCallerIdentity.accountId}:eip-allocation/${id}`),
/// });
/// const exampleHealthCheck = new aws.route53.HealthCheck("example", {
///     ipAddress: example.publicIp,
///     port: 80,
///     type: "HTTP",
///     resourcePath: "/ready",
///     failureThreshold: 3,
///     requestInterval: 30,
///     tags: {
///         Name: "tf-example-health-check",
///     },
/// });
/// const exampleProtectionHealthCheckAssociation = new aws.shield.ProtectionHealthCheckAssociation("example", {
///     healthCheckArn: exampleHealthCheck.arn,
///     shieldProtectionId: exampleProtection.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_region()
/// current_get_caller_identity = aws.get_caller_identity()
/// current_get_partition = aws.get_partition()
/// example = aws.ec2.Eip("example",
///     domain="vpc",
///     tags={
///         "Name": "example",
///     })
/// example_protection = aws.shield.Protection("example",
///     name="example-protection",
///     resource_arn=example.id.apply(lambda id: f"arn:{current_get_partition.partition}:ec2:{current.region}:{current_get_caller_identity.account_id}:eip-allocation/{id}"))
/// example_health_check = aws.route53.HealthCheck("example",
///     ip_address=example.public_ip,
///     port=80,
///     type="HTTP",
///     resource_path="/ready",
///     failure_threshold=3,
///     request_interval=30,
///     tags={
///         "Name": "tf-example-health-check",
///     })
/// example_protection_health_check_association = aws.shield.ProtectionHealthCheckAssociation("example",
///     health_check_arn=example_health_check.arn,
///     shield_protection_id=example_protection.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetRegion.Invoke();
///
///     var currentGetCallerIdentity = Aws.GetCallerIdentity.Invoke();
///
///     var currentGetPartition = Aws.GetPartition.Invoke();
///
///     var example = new Aws.Ec2.Eip("example", new()
///     {
///         Domain = "vpc",
///         Tags =
///         {
///             { "Name", "example" },
///         },
///     });
///
///     var exampleProtection = new Aws.Shield.Protection("example", new()
///     {
///         Name = "example-protection",
///         ResourceArn = Output.Tuple(currentGetPartition, current, currentGetCallerIdentity, example.Id).Apply(values =>
///         {
///             var currentGetPartition = values.Item1;
///             var current = values.Item2;
///             var currentGetCallerIdentity = values.Item3;
///             var id = values.Item4;
///             return $"arn:{currentGetPartition.Apply(getPartitionResult => getPartitionResult.Partition)}:ec2:{current.Apply(getRegionResult => getRegionResult.Region)}:{currentGetCallerIdentity.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:eip-allocation/{id}";
///         }),
///     });
///
///     var exampleHealthCheck = new Aws.Route53.HealthCheck("example", new()
///     {
///         IpAddress = example.PublicIp,
///         Port = 80,
///         Type = "HTTP",
///         ResourcePath = "/ready",
///         FailureThreshold = 3,
///         RequestInterval = 30,
///         Tags =
///         {
///             { "Name", "tf-example-health-check" },
///         },
///     });
///
///     var exampleProtectionHealthCheckAssociation = new Aws.Shield.ProtectionHealthCheckAssociation("example", new()
///     {
///         HealthCheckArn = exampleHealthCheck.Arn,
///         ShieldProtectionId = exampleProtection.Id,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/shield"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetCallerIdentity, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetPartition, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := ec2.NewEip(ctx, "example", &ec2.EipArgs{
/// 			Domain: pulumi.String("vpc"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleProtection, err := shield.NewProtection(ctx, "example", &shield.ProtectionArgs{
/// 			Name: pulumi.String("example-protection"),
/// 			ResourceArn: example.ID().ApplyT(func(id string) (string, error) {
/// 				return fmt.Sprintf("arn:%v:ec2:%v:%v:eip-allocation/%v", currentGetPartition.Partition, current.Region, currentGetCallerIdentity.AccountId, id), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleHealthCheck, err := route53.NewHealthCheck(ctx, "example", &route53.HealthCheckArgs{
/// 			IpAddress:        example.PublicIp,
/// 			Port:             pulumi.Int(80),
/// 			Type:             pulumi.String("HTTP"),
/// 			ResourcePath:     pulumi.String("/ready"),
/// 			FailureThreshold: pulumi.Int(3),
/// 			RequestInterval:  pulumi.Int(30),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("tf-example-health-check"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = shield.NewProtectionHealthCheckAssociation(ctx, "example", &shield.ProtectionHealthCheckAssociationArgs{
/// 			HealthCheckArn:     exampleHealthCheck.Arn,
/// 			ShieldProtectionId: exampleProtection.ID(),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.ec2.Eip;
/// import com.pulumi.aws.ec2.EipArgs;
/// import com.pulumi.aws.shield.Protection;
/// import com.pulumi.aws.shield.ProtectionArgs;
/// import com.pulumi.aws.route53.HealthCheck;
/// import com.pulumi.aws.route53.HealthCheckArgs;
/// import com.pulumi.aws.shield.ProtectionHealthCheckAssociation;
/// import com.pulumi.aws.shield.ProtectionHealthCheckAssociationArgs;
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
///         final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         final var currentGetCallerIdentity = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         final var currentGetPartition = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         var example = new Eip("example", EipArgs.builder()
///             .domain("vpc")
///             .tags(Map.of("Name", "example"))
///             .build());
///
///         var exampleProtection = new Protection("exampleProtection", ProtectionArgs.builder()
///             .name("example-protection")
///             .resourceArn(example.id().applyValue(_id -> String.format("arn:%s:ec2:%s:%s:eip-allocation/%s", currentGetPartition.partition(),current.region(),currentGetCallerIdentity.accountId(),_id)))
///             .build());
///
///         var exampleHealthCheck = new HealthCheck("exampleHealthCheck", HealthCheckArgs.builder()
///             .ipAddress(example.publicIp())
///             .port(80)
///             .type("HTTP")
///             .resourcePath("/ready")
///             .failureThreshold(3)
///             .requestInterval(30)
///             .tags(Map.of("Name", "tf-example-health-check"))
///             .build());
///
///         var exampleProtectionHealthCheckAssociation = new ProtectionHealthCheckAssociation("exampleProtectionHealthCheckAssociation", ProtectionHealthCheckAssociationArgs.builder()
///             .healthCheckArn(exampleHealthCheck.arn())
///             .shieldProtectionId(exampleProtection.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:Eip
///     properties:
///       domain: vpc
///       tags:
///         Name: example
///   exampleProtection:
///     type: aws:shield:Protection
///     name: example
///     properties:
///       name: example-protection
///       resourceArn: arn:${currentGetPartition.partition}:ec2:${current.region}:${currentGetCallerIdentity.accountId}:eip-allocation/${example.id}
///   exampleHealthCheck:
///     type: aws:route53:HealthCheck
///     name: example
///     properties:
///       ipAddress: ${example.publicIp}
///       port: 80
///       type: HTTP
///       resourcePath: /ready
///       failureThreshold: '3'
///       requestInterval: '30'
///       tags:
///         Name: tf-example-health-check
///   exampleProtectionHealthCheckAssociation:
///     type: aws:shield:ProtectionHealthCheckAssociation
///     name: example
///     properties:
///       healthCheckArn: ${exampleHealthCheck.arn}
///       shieldProtectionId: ${exampleProtection.id}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
///   currentGetCallerIdentity:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   currentGetPartition:
///     fn::invoke:
///       function: aws:getPartition
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Shield protection health check association resources using the `shield_protection_id` and `health_check_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:shield/protectionHealthCheckAssociation:ProtectionHealthCheckAssociation example ff9592dc-22f3-4e88-afa1-7b29fde9669a+arn:aws:route53:::healthcheck/3742b175-edb9-46bc-9359-f53e3b794b1b
/// ```
class ProtectionHealthCheckAssociation extends pulumi.CustomResource {
  /// The ARN (Amazon Resource Name) of the Route53 Health Check resource which will be associated to the protected resource.
  late final pulumi.Output<String> healthCheckArn;

  /// The ID of the protected resource.
  late final pulumi.Output<String> shieldProtectionId;

  /// Creates a new [ProtectionHealthCheckAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProtectionHealthCheckAssociation]. {@macro pulumi_shield_protection_health_check_association_protection_health_check_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProtectionHealthCheckAssociation(
    String name, {
    ProtectionHealthCheckAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:shield/protectionHealthCheckAssociation:ProtectionHealthCheckAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    healthCheckArn = registerOutput<String>('healthCheckArn');
    shieldProtectionId = registerOutput<String>('shieldProtectionId');
  }

  /// Gets an existing [ProtectionHealthCheckAssociation] resource's state with the given [name] and [id].
  static ProtectionHealthCheckAssociation get(
    String name,
    pulumi.Input<String> id, {
    ProtectionHealthCheckAssociationState? state,
  }) {
    return ProtectionHealthCheckAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProtectionHealthCheckAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:shield/protectionHealthCheckAssociation:ProtectionHealthCheckAssociation',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    healthCheckArn = registerOutput<String>('healthCheckArn');
    shieldProtectionId = registerOutput<String>('shieldProtectionId');
  }
}
