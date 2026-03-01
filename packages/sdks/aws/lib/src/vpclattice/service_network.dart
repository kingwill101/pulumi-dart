import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_network_args.dart';
import 'service_network_state.dart';

/// Resource for managing an AWS VPC Lattice Service Network.
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
/// const example = new aws.vpclattice.ServiceNetwork("example", {
///     name: "example",
///     authType: "AWS_IAM",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.ServiceNetwork("example",
///     name="example",
///     auth_type="AWS_IAM")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VpcLattice.ServiceNetwork("example", new()
///     {
///         Name = "example",
///         AuthType = "AWS_IAM",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpclattice.NewServiceNetwork(ctx, "example", &vpclattice.ServiceNetworkArgs{
/// 			Name:     pulumi.String("example"),
/// 			AuthType: pulumi.String("AWS_IAM"),
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
/// import com.pulumi.aws.vpclattice.ServiceNetwork;
/// import com.pulumi.aws.vpclattice.ServiceNetworkArgs;
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
///         var example = new ServiceNetwork("example", ServiceNetworkArgs.builder()
///             .name("example")
///             .authType("AWS_IAM")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:vpclattice:ServiceNetwork
///     properties:
///       name: example
///       authType: AWS_IAM
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Lattice Service Network using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:vpclattice/serviceNetwork:ServiceNetwork example sn-0158f91c1e3358dba
/// ```
class ServiceNetwork extends pulumi.CustomResource {
  /// ARN of the Service Network.
  late final pulumi.Output<String> arn;
  /// Type of IAM policy. Either `NONE` or `AWS_IAM`.
  late final pulumi.Output<String> authType;
  /// Name of the service network
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ServiceNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceNetwork]. {@macro pulumi_vpclattice_service_network_service_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceNetwork(
    String name, {
    ServiceNetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/serviceNetwork:ServiceNetwork',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.authType = registerOutput<String>('authType');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [ServiceNetwork] resource's state with the given [name] and [id].
  static ServiceNetwork get(
    String name,
    pulumi.Input<String> id, {
    ServiceNetworkState? state,
  }) {
    return ServiceNetwork._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServiceNetwork._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/serviceNetwork:ServiceNetwork',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.authType = registerOutput<String>('authType');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
