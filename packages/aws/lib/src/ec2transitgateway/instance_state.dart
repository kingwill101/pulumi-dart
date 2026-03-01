import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_state_args.dart';

/// Provides an EC2 instance state resource. This allows managing an instance power state.
///
/// > **NOTE on Instance State Management:** AWS does not currently have an EC2 API operation to determine an instance has finished processing user data. As a result, this resource can interfere with user data processing. For example, this resource may stop an instance while the user data script is in mid run.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ubuntu = aws.ec2.getAmi({
///     mostRecent: true,
///     filters: [
///         {
///             name: "name",
///             values: ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"],
///         },
///         {
///             name: "virtualization-type",
///             values: ["hvm"],
///         },
///     ],
///     owners: ["099720109477"],
/// });
/// const test = new aws.ec2.Instance("test", {
///     ami: ubuntu.then(ubuntu => ubuntu.id),
///     instanceType: aws.ec2.InstanceType.T3_Micro,
///     tags: {
///         Name: "HelloWorld",
///     },
/// });
/// const testInstanceState = new aws.ec2transitgateway.InstanceState("test", {
///     instanceId: test.id,
///     state: "stopped",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ubuntu = aws.ec2.get_ami(most_recent=True,
///     filters=[
///         {
///             "name": "name",
///             "values": ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"],
///         },
///         {
///             "name": "virtualization-type",
///             "values": ["hvm"],
///         },
///     ],
///     owners=["099720109477"])
/// test = aws.ec2.Instance("test",
///     ami=ubuntu.id,
///     instance_type=aws.ec2.InstanceType.T3_MICRO,
///     tags={
///         "Name": "HelloWorld",
///     })
/// test_instance_state = aws.ec2transitgateway.InstanceState("test",
///     instance_id=test.id,
///     state="stopped")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ubuntu = Aws.Ec2.GetAmi.Invoke(new()
///     {
///         MostRecent = true,
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetAmiFilterInputArgs
///             {
///                 Name = "name",
///                 Values = new[]
///                 {
///                     "ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*",
///                 },
///             },
///             new Aws.Ec2.Inputs.GetAmiFilterInputArgs
///             {
///                 Name = "virtualization-type",
///                 Values = new[]
///                 {
///                     "hvm",
///                 },
///             },
///         },
///         Owners = new[]
///         {
///             "099720109477",
///         },
///     });
///
///     var test = new Aws.Ec2.Instance("test", new()
///     {
///         Ami = ubuntu.Apply(getAmiResult => getAmiResult.Id),
///         InstanceType = Aws.Ec2.InstanceType.T3_Micro,
///         Tags =
///         {
///             { "Name", "HelloWorld" },
///         },
///     });
///
///     var testInstanceState = new Aws.Ec2TransitGateway.InstanceState("test", new()
///     {
///         InstanceId = test.Id,
///         State = "stopped",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ubuntu, err := ec2.LookupAmi(ctx, &ec2.LookupAmiArgs{
/// 			MostRecent: pulumi.BoolRef(true),
/// 			Filters: []ec2.GetAmiFilter{
/// 				{
/// 					Name: "name",
/// 					Values: []string{
/// 						"ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*",
/// 					},
/// 				},
/// 				{
/// 					Name: "virtualization-type",
/// 					Values: []string{
/// 						"hvm",
/// 					},
/// 				},
/// 			},
/// 			Owners: []string{
/// 				"099720109477",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		test, err := ec2.NewInstance(ctx, "test", &ec2.InstanceArgs{
/// 			Ami:          pulumi.String(ubuntu.Id),
/// 			InstanceType: pulumi.String(ec2.InstanceType_T3_Micro),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("HelloWorld"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2transitgateway.NewInstanceState(ctx, "test", &ec2transitgateway.InstanceStateArgs{
/// 			InstanceId: test.ID(),
/// 			State:      pulumi.String("stopped"),
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
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetAmiArgs;
/// import com.pulumi.aws.ec2.Instance;
/// import com.pulumi.aws.ec2.InstanceArgs;
/// import com.pulumi.aws.ec2transitgateway.InstanceState;
/// import com.pulumi.aws.ec2transitgateway.InstanceStateArgs;
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
///         final var ubuntu = Ec2Functions.getAmi(GetAmiArgs.builder()
///             .mostRecent(true)
///             .filters(
///                 GetAmiFilterArgs.builder()
///                     .name("name")
///                     .values("ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*")
///                     .build(),
///                 GetAmiFilterArgs.builder()
///                     .name("virtualization-type")
///                     .values("hvm")
///                     .build())
///             .owners("099720109477")
///             .build());
///
///         var test = new Instance("test", InstanceArgs.builder()
///             .ami(ubuntu.id())
///             .instanceType("t3.micro")
///             .tags(Map.of("Name", "HelloWorld"))
///             .build());
///
///         var testInstanceState = new InstanceState("testInstanceState", InstanceStateArgs.builder()
///             .instanceId(test.id())
///             .state("stopped")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:ec2:Instance
///     properties:
///       ami: ${ubuntu.id}
///       instanceType: t3.micro
///       tags:
///         Name: HelloWorld
///   testInstanceState:
///     type: aws:ec2transitgateway:InstanceState
///     name: test
///     properties:
///       instanceId: ${test.id}
///       state: stopped
/// variables:
///   ubuntu:
///     fn::invoke:
///       function: aws:ec2:getAmi
///       arguments:
///         mostRecent: true
///         filters:
///           - name: name
///             values:
///               - ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*
///           - name: virtualization-type
///             values:
///               - hvm
///         owners:
///           - '099720109477'
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2transitgateway.InstanceState` using the `instance_id` attribute. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/instanceState:InstanceState test i-02cae6557dfcf2f96
/// ```
class InstanceState extends pulumi.CustomResource {
  /// Whether to request a forced stop when `state` is `stopped`. Otherwise (_i.e._, `state` is `running`), ignored. When an instance is forced to stop, it does not flush file system caches or file system metadata, and you must subsequently perform file system check and repair. Not recommended for Windows instances. Defaults to `false`.
  late final pulumi.Output<bool?> force;
  /// ID of the instance.
  late final pulumi.Output<String> instanceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// State of the instance. Valid values are `stopped`, `running`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> state;

  /// Creates a new [InstanceState].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceState]. {@macro pulumi_ec2transitgateway_instance_state_instance_state_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceState(
    String name, {
    InstanceStateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/instanceState:InstanceState',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.force = registerOutput<bool?>('force');
    this.instanceId = registerOutput<String>('instanceId');
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
  }
}
