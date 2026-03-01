import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_args.dart';

/// An individual endpoint that provides a service.
///
///
/// To get more information about Endpoint, see:
///
/// * [API documentation](https://cloud.google.com/service-directory/docs/reference/rest/v1/projects.locations.namespaces.services.endpoints)
/// * How-to Guides
/// * [Configuring an endpoint](https://cloud.google.com/service-directory/docs/configuring-service-directory#configuring_an_endpoint)
///
/// ## Example Usage
///
/// ### Service Directory Endpoint Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.servicedirectory.Namespace("example", {
///     namespaceId: "example-namespace",
///     location: "us-central1",
/// });
/// const exampleService = new gcp.servicedirectory.Service("example", {
///     serviceId: "example-service",
///     namespace: example.id,
/// });
/// const exampleEndpoint = new gcp.servicedirectory.Endpoint("example", {
///     endpointId: "example-endpoint",
///     service: exampleService.id,
///     metadata: {
///         stage: "prod",
///         region: "us-central1",
///     },
///     address: "1.2.3.4",
///     port: 5353,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.servicedirectory.Namespace("example",
///     namespace_id="example-namespace",
///     location="us-central1")
/// example_service = gcp.servicedirectory.Service("example",
///     service_id="example-service",
///     namespace=example.id)
/// example_endpoint = gcp.servicedirectory.Endpoint("example",
///     endpoint_id="example-endpoint",
///     service=example_service.id,
///     metadata={
///         "stage": "prod",
///         "region": "us-central1",
///     },
///     address="1.2.3.4",
///     port=5353)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.ServiceDirectory.Namespace("example", new()
///     {
///         NamespaceId = "example-namespace",
///         Location = "us-central1",
///     });
///
///     var exampleService = new Gcp.ServiceDirectory.Service("example", new()
///     {
///         ServiceId = "example-service",
///         Namespace = example.Id,
///     });
///
///     var exampleEndpoint = new Gcp.ServiceDirectory.Endpoint("example", new()
///     {
///         EndpointId = "example-endpoint",
///         Service = exampleService.Id,
///         Metadata =
///         {
///             { "stage", "prod" },
///             { "region", "us-central1" },
///         },
///         Address = "1.2.3.4",
///         Port = 5353,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicedirectory"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := servicedirectory.NewNamespace(ctx, "example", &servicedirectory.NamespaceArgs{
/// 			NamespaceId: pulumi.String("example-namespace"),
/// 			Location:    pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleService, err := servicedirectory.NewService(ctx, "example", &servicedirectory.ServiceArgs{
/// 			ServiceId: pulumi.String("example-service"),
/// 			Namespace: example.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = servicedirectory.NewEndpoint(ctx, "example", &servicedirectory.EndpointArgs{
/// 			EndpointId: pulumi.String("example-endpoint"),
/// 			Service:    exampleService.ID(),
/// 			Metadata: pulumi.StringMap{
/// 				"stage":  pulumi.String("prod"),
/// 				"region": pulumi.String("us-central1"),
/// 			},
/// 			Address: pulumi.String("1.2.3.4"),
/// 			Port:    pulumi.Int(5353),
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
/// import com.pulumi.gcp.servicedirectory.Namespace;
/// import com.pulumi.gcp.servicedirectory.NamespaceArgs;
/// import com.pulumi.gcp.servicedirectory.Service;
/// import com.pulumi.gcp.servicedirectory.ServiceArgs;
/// import com.pulumi.gcp.servicedirectory.Endpoint;
/// import com.pulumi.gcp.servicedirectory.EndpointArgs;
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
///         var example = new Namespace("example", NamespaceArgs.builder()
///             .namespaceId("example-namespace")
///             .location("us-central1")
///             .build());
///
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .serviceId("example-service")
///             .namespace(example.id())
///             .build());
///
///         var exampleEndpoint = new Endpoint("exampleEndpoint", EndpointArgs.builder()
///             .endpointId("example-endpoint")
///             .service(exampleService.id())
///             .metadata(Map.ofEntries(
///                 Map.entry("stage", "prod"),
///                 Map.entry("region", "us-central1")
///             ))
///             .address("1.2.3.4")
///             .port(5353)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:servicedirectory:Namespace
///     properties:
///       namespaceId: example-namespace
///       location: us-central1
///   exampleService:
///     type: gcp:servicedirectory:Service
///     name: example
///     properties:
///       serviceId: example-service
///       namespace: ${example.id}
///   exampleEndpoint:
///     type: gcp:servicedirectory:Endpoint
///     name: example
///     properties:
///       endpointId: example-endpoint
///       service: ${exampleService.id}
///       metadata:
///         stage: prod
///         region: us-central1
///       address: 1.2.3.4
///       port: 5353
/// ```
///
/// ### Service Directory Endpoint With Network
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const example = new gcp.compute.Network("example", {name: "example-network"});
/// const exampleNamespace = new gcp.servicedirectory.Namespace("example", {
///     namespaceId: "example-namespace",
///     location: "us-central1",
/// });
/// const exampleService = new gcp.servicedirectory.Service("example", {
///     serviceId: "example-service",
///     namespace: exampleNamespace.id,
/// });
/// const exampleEndpoint = new gcp.servicedirectory.Endpoint("example", {
///     endpointId: "example-endpoint",
///     service: exampleService.id,
///     metadata: {
///         stage: "prod",
///         region: "us-central1",
///     },
///     network: pulumi.all([project, example.name]).apply(([project, name]) => `projects/${project.number}/locations/global/networks/${name}`),
///     address: "1.2.3.4",
///     port: 5353,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example = gcp.compute.Network("example", name="example-network")
/// example_namespace = gcp.servicedirectory.Namespace("example",
///     namespace_id="example-namespace",
///     location="us-central1")
/// example_service = gcp.servicedirectory.Service("example",
///     service_id="example-service",
///     namespace=example_namespace.id)
/// example_endpoint = gcp.servicedirectory.Endpoint("example",
///     endpoint_id="example-endpoint",
///     service=example_service.id,
///     metadata={
///         "stage": "prod",
///         "region": "us-central1",
///     },
///     network=example.name.apply(lambda name: f"projects/{project.number}/locations/global/networks/{name}"),
///     address="1.2.3.4",
///     port=5353)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var example = new Gcp.Compute.Network("example", new()
///     {
///         Name = "example-network",
///     });
///
///     var exampleNamespace = new Gcp.ServiceDirectory.Namespace("example", new()
///     {
///         NamespaceId = "example-namespace",
///         Location = "us-central1",
///     });
///
///     var exampleService = new Gcp.ServiceDirectory.Service("example", new()
///     {
///         ServiceId = "example-service",
///         Namespace = exampleNamespace.Id,
///     });
///
///     var exampleEndpoint = new Gcp.ServiceDirectory.Endpoint("example", new()
///     {
///         EndpointId = "example-endpoint",
///         Service = exampleService.Id,
///         Metadata =
///         {
///             { "stage", "prod" },
///             { "region", "us-central1" },
///         },
///         Network = Output.Tuple(project, example.Name).Apply(values =>
///         {
///             var project = values.Item1;
///             var name = values.Item2;
///             return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/global/networks/{name}";
///         }),
///         Address = "1.2.3.4",
///         Port = 5353,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicedirectory"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := compute.NewNetwork(ctx, "example", &compute.NetworkArgs{
/// 			Name: pulumi.String("example-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNamespace, err := servicedirectory.NewNamespace(ctx, "example", &servicedirectory.NamespaceArgs{
/// 			NamespaceId: pulumi.String("example-namespace"),
/// 			Location:    pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleService, err := servicedirectory.NewService(ctx, "example", &servicedirectory.ServiceArgs{
/// 			ServiceId: pulumi.String("example-service"),
/// 			Namespace: exampleNamespace.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = servicedirectory.NewEndpoint(ctx, "example", &servicedirectory.EndpointArgs{
/// 			EndpointId: pulumi.String("example-endpoint"),
/// 			Service:    exampleService.ID(),
/// 			Metadata: pulumi.StringMap{
/// 				"stage":  pulumi.String("prod"),
/// 				"region": pulumi.String("us-central1"),
/// 			},
/// 			Network: example.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("projects/%v/locations/global/networks/%v", project.Number, name), nil
/// 			}).(pulumi.StringOutput),
/// 			Address: pulumi.String("1.2.3.4"),
/// 			Port:    pulumi.Int(5353),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.servicedirectory.Namespace;
/// import com.pulumi.gcp.servicedirectory.NamespaceArgs;
/// import com.pulumi.gcp.servicedirectory.Service;
/// import com.pulumi.gcp.servicedirectory.ServiceArgs;
/// import com.pulumi.gcp.servicedirectory.Endpoint;
/// import com.pulumi.gcp.servicedirectory.EndpointArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var example = new Network("example", NetworkArgs.builder()
///             .name("example-network")
///             .build());
///
///         var exampleNamespace = new Namespace("exampleNamespace", NamespaceArgs.builder()
///             .namespaceId("example-namespace")
///             .location("us-central1")
///             .build());
///
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .serviceId("example-service")
///             .namespace(exampleNamespace.id())
///             .build());
///
///         var exampleEndpoint = new Endpoint("exampleEndpoint", EndpointArgs.builder()
///             .endpointId("example-endpoint")
///             .service(exampleService.id())
///             .metadata(Map.ofEntries(
///                 Map.entry("stage", "prod"),
///                 Map.entry("region", "us-central1")
///             ))
///             .network(example.name().applyValue(_name -> String.format("projects/%s/locations/global/networks/%s", project.number(),_name)))
///             .address("1.2.3.4")
///             .port(5353)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:compute:Network
///     properties:
///       name: example-network
///   exampleNamespace:
///     type: gcp:servicedirectory:Namespace
///     name: example
///     properties:
///       namespaceId: example-namespace
///       location: us-central1
///   exampleService:
///     type: gcp:servicedirectory:Service
///     name: example
///     properties:
///       serviceId: example-service
///       namespace: ${exampleNamespace.id}
///   exampleEndpoint:
///     type: gcp:servicedirectory:Endpoint
///     name: example
///     properties:
///       endpointId: example-endpoint
///       service: ${exampleService.id}
///       metadata:
///         stage: prod
///         region: us-central1
///       network: projects/${project.number}/locations/global/networks/${example.name}
///       address: 1.2.3.4
///       port: 5353
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Endpoint can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/namespaces/{{namespace_id}}/services/{{service_id}}/endpoints/{{endpoint_id}}`
///
/// * `{{project}}/{{location}}/{{namespace_id}}/{{service_id}}/{{endpoint_id}}`
///
/// * `{{location}}/{{namespace_id}}/{{service_id}}/{{endpoint_id}}`
///
/// When using the `pulumi import` command, Endpoint can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:servicedirectory/endpoint:Endpoint default projects/{{project}}/locations/{{location}}/namespaces/{{namespace_id}}/services/{{service_id}}/endpoints/{{endpoint_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:servicedirectory/endpoint:Endpoint default {{project}}/{{location}}/{{namespace_id}}/{{service_id}}/{{endpoint_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:servicedirectory/endpoint:Endpoint default {{location}}/{{namespace_id}}/{{service_id}}/{{endpoint_id}}
/// ```
class Endpoint extends pulumi.CustomResource {
  /// IPv4 or IPv6 address of the endpoint.
  late final pulumi.Output<String?> address;

