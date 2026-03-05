import 'package:pulumi/pulumi.dart' as pulumi;
import 'activation_args.dart';
import 'activation_state.dart';

/// Provides a ECS Activation resource.
///
/// For information about ECS Activation and how to use it, see [What is Activation](https://www.alibabacloud.com/help/en/elastic-compute-service/latest/createactivation#doc-api-Ecs-CreateActivation).
///
/// &gt; **NOTE:** Available since v1.177.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = new alicloud.ecs.Activation("example", {
///     description: "terraform-example",
///     instanceCount: 10,
///     instanceName: "terraform-example",
///     ipAddressRange: "0.0.0.0/0",
///     timeToLiveInHours: 4,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.ecs.Activation("example",
///     description="terraform-example",
///     instance_count=10,
///     instance_name="terraform-example",
///     ip_address_range="0.0.0.0/0",
///     time_to_live_in_hours=4)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Ecs.Activation("example", new()
///     {
///         Description = "terraform-example",
///         InstanceCount = 10,
///         InstanceName = "terraform-example",
///         IpAddressRange = "0.0.0.0/0",
///         TimeToLiveInHours = 4,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecs.NewActivation(ctx, "example", &ecs.ActivationArgs{
/// 			Description:       pulumi.String("terraform-example"),
/// 			InstanceCount:     pulumi.Int(10),
/// 			InstanceName:      pulumi.String("terraform-example"),
/// 			IpAddressRange:    pulumi.String("0.0.0.0/0"),
/// 			TimeToLiveInHours: pulumi.Int(4),
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
/// import com.pulumi.alicloud.ecs.Activation;
/// import com.pulumi.alicloud.ecs.ActivationArgs;
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
///         var example = new Activation("example", ActivationArgs.builder()
///             .description("terraform-example")
///             .instanceCount(10)
///             .instanceName("terraform-example")
///             .ipAddressRange("0.0.0.0/0")
///             .timeToLiveInHours(4)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:ecs:Activation
///     properties:
///       description: terraform-example
///       instanceCount: 10
///       instanceName: terraform-example
///       ipAddressRange: 0.0.0.0/0
///       timeToLiveInHours: 4
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECS Activation can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/activation:Activation example <id>
/// ```
class Activation extends pulumi.CustomResource {
  /// The description of the activation code. The description can be 1 to 100 characters in length and cannot start with `http://` or `https://`.
  late final pulumi.Output<String?> description;
  /// The maximum number of times that the activation code can be used to register managed instances. Valid values: `1` to `1000`. Default value: `10`.
  late final pulumi.Output<int> instanceCount;
  /// The default instance name prefix. The instance name prefix must be 1 to 50 characters in length. It must start with a letter and cannot start with `http://` or `https://`. The instance name prefix can contain only letters, digits, periods (.), underscores (_), hyphens (-), and colons (:).
  /// - If you use the activation code created by the CreateActivation operation to register managed instances, the instances are assigned sequential names that are prefixed by the value of this parameter. You can also specify a new instance name to override the assigned sequential name when you register a managed instance.
  /// - If you specify InstanceName when you register a managed instance, an instance name in the format of `&lt;InstanceName&gt;-&lt;Number&gt;` is generated. The number of digits in the &lt;Number&gt; value is determined by that in the InstanceCount value. Example: 001. If you do not specify InstanceName, the hostname (Hostname) is used as the instance name.
  late final pulumi.Output<String?> instanceName;
  /// The IP addresses of hosts that are allowed to use the activation code. The value can be IPv4 addresses, IPv6 addresses, or CIDR blocks.
  late final pulumi.Output<String> ipAddressRange;
  /// The validity period of the activation code. The activation code cannot be used to register new instances after the validity period expires. Unit: hours. Valid values: `1` to `24`. Default value: `4`.
  late final pulumi.Output<int> timeToLiveInHours;

  /// Creates a new [Activation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Activation]. {@macro pulumi_ecs_activation_activation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Activation(
    String name, {
    ActivationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/activation:Activation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    instanceCount = registerOutput<int>('instanceCount');
    instanceName = registerOutput<String?>('instanceName');
    ipAddressRange = registerOutput<String>('ipAddressRange');
    timeToLiveInHours = registerOutput<int>('timeToLiveInHours');
  }

  /// Gets an existing [Activation] resource's state with the given [name] and [id].
  static Activation get(
    String name,
    pulumi.Input<String> id, {
    ActivationState? state,
  }) {
    return Activation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Activation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/activation:Activation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    instanceCount = registerOutput<int>('instanceCount');
    instanceName = registerOutput<String?>('instanceName');
    ipAddressRange = registerOutput<String>('ipAddressRange');
    timeToLiveInHours = registerOutput<int>('timeToLiveInHours');
  }
}
