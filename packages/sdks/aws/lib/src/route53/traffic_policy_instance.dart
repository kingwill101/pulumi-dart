import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_policy_instance_args.dart';
import 'traffic_policy_instance_state.dart';

/// Provides a Route53 traffic policy instance resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.route53.TrafficPolicyInstance("test", {
///     name: "test.example.com",
///     trafficPolicyId: "b3gb108f-ea6f-45a5-baab-9d112d8b4037",
///     trafficPolicyVersion: 1,
///     hostedZoneId: "Z033120931TAQO548OGJC",
///     ttl: 360,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.route53.TrafficPolicyInstance("test",
///     name="test.example.com",
///     traffic_policy_id="b3gb108f-ea6f-45a5-baab-9d112d8b4037",
///     traffic_policy_version=1,
///     hosted_zone_id="Z033120931TAQO548OGJC",
///     ttl=360)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Route53.TrafficPolicyInstance("test", new()
///     {
///         Name = "test.example.com",
///         TrafficPolicyId = "b3gb108f-ea6f-45a5-baab-9d112d8b4037",
///         TrafficPolicyVersion = 1,
///         HostedZoneId = "Z033120931TAQO548OGJC",
///         Ttl = 360,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := route53.NewTrafficPolicyInstance(ctx, "test", &route53.TrafficPolicyInstanceArgs{
/// 			Name:                 pulumi.String("test.example.com"),
/// 			TrafficPolicyId:      pulumi.String("b3gb108f-ea6f-45a5-baab-9d112d8b4037"),
/// 			TrafficPolicyVersion: pulumi.Int(1),
/// 			HostedZoneId:         pulumi.String("Z033120931TAQO548OGJC"),
/// 			Ttl:                  pulumi.Int(360),
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
/// resource "aws_route53_trafficpolicyinstance" "test" {
///   name                   = "test.example.com"
///   traffic_policy_id      = "b3gb108f-ea6f-45a5-baab-9d112d8b4037"
///   traffic_policy_version = 1
///   hosted_zone_id         = "Z033120931TAQO548OGJC"
///   ttl                    = 360
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.route53.TrafficPolicyInstance;
/// import com.pulumi.aws.route53.TrafficPolicyInstanceArgs;
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
///         var test = new TrafficPolicyInstance("test", TrafficPolicyInstanceArgs.builder()
///             .name("test.example.com")
///             .trafficPolicyId("b3gb108f-ea6f-45a5-baab-9d112d8b4037")
///             .trafficPolicyVersion(1)
///             .hostedZoneId("Z033120931TAQO548OGJC")
///             .ttl(360)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:route53:TrafficPolicyInstance
///     properties:
///       name: test.example.com
///       trafficPolicyId: b3gb108f-ea6f-45a5-baab-9d112d8b4037
///       trafficPolicyVersion: 1
///       hostedZoneId: Z033120931TAQO548OGJC
///       ttl: 360
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Route53 traffic policy instance using its id. For example:
///
/// ```sh
/// $ pulumi import aws:route53/trafficPolicyInstance:TrafficPolicyInstance test df579d9a-6396-410e-ac22-e7ad60cf9e7e
/// ```
class TrafficPolicyInstance extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the traffic policy instance.
  late final pulumi.Output<String> arn;
  /// ID of the hosted zone that you want Amazon Route 53 to create resource record sets in by using the configuration in a traffic policy.
  late final pulumi.Output<String> hostedZoneId;
  /// Domain name for which Amazon Route 53 responds to DNS queries by using the resource record sets that Route 53 creates for this traffic policy instance.
  late final pulumi.Output<String> name;
  /// ID of the traffic policy that you want to use to create resource record sets in the specified hosted zone.
  late final pulumi.Output<String> trafficPolicyId;
  /// Version of the traffic policy
  late final pulumi.Output<int> trafficPolicyVersion;
  /// TTL that you want Amazon Route 53 to assign to all the resource record sets that it creates in the specified hosted zone.
  late final pulumi.Output<int> ttl;

  /// Creates a new [TrafficPolicyInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TrafficPolicyInstance]. {@macro pulumi_route53_traffic_policy_instance_traffic_policy_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TrafficPolicyInstance(
    String name, {
    TrafficPolicyInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/trafficPolicyInstance:TrafficPolicyInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    hostedZoneId = registerOutput<String>('hostedZoneId');
    this.name = registerOutput<String>('name');
    trafficPolicyId = registerOutput<String>('trafficPolicyId');
    trafficPolicyVersion = registerOutput<int>('trafficPolicyVersion');
    ttl = registerOutput<int>('ttl');
  }

  /// Gets an existing [TrafficPolicyInstance] resource's state with the given [name] and [id].
  static TrafficPolicyInstance get(
    String name,
    pulumi.Input<String> id, {
    TrafficPolicyInstanceState? state,
  }) {
    return TrafficPolicyInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TrafficPolicyInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/trafficPolicyInstance:TrafficPolicyInstance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    hostedZoneId = registerOutput<String>('hostedZoneId');
    this.name = registerOutput<String>('name');
    trafficPolicyId = registerOutput<String>('trafficPolicyId');
    trafficPolicyVersion = registerOutput<int>('trafficPolicyVersion');
    ttl = registerOutput<int>('ttl');
  }
}
