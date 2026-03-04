import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_network_args.dart';
import 'global_network_state.dart';

/// Manages a Network Manager Global Network.
///
/// Use this resource to create and manage a global network, which is a single private network that acts as the high-level container for your network objects.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmanager.GlobalNetwork("example", {description: "example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.GlobalNetwork("example", description="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkManager.GlobalNetwork("example", new()
///     {
///         Description = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkmanager.NewGlobalNetwork(ctx, "example", &networkmanager.GlobalNetworkArgs{
/// 			Description: pulumi.String("example"),
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
/// import com.pulumi.aws.networkmanager.GlobalNetwork;
/// import com.pulumi.aws.networkmanager.GlobalNetworkArgs;
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
///         var example = new GlobalNetwork("example", GlobalNetworkArgs.builder()
///             .description("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networkmanager:GlobalNetwork
///     properties:
///       description: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.networkmanager.GlobalNetwork` using the global network ID. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/globalNetwork:GlobalNetwork example global-network-0d47f6t230mz46dy4
/// ```
class GlobalNetwork extends pulumi.CustomResource {
  /// Global Network ARN.
  late final pulumi.Output<String> arn;

  /// Description of the Global Network.
  late final pulumi.Output<String?> description;

  /// Key-value tags for the Global Network. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [GlobalNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GlobalNetwork]. {@macro pulumi_networkmanager_global_network_global_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GlobalNetwork(
    String name, {
    GlobalNetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:networkmanager/globalNetwork:GlobalNetwork',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [GlobalNetwork] resource's state with the given [name] and [id].
  static GlobalNetwork get(
    String name,
    pulumi.Input<String> id, {
    GlobalNetworkState? state,
  }) {
    return GlobalNetwork._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GlobalNetwork._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:networkmanager/globalNetwork:GlobalNetwork',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
