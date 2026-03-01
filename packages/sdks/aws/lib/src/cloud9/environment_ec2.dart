import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_ec2_args.dart';
import 'environment_ec2_state.dart';

/// Provides a Cloud9 EC2 Development Environment.
///
/// ## Example Usage
///
/// Basic usage:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloud9.EnvironmentEC2("example", {
///     instanceType: "t2.micro",
///     name: "example-env",
///     imageId: "amazonlinux-2023-x86_64",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloud9.EnvironmentEC2("example",
///     instance_type="t2.micro",
///     name="example-env",
///     image_id="amazonlinux-2023-x86_64")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Cloud9.EnvironmentEC2("example", new()
///     {
///         InstanceType = "t2.micro",
///         Name = "example-env",
///         ImageId = "amazonlinux-2023-x86_64",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloud9"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloud9.NewEnvironmentEC2(ctx, "example", &cloud9.EnvironmentEC2Args{
/// 			InstanceType: pulumi.String("t2.micro"),
/// 			Name:         pulumi.String("example-env"),
/// 			ImageId:      pulumi.String("amazonlinux-2023-x86_64"),
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
/// import com.pulumi.aws.cloud9.EnvironmentEC2;
/// import com.pulumi.aws.cloud9.EnvironmentEC2Args;
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
///         var example = new EnvironmentEC2("example", EnvironmentEC2Args.builder()
///             .instanceType("t2.micro")
///             .name("example-env")
///             .imageId("amazonlinux-2023-x86_64")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloud9:EnvironmentEC2
///     properties:
///       instanceType: t2.micro
///       name: example-env
///       imageId: amazonlinux-2023-x86_64
/// ```
///
///
/// Get the URL of the Cloud9 environment after creation:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloud9.EnvironmentEC2("example", {instanceType: "t2.micro"});
/// const cloud9Instance = aws.ec2.getInstanceOutput({
///     filters: [{
///         name: "tag:aws:cloud9:environment",
///         values: [example.id],
///     }],
/// });
/// export const cloud9Url = pulumi.interpolate`https://${region}.console.aws.amazon.com/cloud9/ide/${example.id}`;
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloud9.EnvironmentEC2("example", instance_type="t2.micro")
/// cloud9_instance = aws.ec2.get_instance_output(filters=[{
///     "name": "tag:aws:cloud9:environment",
///     "values": [example.id],
/// }])
/// pulumi.export("cloud9Url", example.id.apply(lambda id: f"https://{region}.console.aws.amazon.com/cloud9/ide/{id}"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Cloud9.EnvironmentEC2("example", new()
///     {
///         InstanceType = "t2.micro",
///     });
///
///     var cloud9Instance = Aws.Ec2.GetInstance.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetInstanceFilterInputArgs
///             {
///                 Name = "tag:aws:cloud9:environment",
///                 Values = new[]
///                 {
///                     example.Id,
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cloud9Url"] = example.Id.Apply(id => $"https://{region}.console.aws.amazon.com/cloud9/ide/{id}"),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloud9"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cloud9.NewEnvironmentEC2(ctx, "example", &cloud9.EnvironmentEC2Args{
/// 			InstanceType: pulumi.String("t2.micro"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ = ec2.LookupInstanceOutput(ctx, ec2.GetInstanceOutputArgs{
/// 			Filters: ec2.GetInstanceFilterArray{
/// 				&ec2.GetInstanceFilterArgs{
/// 					Name: pulumi.String("tag:aws:cloud9:environment"),
/// 					Values: pulumi.StringArray{
/// 						example.ID(),
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		ctx.Export("cloud9Url", example.ID().ApplyT(func(id string) (string, error) {
/// 			return fmt.Sprintf("https://%v.console.aws.amazon.com/cloud9/ide/%v", region, id), nil
/// 		}).(pulumi.StringOutput))
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
/// import com.pulumi.aws.cloud9.EnvironmentEC2;
/// import com.pulumi.aws.cloud9.EnvironmentEC2Args;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetInstanceArgs;
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
///         var example = new EnvironmentEC2("example", EnvironmentEC2Args.builder()
///             .instanceType("t2.micro")
///             .build());
///
///         final var cloud9Instance = Ec2Functions.getInstance(GetInstanceArgs.builder()
///             .filters(GetInstanceFilterArgs.builder()
///                 .name("tag:aws:cloud9:environment")
///                 .values(example.id())
///                 .build())
///             .build());
///
///         ctx.export("cloud9Url", example.id().applyValue(_id -> String.format("https://%s.console.aws.amazon.com/cloud9/ide/%s", region,_id)));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloud9:EnvironmentEC2
///     properties:
///       instanceType: t2.micro
/// variables:
///   cloud9Instance:
///     fn::invoke:
///       function: aws:ec2:getInstance
///       arguments:
///         filters:
///           - name: tag:aws:cloud9:environment
///             values:
///               - ${example.id}
/// outputs:
///   cloud9Url: https://${region}.console.aws.amazon.com/cloud9/ide/${example.id}
/// ```
///
///
/// Allocate a static IP to the Cloud9 environment:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloud9.EnvironmentEC2("example", {instanceType: "t2.micro"});
/// const cloud9Instance = aws.ec2.getInstanceOutput({
///     filters: [{
///         name: "tag:aws:cloud9:environment",
///         values: [example.id],
///     }],
/// });
/// const cloud9Eip = new aws.ec2.Eip("cloud9_eip", {
///     instance: cloud9Instance.apply(cloud9Instance => cloud9Instance.id),
///     domain: "vpc",
/// });
/// export const cloud9PublicIp = cloud9Eip.publicIp;
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloud9.EnvironmentEC2("example", instance_type="t2.micro")
/// cloud9_instance = aws.ec2.get_instance_output(filters=[{
///     "name": "tag:aws:cloud9:environment",
///     "values": [example.id],
/// }])
/// cloud9_eip = aws.ec2.Eip("cloud9_eip",
///     instance=cloud9_instance.id,
///     domain="vpc")
/// pulumi.export("cloud9PublicIp", cloud9_eip.public_ip)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Cloud9.EnvironmentEC2("example", new()
///     {
///         InstanceType = "t2.micro",
///     });
///
///     var cloud9Instance = Aws.Ec2.GetInstance.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetInstanceFilterInputArgs
///             {
///                 Name = "tag:aws:cloud9:environment",
///                 Values = new[]
///                 {
///                     example.Id,
///                 },
///             },
///         },
///     });
///
///     var cloud9Eip = new Aws.Ec2.Eip("cloud9_eip", new()
///     {
///         Instance = cloud9Instance.Apply(getInstanceResult => getInstanceResult.Id),
///         Domain = "vpc",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cloud9PublicIp"] = cloud9Eip.PublicIp,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloud9"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cloud9.NewEnvironmentEC2(ctx, "example", &cloud9.EnvironmentEC2Args{
/// 			InstanceType: pulumi.String("t2.micro"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cloud9Instance := ec2.LookupInstanceOutput(ctx, ec2.GetInstanceOutputArgs{
/// 			Filters: ec2.GetInstanceFilterArray{
/// 				&ec2.GetInstanceFilterArgs{
/// 					Name: pulumi.String("tag:aws:cloud9:environment"),
/// 					Values: pulumi.StringArray{
/// 						example.ID(),
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		cloud9Eip, err := ec2.NewEip(ctx, "cloud9_eip", &ec2.EipArgs{
/// 			Instance: pulumi.String(cloud9Instance.ApplyT(func(cloud9Instance ec2.GetInstanceResult) (*string, error) {
/// 				return &cloud9Instance.Id, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			Domain: pulumi.String("vpc"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cloud9PublicIp", cloud9Eip.PublicIp)
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
/// import com.pulumi.aws.cloud9.EnvironmentEC2;
/// import com.pulumi.aws.cloud9.EnvironmentEC2Args;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetInstanceArgs;
/// import com.pulumi.aws.ec2.Eip;
/// import com.pulumi.aws.ec2.EipArgs;
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
///         var example = new EnvironmentEC2("example", EnvironmentEC2Args.builder()
///             .instanceType("t2.micro")
///             .build());
///
///         final var cloud9Instance = Ec2Functions.getInstance(GetInstanceArgs.builder()
///             .filters(GetInstanceFilterArgs.builder()
///                 .name("tag:aws:cloud9:environment")
///                 .values(example.id())
///                 .build())
///             .build());
///
///         var cloud9Eip = new Eip("cloud9Eip", EipArgs.builder()
///             .instance(cloud9Instance.applyValue(_cloud9Instance -> _cloud9Instance.id()))
///             .domain("vpc")
///             .build());
///
///         ctx.export("cloud9PublicIp", cloud9Eip.publicIp());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloud9:EnvironmentEC2
///     properties:
///       instanceType: t2.micro
///   cloud9Eip:
///     type: aws:ec2:Eip
///     name: cloud9_eip
///     properties:
///       instance: ${cloud9Instance.id}
///       domain: vpc
/// variables:
///   cloud9Instance:
///     fn::invoke:
///       function: aws:ec2:getInstance
///       arguments:
///         filters:
///           - name: tag:aws:cloud9:environment
///             values:
///               - ${example.id}
/// outputs:
///   cloud9PublicIp: ${cloud9Eip.publicIp}
/// ```
class EnvironmentEC2 extends pulumi.CustomResource {
  /// The ARN of the environment.
  late final pulumi.Output<String> arn;
  /// The number of minutes until the running instance is shut down after the environment has last been used.
  late final pulumi.Output<int?> automaticStopTimeMinutes;
  /// The connection type used for connecting to an Amazon EC2 environment. Valid values are `CONNECT_SSH` and `CONNECT_SSM`. For more information please refer [AWS documentation for Cloud9](https://docs.aws.amazon.com/cloud9/latest/user-guide/ec2-ssm.html).
  late final pulumi.Output<String?> connectionType;
  /// The description of the environment.
  late final pulumi.Output<String?> description;
  /// The identifier for the Amazon Machine Image (AMI) that's used to create the EC2 instance. Valid values are
  /// * `amazonlinux-2-x86_64`
  /// * `amazonlinux-2023-x86_64`
  /// * `ubuntu-18.04-x86_64`
  /// * `ubuntu-22.04-x86_64`
  /// * `resolve:ssm:/aws/service/cloud9/amis/amazonlinux-2-x86_64`
  /// * `resolve:ssm:/aws/service/cloud9/amis/amazonlinux-2023-x86_64`
  /// * `resolve:ssm:/aws/service/cloud9/amis/ubuntu-18.04-x86_64`
  /// * `resolve:ssm:/aws/service/cloud9/amis/ubuntu-22.04-x86_64`
  late final pulumi.Output<String> imageId;
  /// The type of instance to connect to the environment, e.g., `t2.micro`.
  late final pulumi.Output<String> instanceType;
  /// The name of the environment.
  late final pulumi.Output<String> name;
  /// The ARN of the environment owner. This can be ARN of any AWS IAM principal. Defaults to the environment's creator.
  late final pulumi.Output<String> ownerArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ID of the subnet in Amazon VPC that AWS Cloud9 will use to communicate with the Amazon EC2 instance.
  late final pulumi.Output<String?> subnetId;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The type of the environment (e.g., `ssh` or `ec2`).
  late final pulumi.Output<String> type;

  /// Creates a new [EnvironmentEC2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvironmentEC2]. {@macro pulumi_cloud9_environment_ec2_environment_ec2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvironmentEC2(
    String name, {
    EnvironmentEC2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloud9/environmentEC2:EnvironmentEC2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.automaticStopTimeMinutes = registerOutput<int?>('automaticStopTimeMinutes');
    this.connectionType = registerOutput<String?>('connectionType');
    this.description = registerOutput<String?>('description');
    this.imageId = registerOutput<String>('imageId');
    this.instanceType = registerOutput<String>('instanceType');
    this.name = registerOutput<String>('name');
    this.ownerArn = registerOutput<String>('ownerArn');
    this.region = registerOutput<String>('region');
    this.subnetId = registerOutput<String?>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
  }

  /// Gets an existing [EnvironmentEC2] resource's state with the given [name] and [id].
  static EnvironmentEC2 get(
    String name,
    pulumi.Input<String> id, {
    EnvironmentEC2State? state,
  }) {
    return EnvironmentEC2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EnvironmentEC2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloud9/environmentEC2:EnvironmentEC2',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.automaticStopTimeMinutes = registerOutput<int?>('automaticStopTimeMinutes');
    this.connectionType = registerOutput<String?>('connectionType');
    this.description = registerOutput<String?>('description');
    this.imageId = registerOutput<String>('imageId');
    this.instanceType = registerOutput<String>('instanceType');
    this.name = registerOutput<String>('name');
    this.ownerArn = registerOutput<String>('ownerArn');
    this.region = registerOutput<String>('region');
    this.subnetId = registerOutput<String?>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
  }
}
