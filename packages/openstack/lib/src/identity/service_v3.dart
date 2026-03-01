import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_v3_args.dart';

/// Manages a V3 Service resource within OpenStack Keystone.
///
/// > **Note:** This usually requires admin privileges.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const service1 = new openstack.identity.ServiceV3("service_1", {
///     name: "custom",
///     type: "custom",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// service1 = openstack.identity.ServiceV3("service_1",
///     name="custom",
///     type="custom")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var service1 = new OpenStack.Identity.ServiceV3("service_1", new()
///     {
///         Name = "custom",
///         Type = "custom",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/identity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := identity.NewServiceV3(ctx, "service_1", &identity.ServiceV3Args{
/// 			Name: pulumi.String("custom"),
/// 			Type: pulumi.String("custom"),
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
/// import com.pulumi.openstack.identity.ServiceV3;
/// import com.pulumi.openstack.identity.ServiceV3Args;
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
///         var service1 = new ServiceV3("service1", ServiceV3Args.builder()
///             .name("custom")
///             .type("custom")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   service1:
///     type: openstack:identity:ServiceV3
///     name: service_1
///     properties:
///       name: custom
///       type: custom
/// ```
///
///
/// ## Import
///
/// Services can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:identity/serviceV3:ServiceV3 service_1 6688e967-158a-496f-a224-cae3414e6b61
/// ```
class ServiceV3 extends pulumi.CustomResource {
  /// The service description.
  late final pulumi.Output<String?> description;
  /// The service status. Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// The service name.
  late final pulumi.Output<String> name;
  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used.
  late final pulumi.Output<String> region;
  /// The service type.
  late final pulumi.Output<String> type;

  /// Creates a new [ServiceV3].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceV3]. {@macro pulumi_identity_service_v3_service_v3_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceV3(
    String name, {
    ServiceV3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:identity/serviceV3:ServiceV3',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.enabled = registerOutput<bool?>('enabled');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.type = registerOutput<String>('type');
  }
}