  /// The Resource ID must be 1-63 characters long, including digits,
  /// lowercase letters or the hyphen character.
  late final pulumi.Output<String> endpointId;

  /// Metadata for the endpoint. This data can be consumed
  /// by service clients. The entire metadata dictionary may contain
  /// up to 512 characters, spread across all key-value pairs.
  /// Metadata that goes beyond any these limits will be rejected.
  late final pulumi.Output<Map<String, String>?> metadata;

  /// The resource name for the endpoint in the format
  /// `projects/*/locations/*/namespaces/*/services/*/endpoints/*`.
  late final pulumi.Output<String> name;

  /// The URL to the network, such as projects/PROJECT_NUMBER/locations/global/networks/NETWORK_NAME.
  late final pulumi.Output<String?> network;

  /// Port that the endpoint is running on, must be in the
  /// range of [0, 65535]. If unspecified, the default is 0.
  late final pulumi.Output<int?> port;

  /// The resource name of the service that this endpoint provides.
  late final pulumi.Output<String> service;

  /// Creates a new [Endpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Endpoint]. {@macro pulumi_servicedirectory_endpoint_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Endpoint(
    String name, {
    EndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:servicedirectory/endpoint:Endpoint',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.address = registerOutput<String?>('address');
    this.endpointId = registerOutput<String>('endpointId');
    this.metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String?>('network');
    this.port = registerOutput<int?>('port');
    this.service = registerOutput<String>('service');
  }
}
