import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_network_endpoint_group_args.dart';

/// A global network endpoint group contains endpoints that reside outside of Google Cloud.
/// Currently a global network endpoint group can only support a single endpoint.
///
/// Recreating a global network endpoint group that's in use by another resource will give a
/// `resourceInUseByAnotherResource` error. Use `lifecycle.create_before_destroy`
/// to avoid this type of error.
///
///
/// To get more information about GlobalNetworkEndpointGroup, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/networkEndpointGroups)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/load-balancing/docs/negs/internet-neg-concepts)
///
/// ## Example Usage
///
/// ### Global Network Endpoint Group
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const neg = new gcp.compute.GlobalNetworkEndpointGroup("neg", {
///     name: "my-lb-neg",
///     defaultPort: 90,
///     networkEndpointType: "INTERNET_FQDN_PORT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// neg = gcp.compute.GlobalNetworkEndpointGroup("neg",
///     name="my-lb-neg",
///     default_port=90,
///     network_endpoint_type="INTERNET_FQDN_PORT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var neg = new Gcp.Compute.GlobalNetworkEndpointGroup("neg", new()
///     {
///         Name = "my-lb-neg",
///         DefaultPort = 90,
///         NetworkEndpointType = "INTERNET_FQDN_PORT",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewGlobalNetworkEndpointGroup(ctx, "neg", &compute.GlobalNetworkEndpointGroupArgs{
/// 			Name:                pulumi.String("my-lb-neg"),
/// 			DefaultPort:         pulumi.Int(90),
/// 			NetworkEndpointType: pulumi.String("INTERNET_FQDN_PORT"),
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
/// import com.pulumi.gcp.compute.GlobalNetworkEndpointGroup;
/// import com.pulumi.gcp.compute.GlobalNetworkEndpointGroupArgs;
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
///         var neg = new GlobalNetworkEndpointGroup("neg", GlobalNetworkEndpointGroupArgs.builder()
///             .name("my-lb-neg")
///             .defaultPort(90)
///             .networkEndpointType("INTERNET_FQDN_PORT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   neg:
///     type: gcp:compute:GlobalNetworkEndpointGroup
///     properties:
///       name: my-lb-neg
///       defaultPort: '90'
///       networkEndpointType: INTERNET_FQDN_PORT
/// ```
///
/// ### Global Network Endpoint Group Ip Address
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const neg = new gcp.compute.GlobalNetworkEndpointGroup("neg", {
///     name: "my-lb-neg",
///     networkEndpointType: "INTERNET_IP_PORT",
///     defaultPort: 90,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// neg = gcp.compute.GlobalNetworkEndpointGroup("neg",
///     name="my-lb-neg",
///     network_endpoint_type="INTERNET_IP_PORT",
///     default_port=90)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var neg = new Gcp.Compute.GlobalNetworkEndpointGroup("neg", new()
///     {
///         Name = "my-lb-neg",
///         NetworkEndpointType = "INTERNET_IP_PORT",
///         DefaultPort = 90,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewGlobalNetworkEndpointGroup(ctx, "neg", &compute.GlobalNetworkEndpointGroupArgs{
/// 			Name:                pulumi.String("my-lb-neg"),
/// 			NetworkEndpointType: pulumi.String("INTERNET_IP_PORT"),
/// 			DefaultPort:         pulumi.Int(90),
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
/// import com.pulumi.gcp.compute.GlobalNetworkEndpointGroup;
/// import com.pulumi.gcp.compute.GlobalNetworkEndpointGroupArgs;
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
///         var neg = new GlobalNetworkEndpointGroup("neg", GlobalNetworkEndpointGroupArgs.builder()
///             .name("my-lb-neg")
///             .networkEndpointType("INTERNET_IP_PORT")
///             .defaultPort(90)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   neg:
///     type: gcp:compute:GlobalNetworkEndpointGroup
///     properties:
///       name: my-lb-neg
///       networkEndpointType: INTERNET_IP_PORT
///       defaultPort: 90
/// ```
///
///
/// ## Import
///
/// GlobalNetworkEndpointGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/networkEndpointGroups/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, GlobalNetworkEndpointGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/globalNetworkEndpointGroup:GlobalNetworkEndpointGroup default projects/{{project}}/global/networkEndpointGroups/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/globalNetworkEndpointGroup:GlobalNetworkEndpointGroup default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/globalNetworkEndpointGroup:GlobalNetworkEndpointGroup default {{name}}
/// ```
class GlobalNetworkEndpointGroup extends pulumi.CustomResource {
  /// The default port used if the port number is not specified in the
  /// network endpoint.
  late final pulumi.Output<int?> defaultPort;

  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  late final pulumi.Output<String?> description;

  /// Name of the resource; provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// Type of network endpoints in this network endpoint group.
  /// Possible values are: `INTERNET_IP_PORT`, `INTERNET_FQDN_PORT`.
  late final pulumi.Output<String> networkEndpointType;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Creates a new [GlobalNetworkEndpointGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GlobalNetworkEndpointGroup]. {@macro pulumi_compute_global_network_endpoint_group_global_network_endpoint_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GlobalNetworkEndpointGroup(
    String name, {
    GlobalNetworkEndpointGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/globalNetworkEndpointGroup:GlobalNetworkEndpointGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.defaultPort = registerOutput<int?>('defaultPort');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.networkEndpointType = registerOutput<String>('networkEndpointType');
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
  }
}
