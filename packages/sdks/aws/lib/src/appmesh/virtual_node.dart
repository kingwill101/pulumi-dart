import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_args.dart';
import 'virtual_node_spec.dart';
import 'virtual_node_state.dart';

/// Provides an AWS App Mesh virtual node resource.
///
/// &gt; **Note:** Because of backward incompatible API changes ([see issue](https://github.com/awslabs/aws-app-mesh-examples/issues/92)), resource definitions created with provider versions earlier than v2.3.0 must be modified: rename the `serviceName` attribute of the `dns` object to `hostname`; replace the `backends` attribute of the `spec` object with one or more `backend` configuration blocks, setting `virtualServiceName` to the name of the service. Existing Pulumi state is automatically migrated.
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const serviceb1 = new aws.appmesh.VirtualNode("serviceb1", {
///     spec: {
///         serviceDiscovery: {
///             dns: {
///                 hostname: "serviceb.simpleapp.local",
///             },
///         },
///         backends: [{
///             virtualService: {
///                 virtualServiceName: "servicea.simpleapp.local",
///             },
///         }],
///         listeners: [{
///             portMapping: {
///                 port: 8080,
///                 protocol: "http",
///             },
///         }],
///     },
///     name: "serviceBv1",
///     meshName: simple.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// serviceb1 = aws.appmesh.VirtualNode("serviceb1",
///     spec={
///         "service_discovery": {
///             "dns": {
///                 "hostname": "serviceb.simpleapp.local",
///             },
///         },
///         "backends": [{
///             "virtual_service": {
///                 "virtual_service_name": "servicea.simpleapp.local",
///             },
///         }],
///         "listeners": [{
///             "port_mapping": {
///                 "port": 8080,
///                 "protocol": "http",
///             },
///         }],
///     },
///     name="serviceBv1",
///     mesh_name=simple["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceb1 = new Aws.AppMesh.VirtualNode("serviceb1", new()
///     {
///         Spec = new Aws.AppMesh.Inputs.VirtualNodeSpecArgs
///         {
///             ServiceDiscovery = new Aws.AppMesh.Inputs.VirtualNodeSpecServiceDiscoveryArgs
///             {
///                 Dns = new Aws.AppMesh.Inputs.VirtualNodeSpecServiceDiscoveryDnsArgs
///                 {
///                     Hostname = "serviceb.simpleapp.local",
///                 },
///             },
///             Backends = new[]
///             {
///                 new Aws.AppMesh.Inputs.VirtualNodeSpecBackendArgs
///                 {
///                     VirtualService = new Aws.AppMesh.Inputs.VirtualNodeSpecBackendVirtualServiceArgs
///                     {
///                         VirtualServiceName = "servicea.simpleapp.local",
///                     },
///                 },
///             },
///             Listeners = new[]
///             {
///                 new Aws.AppMesh.Inputs.VirtualNodeSpecListenerArgs
///                 {
///                     PortMapping = new Aws.AppMesh.Inputs.VirtualNodeSpecListenerPortMappingArgs
///                     {
///                         Port = 8080,
///                         Protocol = "http",
///                     },
///                 },
///             },
///         },
///         Name = "serviceBv1",
///         MeshName = simple.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appmesh"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appmesh.NewVirtualNode(ctx, "serviceb1", &appmesh.VirtualNodeArgs{
/// 			Spec: &appmesh.VirtualNodeSpecArgs{
/// 				ServiceDiscovery: &appmesh.VirtualNodeSpecServiceDiscoveryArgs{
/// 					Dns: &appmesh.VirtualNodeSpecServiceDiscoveryDnsArgs{
/// 						Hostname: pulumi.String("serviceb.simpleapp.local"),
/// 					},
/// 				},
/// 				Backends: appmesh.VirtualNodeSpecBackendArray{
/// 					&appmesh.VirtualNodeSpecBackendArgs{
/// 						VirtualService: &appmesh.VirtualNodeSpecBackendVirtualServiceArgs{
/// 							VirtualServiceName: pulumi.String("servicea.simpleapp.local"),
/// 						},
/// 					},
/// 				},
/// 				Listeners: appmesh.VirtualNodeSpecListenerArray{
/// 					&appmesh.VirtualNodeSpecListenerArgs{
/// 						PortMapping: &appmesh.VirtualNodeSpecListenerPortMappingArgs{
/// 							Port:     pulumi.Int(8080),
/// 							Protocol: pulumi.String("http"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Name:     pulumi.String("serviceBv1"),
/// 			MeshName: pulumi.Any(simple.Id),
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
/// resource "aws_appmesh_virtualnode" "serviceb1" {
///   spec = {
///     service_discovery = {
///       dns = {
///         hostname = "serviceb.simpleapp.local"
///       }
///     }
///     backends = [{
///       "virtualService" = {
///         "virtualServiceName" = "servicea.simpleapp.local"
///       }
///     }]
///     listeners = [{
///       "portMapping" = {
///         "port"     = 8080
///         "protocol" = "http"
///       }
///     }]
///   }
///   name      = "serviceBv1"
///   mesh_name = simple.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appmesh.VirtualNode;
/// import com.pulumi.aws.appmesh.VirtualNodeArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecServiceDiscoveryArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecServiceDiscoveryDnsArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecBackendArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecBackendVirtualServiceArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecListenerArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecListenerPortMappingArgs;
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
///         var serviceb1 = new VirtualNode("serviceb1", VirtualNodeArgs.builder()
///             .spec(VirtualNodeSpecArgs.builder()
///                 .serviceDiscovery(VirtualNodeSpecServiceDiscoveryArgs.builder()
///                     .dns(VirtualNodeSpecServiceDiscoveryDnsArgs.builder()
///                         .hostname("serviceb.simpleapp.local")
///                         .build())
///                     .build())
///                 .backends(VirtualNodeSpecBackendArgs.builder()
///                     .virtualService(VirtualNodeSpecBackendVirtualServiceArgs.builder()
///                         .virtualServiceName("servicea.simpleapp.local")
///                         .build())
///                     .build())
///                 .listeners(VirtualNodeSpecListenerArgs.builder()
///                     .portMapping(VirtualNodeSpecListenerPortMappingArgs.builder()
///                         .port(8080)
///                         .protocol("http")
///                         .build())
///                     .build())
///                 .build())
///             .name("serviceBv1")
///             .meshName(simple.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   serviceb1:
///     type: aws:appmesh:VirtualNode
///     properties:
///       spec:
///         serviceDiscovery:
///           dns:
///             hostname: serviceb.simpleapp.local
///         backends:
///           - virtualService:
///               virtualServiceName: servicea.simpleapp.local
///         listeners:
///           - portMapping:
///               port: 8080
///               protocol: http
///       name: serviceBv1
///       meshName: ${simple.id}
/// ```
///
///
/// ### AWS Cloud Map Service Discovery
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.servicediscovery.HttpNamespace("example", {name: "example-ns"});
/// const serviceb1 = new aws.appmesh.VirtualNode("serviceb1", {
///     spec: {
///         serviceDiscovery: {
///             awsCloudMap: {
///                 attributes: {
///                     stack: "blue",
///                 },
///                 serviceName: "serviceb1",
///                 namespaceName: example.name,
///             },
///         },
///         backends: [{
///             virtualService: {
///                 virtualServiceName: "servicea.simpleapp.local",
///             },
///         }],
///         listeners: [{
///             portMapping: {
///                 port: 8080,
///                 protocol: "http",
///             },
///         }],
///     },
///     name: "serviceBv1",
///     meshName: simple.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicediscovery.HttpNamespace("example", name="example-ns")
/// serviceb1 = aws.appmesh.VirtualNode("serviceb1",
///     spec={
///         "service_discovery": {
///             "aws_cloud_map": {
///                 "attributes": {
///                     "stack": "blue",
///                 },
///                 "service_name": "serviceb1",
///                 "namespace_name": example.name,
///             },
///         },
///         "backends": [{
///             "virtual_service": {
///                 "virtual_service_name": "servicea.simpleapp.local",
///             },
///         }],
///         "listeners": [{
///             "port_mapping": {
///                 "port": 8080,
///                 "protocol": "http",
///             },
///         }],
///     },
///     name="serviceBv1",
///     mesh_name=simple["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ServiceDiscovery.HttpNamespace("example", new()
///     {
///         Name = "example-ns",
///     });
///
///     var serviceb1 = new Aws.AppMesh.VirtualNode("serviceb1", new()
///     {
///         Spec = new Aws.AppMesh.Inputs.VirtualNodeSpecArgs
///         {
///             ServiceDiscovery = new Aws.AppMesh.Inputs.VirtualNodeSpecServiceDiscoveryArgs
///             {
///                 AwsCloudMap = new Aws.AppMesh.Inputs.VirtualNodeSpecServiceDiscoveryAwsCloudMapArgs
///                 {
///                     Attributes =
///                     {
///                         { "stack", "blue" },
///                     },
///                     ServiceName = "serviceb1",
///                     NamespaceName = example.Name,
///                 },
///             },
///             Backends = new[]
///             {
///                 new Aws.AppMesh.Inputs.VirtualNodeSpecBackendArgs
///                 {
///                     VirtualService = new Aws.AppMesh.Inputs.VirtualNodeSpecBackendVirtualServiceArgs
///                     {
///                         VirtualServiceName = "servicea.simpleapp.local",
///                     },
///                 },
///             },
///             Listeners = new[]
///             {
///                 new Aws.AppMesh.Inputs.VirtualNodeSpecListenerArgs
///                 {
///                     PortMapping = new Aws.AppMesh.Inputs.VirtualNodeSpecListenerPortMappingArgs
///                     {
///                         Port = 8080,
///                         Protocol = "http",
///                     },
///                 },
///             },
///         },
///         Name = "serviceBv1",
///         MeshName = simple.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appmesh"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicediscovery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := servicediscovery.NewHttpNamespace(ctx, "example", &servicediscovery.HttpNamespaceArgs{
/// 			Name: pulumi.String("example-ns"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appmesh.NewVirtualNode(ctx, "serviceb1", &appmesh.VirtualNodeArgs{
/// 			Spec: &appmesh.VirtualNodeSpecArgs{
/// 				ServiceDiscovery: &appmesh.VirtualNodeSpecServiceDiscoveryArgs{
/// 					AwsCloudMap: &appmesh.VirtualNodeSpecServiceDiscoveryAwsCloudMapArgs{
/// 						Attributes: pulumi.StringMap{
/// 							"stack": pulumi.String("blue"),
/// 						},
/// 						ServiceName:   pulumi.String("serviceb1"),
/// 						NamespaceName: example.Name,
/// 					},
/// 				},
/// 				Backends: appmesh.VirtualNodeSpecBackendArray{
/// 					&appmesh.VirtualNodeSpecBackendArgs{
/// 						VirtualService: &appmesh.VirtualNodeSpecBackendVirtualServiceArgs{
/// 							VirtualServiceName: pulumi.String("servicea.simpleapp.local"),
/// 						},
/// 					},
/// 				},
/// 				Listeners: appmesh.VirtualNodeSpecListenerArray{
/// 					&appmesh.VirtualNodeSpecListenerArgs{
/// 						PortMapping: &appmesh.VirtualNodeSpecListenerPortMappingArgs{
/// 							Port:     pulumi.Int(8080),
/// 							Protocol: pulumi.String("http"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Name:     pulumi.String("serviceBv1"),
/// 			MeshName: pulumi.Any(simple.Id),
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
/// resource "aws_servicediscovery_httpnamespace" "example" {
///   name = "example-ns"
/// }
/// resource "aws_appmesh_virtualnode" "serviceb1" {
///   spec = {
///     service_discovery = {
///       aws_cloud_map = {
///         attributes = {
///           "stack" = "blue"
///         }
///         service_name   = "serviceb1"
///         namespace_name = aws_servicediscovery_httpnamespace.example.name
///       }
///     }
///     backends = [{
///       "virtualService" = {
///         "virtualServiceName" = "servicea.simpleapp.local"
///       }
///     }]
///     listeners = [{
///       "portMapping" = {
///         "port"     = 8080
///         "protocol" = "http"
///       }
///     }]
///   }
///   name      = "serviceBv1"
///   mesh_name = simple.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.servicediscovery.HttpNamespace;
/// import com.pulumi.aws.servicediscovery.HttpNamespaceArgs;
/// import com.pulumi.aws.appmesh.VirtualNode;
/// import com.pulumi.aws.appmesh.VirtualNodeArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecServiceDiscoveryArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecServiceDiscoveryAwsCloudMapArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecBackendArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecBackendVirtualServiceArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecListenerArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecListenerPortMappingArgs;
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
///         var example = new HttpNamespace("example", HttpNamespaceArgs.builder()
///             .name("example-ns")
///             .build());
///
///         var serviceb1 = new VirtualNode("serviceb1", VirtualNodeArgs.builder()
///             .spec(VirtualNodeSpecArgs.builder()
///                 .serviceDiscovery(VirtualNodeSpecServiceDiscoveryArgs.builder()
///                     .awsCloudMap(VirtualNodeSpecServiceDiscoveryAwsCloudMapArgs.builder()
///                         .attributes(Map.of("stack", "blue"))
///                         .serviceName("serviceb1")
///                         .namespaceName(example.name())
///                         .build())
///                     .build())
///                 .backends(VirtualNodeSpecBackendArgs.builder()
///                     .virtualService(VirtualNodeSpecBackendVirtualServiceArgs.builder()
///                         .virtualServiceName("servicea.simpleapp.local")
///                         .build())
///                     .build())
///                 .listeners(VirtualNodeSpecListenerArgs.builder()
///                     .portMapping(VirtualNodeSpecListenerPortMappingArgs.builder()
///                         .port(8080)
///                         .protocol("http")
///                         .build())
///                     .build())
///                 .build())
///             .name("serviceBv1")
///             .meshName(simple.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:servicediscovery:HttpNamespace
///     properties:
///       name: example-ns
///   serviceb1:
///     type: aws:appmesh:VirtualNode
///     properties:
///       spec:
///         serviceDiscovery:
///           awsCloudMap:
///             attributes:
///               stack: blue
///             serviceName: serviceb1
///             namespaceName: ${example.name}
///         backends:
///           - virtualService:
///               virtualServiceName: servicea.simpleapp.local
///         listeners:
///           - portMapping:
///               port: 8080
///               protocol: http
///       name: serviceBv1
///       meshName: ${simple.id}
/// ```
///
///
/// ### Listener Health Check
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const serviceb1 = new aws.appmesh.VirtualNode("serviceb1", {
///     spec: {
///         serviceDiscovery: {
///             dns: {
///                 hostname: "serviceb.simpleapp.local",
///             },
///         },
///         backends: [{
///             virtualService: {
///                 virtualServiceName: "servicea.simpleapp.local",
///             },
///         }],
///         listeners: [{
///             portMapping: {
///                 port: 8080,
///                 protocol: "http",
///             },
///             healthCheck: {
///                 protocol: "http",
///                 path: "/ping",
///                 healthyThreshold: 2,
///                 unhealthyThreshold: 2,
///                 timeoutMillis: 2000,
///                 intervalMillis: 5000,
///             },
///         }],
///     },
///     name: "serviceBv1",
///     meshName: simple.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// serviceb1 = aws.appmesh.VirtualNode("serviceb1",
///     spec={
///         "service_discovery": {
///             "dns": {
///                 "hostname": "serviceb.simpleapp.local",
///             },
///         },
///         "backends": [{
///             "virtual_service": {
///                 "virtual_service_name": "servicea.simpleapp.local",
///             },
///         }],
///         "listeners": [{
///             "port_mapping": {
///                 "port": 8080,
///                 "protocol": "http",
///             },
///             "health_check": {
///                 "protocol": "http",
///                 "path": "/ping",
///                 "healthy_threshold": 2,
///                 "unhealthy_threshold": 2,
///                 "timeout_millis": 2000,
///                 "interval_millis": 5000,
///             },
///         }],
///     },
///     name="serviceBv1",
///     mesh_name=simple["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceb1 = new Aws.AppMesh.VirtualNode("serviceb1", new()
///     {
///         Spec = new Aws.AppMesh.Inputs.VirtualNodeSpecArgs
///         {
///             ServiceDiscovery = new Aws.AppMesh.Inputs.VirtualNodeSpecServiceDiscoveryArgs
///             {
///                 Dns = new Aws.AppMesh.Inputs.VirtualNodeSpecServiceDiscoveryDnsArgs
///                 {
///                     Hostname = "serviceb.simpleapp.local",
///                 },
///             },
///             Backends = new[]
///             {
///                 new Aws.AppMesh.Inputs.VirtualNodeSpecBackendArgs
///                 {
///                     VirtualService = new Aws.AppMesh.Inputs.VirtualNodeSpecBackendVirtualServiceArgs
///                     {
///                         VirtualServiceName = "servicea.simpleapp.local",
///                     },
///                 },
///             },
///             Listeners = new[]
///             {
///                 new Aws.AppMesh.Inputs.VirtualNodeSpecListenerArgs
///                 {
///                     PortMapping = new Aws.AppMesh.Inputs.VirtualNodeSpecListenerPortMappingArgs
///                     {
///                         Port = 8080,
///                         Protocol = "http",
///                     },
///                     HealthCheck = new Aws.AppMesh.Inputs.VirtualNodeSpecListenerHealthCheckArgs
///                     {
///                         Protocol = "http",
///                         Path = "/ping",
///                         HealthyThreshold = 2,
///                         UnhealthyThreshold = 2,
///                         TimeoutMillis = 2000,
///                         IntervalMillis = 5000,
///                     },
///                 },
///             },
///         },
///         Name = "serviceBv1",
///         MeshName = simple.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appmesh"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appmesh.NewVirtualNode(ctx, "serviceb1", &appmesh.VirtualNodeArgs{
/// 			Spec: &appmesh.VirtualNodeSpecArgs{
/// 				ServiceDiscovery: &appmesh.VirtualNodeSpecServiceDiscoveryArgs{
/// 					Dns: &appmesh.VirtualNodeSpecServiceDiscoveryDnsArgs{
/// 						Hostname: pulumi.String("serviceb.simpleapp.local"),
/// 					},
/// 				},
/// 				Backends: appmesh.VirtualNodeSpecBackendArray{
/// 					&appmesh.VirtualNodeSpecBackendArgs{
/// 						VirtualService: &appmesh.VirtualNodeSpecBackendVirtualServiceArgs{
/// 							VirtualServiceName: pulumi.String("servicea.simpleapp.local"),
/// 						},
/// 					},
/// 				},
/// 				Listeners: appmesh.VirtualNodeSpecListenerArray{
/// 					&appmesh.VirtualNodeSpecListenerArgs{
/// 						PortMapping: &appmesh.VirtualNodeSpecListenerPortMappingArgs{
/// 							Port:     pulumi.Int(8080),
/// 							Protocol: pulumi.String("http"),
/// 						},
/// 						HealthCheck: &appmesh.VirtualNodeSpecListenerHealthCheckArgs{
/// 							Protocol:           pulumi.String("http"),
/// 							Path:               pulumi.String("/ping"),
/// 							HealthyThreshold:   pulumi.Int(2),
/// 							UnhealthyThreshold: pulumi.Int(2),
/// 							TimeoutMillis:      pulumi.Int(2000),
/// 							IntervalMillis:     pulumi.Int(5000),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Name:     pulumi.String("serviceBv1"),
/// 			MeshName: pulumi.Any(simple.Id),
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
/// resource "aws_appmesh_virtualnode" "serviceb1" {
///   spec = {
///     service_discovery = {
///       dns = {
///         hostname = "serviceb.simpleapp.local"
///       }
///     }
///     backends = [{
///       "virtualService" = {
///         "virtualServiceName" = "servicea.simpleapp.local"
///       }
///     }]
///     listeners = [{
///       "portMapping" = {
///         "port"     = 8080
///         "protocol" = "http"
///       }
///       "healthCheck" = {
///         "protocol"           = "http"
///         "path"               = "/ping"
///         "healthyThreshold"   = 2
///         "unhealthyThreshold" = 2
///         "timeoutMillis"      = 2000
///         "intervalMillis"     = 5000
///       }
///     }]
///   }
///   name      = "serviceBv1"
///   mesh_name = simple.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appmesh.VirtualNode;
/// import com.pulumi.aws.appmesh.VirtualNodeArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecServiceDiscoveryArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecServiceDiscoveryDnsArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecBackendArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecBackendVirtualServiceArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecListenerArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecListenerPortMappingArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecListenerHealthCheckArgs;
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
///         var serviceb1 = new VirtualNode("serviceb1", VirtualNodeArgs.builder()
///             .spec(VirtualNodeSpecArgs.builder()
///                 .serviceDiscovery(VirtualNodeSpecServiceDiscoveryArgs.builder()
///                     .dns(VirtualNodeSpecServiceDiscoveryDnsArgs.builder()
///                         .hostname("serviceb.simpleapp.local")
///                         .build())
///                     .build())
///                 .backends(VirtualNodeSpecBackendArgs.builder()
///                     .virtualService(VirtualNodeSpecBackendVirtualServiceArgs.builder()
///                         .virtualServiceName("servicea.simpleapp.local")
///                         .build())
///                     .build())
///                 .listeners(VirtualNodeSpecListenerArgs.builder()
///                     .portMapping(VirtualNodeSpecListenerPortMappingArgs.builder()
///                         .port(8080)
///                         .protocol("http")
///                         .build())
///                     .healthCheck(VirtualNodeSpecListenerHealthCheckArgs.builder()
///                         .protocol("http")
///                         .path("/ping")
///                         .healthyThreshold(2)
///                         .unhealthyThreshold(2)
///                         .timeoutMillis(2000)
///                         .intervalMillis(5000)
///                         .build())
///                     .build())
///                 .build())
///             .name("serviceBv1")
///             .meshName(simple.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   serviceb1:
///     type: aws:appmesh:VirtualNode
///     properties:
///       spec:
///         serviceDiscovery:
///           dns:
///             hostname: serviceb.simpleapp.local
///         backends:
///           - virtualService:
///               virtualServiceName: servicea.simpleapp.local
///         listeners:
///           - portMapping:
///               port: 8080
///               protocol: http
///             healthCheck:
///               protocol: http
///               path: /ping
///               healthyThreshold: 2
///               unhealthyThreshold: 2
///               timeoutMillis: 2000
///               intervalMillis: 5000
///       name: serviceBv1
///       meshName: ${simple.id}
/// ```
///
///
/// ### Logging
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const serviceb1 = new aws.appmesh.VirtualNode("serviceb1", {
///     spec: {
///         serviceDiscovery: {
///             dns: {
///                 hostname: "serviceb.simpleapp.local",
///             },
///         },
///         logging: {
///             accessLog: {
///                 file: {
///                     path: "/dev/stdout",
///                 },
///             },
///         },
///         backends: [{
///             virtualService: {
///                 virtualServiceName: "servicea.simpleapp.local",
///             },
///         }],
///         listeners: [{
///             portMapping: {
///                 port: 8080,
///                 protocol: "http",
///             },
///         }],
///     },
///     name: "serviceBv1",
///     meshName: simple.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// serviceb1 = aws.appmesh.VirtualNode("serviceb1",
///     spec={
///         "service_discovery": {
///             "dns": {
///                 "hostname": "serviceb.simpleapp.local",
///             },
///         },
///         "logging": {
///             "access_log": {
///                 "file": {
///                     "path": "/dev/stdout",
///                 },
///             },
///         },
///         "backends": [{
///             "virtual_service": {
///                 "virtual_service_name": "servicea.simpleapp.local",
///             },
///         }],
///         "listeners": [{
///             "port_mapping": {
///                 "port": 8080,
///                 "protocol": "http",
///             },
///         }],
///     },
///     name="serviceBv1",
///     mesh_name=simple["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceb1 = new Aws.AppMesh.VirtualNode("serviceb1", new()
///     {
///         Spec = new Aws.AppMesh.Inputs.VirtualNodeSpecArgs
///         {
///             ServiceDiscovery = new Aws.AppMesh.Inputs.VirtualNodeSpecServiceDiscoveryArgs
///             {
///                 Dns = new Aws.AppMesh.Inputs.VirtualNodeSpecServiceDiscoveryDnsArgs
///                 {
///                     Hostname = "serviceb.simpleapp.local",
///                 },
///             },
///             Logging = new Aws.AppMesh.Inputs.VirtualNodeSpecLoggingArgs
///             {
///                 AccessLog = new Aws.AppMesh.Inputs.VirtualNodeSpecLoggingAccessLogArgs
///                 {
///                     File = new Aws.AppMesh.Inputs.VirtualNodeSpecLoggingAccessLogFileArgs
///                     {
///                         Path = "/dev/stdout",
///                     },
///                 },
///             },
///             Backends = new[]
///             {
///                 new Aws.AppMesh.Inputs.VirtualNodeSpecBackendArgs
///                 {
///                     VirtualService = new Aws.AppMesh.Inputs.VirtualNodeSpecBackendVirtualServiceArgs
///                     {
///                         VirtualServiceName = "servicea.simpleapp.local",
///                     },
///                 },
///             },
///             Listeners = new[]
///             {
///                 new Aws.AppMesh.Inputs.VirtualNodeSpecListenerArgs
///                 {
///                     PortMapping = new Aws.AppMesh.Inputs.VirtualNodeSpecListenerPortMappingArgs
///                     {
///                         Port = 8080,
///                         Protocol = "http",
///                     },
///                 },
///             },
///         },
///         Name = "serviceBv1",
///         MeshName = simple.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appmesh"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appmesh.NewVirtualNode(ctx, "serviceb1", &appmesh.VirtualNodeArgs{
/// 			Spec: &appmesh.VirtualNodeSpecArgs{
/// 				ServiceDiscovery: &appmesh.VirtualNodeSpecServiceDiscoveryArgs{
/// 					Dns: &appmesh.VirtualNodeSpecServiceDiscoveryDnsArgs{
/// 						Hostname: pulumi.String("serviceb.simpleapp.local"),
/// 					},
/// 				},
/// 				Logging: &appmesh.VirtualNodeSpecLoggingArgs{
/// 					AccessLog: &appmesh.VirtualNodeSpecLoggingAccessLogArgs{
/// 						File: &appmesh.VirtualNodeSpecLoggingAccessLogFileArgs{
/// 							Path: pulumi.String("/dev/stdout"),
/// 						},
/// 					},
/// 				},
/// 				Backends: appmesh.VirtualNodeSpecBackendArray{
/// 					&appmesh.VirtualNodeSpecBackendArgs{
/// 						VirtualService: &appmesh.VirtualNodeSpecBackendVirtualServiceArgs{
/// 							VirtualServiceName: pulumi.String("servicea.simpleapp.local"),
/// 						},
/// 					},
/// 				},
/// 				Listeners: appmesh.VirtualNodeSpecListenerArray{
/// 					&appmesh.VirtualNodeSpecListenerArgs{
/// 						PortMapping: &appmesh.VirtualNodeSpecListenerPortMappingArgs{
/// 							Port:     pulumi.Int(8080),
/// 							Protocol: pulumi.String("http"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Name:     pulumi.String("serviceBv1"),
/// 			MeshName: pulumi.Any(simple.Id),
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
/// resource "aws_appmesh_virtualnode" "serviceb1" {
///   spec = {
///     service_discovery = {
///       dns = {
///         hostname = "serviceb.simpleapp.local"
///       }
///     }
///     logging = {
///       access_log = {
///         file = {
///           path = "/dev/stdout"
///         }
///       }
///     }
///     backends = [{
///       "virtualService" = {
///         "virtualServiceName" = "servicea.simpleapp.local"
///       }
///     }]
///     listeners = [{
///       "portMapping" = {
///         "port"     = 8080
///         "protocol" = "http"
///       }
///     }]
///   }
///   name      = "serviceBv1"
///   mesh_name = simple.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appmesh.VirtualNode;
/// import com.pulumi.aws.appmesh.VirtualNodeArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecServiceDiscoveryArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecServiceDiscoveryDnsArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecLoggingArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecLoggingAccessLogArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecLoggingAccessLogFileArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecBackendArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecBackendVirtualServiceArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecListenerArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecListenerPortMappingArgs;
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
///         var serviceb1 = new VirtualNode("serviceb1", VirtualNodeArgs.builder()
///             .spec(VirtualNodeSpecArgs.builder()
///                 .serviceDiscovery(VirtualNodeSpecServiceDiscoveryArgs.builder()
///                     .dns(VirtualNodeSpecServiceDiscoveryDnsArgs.builder()
///                         .hostname("serviceb.simpleapp.local")
///                         .build())
///                     .build())
///                 .logging(VirtualNodeSpecLoggingArgs.builder()
///                     .accessLog(VirtualNodeSpecLoggingAccessLogArgs.builder()
///                         .file(VirtualNodeSpecLoggingAccessLogFileArgs.builder()
///                             .path("/dev/stdout")
///                             .build())
///                         .build())
///                     .build())
///                 .backends(VirtualNodeSpecBackendArgs.builder()
///                     .virtualService(VirtualNodeSpecBackendVirtualServiceArgs.builder()
///                         .virtualServiceName("servicea.simpleapp.local")
///                         .build())
///                     .build())
///                 .listeners(VirtualNodeSpecListenerArgs.builder()
///                     .portMapping(VirtualNodeSpecListenerPortMappingArgs.builder()
///                         .port(8080)
///                         .protocol("http")
///                         .build())
///                     .build())
///                 .build())
///             .name("serviceBv1")
///             .meshName(simple.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   serviceb1:
///     type: aws:appmesh:VirtualNode
///     properties:
///       spec:
///         serviceDiscovery:
///           dns:
///             hostname: serviceb.simpleapp.local
///         logging:
///           accessLog:
///             file:
///               path: /dev/stdout
///         backends:
///           - virtualService:
///               virtualServiceName: servicea.simpleapp.local
///         listeners:
///           - portMapping:
///               port: 8080
///               protocol: http
///       name: serviceBv1
///       meshName: ${simple.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import App Mesh virtual nodes using `meshName` together with the virtual node's `name`. For example:
///
/// ```sh
/// $ pulumi import aws:appmesh/virtualNode:VirtualNode serviceb1 simpleapp/serviceBv1
/// ```
class VirtualNode extends pulumi.CustomResource {
  /// ARN of the virtual node.
  late final pulumi.Output<String> arn;
  /// Creation date of the virtual node.
  late final pulumi.Output<String> createdDate;
  /// Last update date of the virtual node.
  late final pulumi.Output<String> lastUpdatedDate;
  /// Name of the service mesh in which to create the virtual node. Must be between 1 and 255 characters in length.
  late final pulumi.Output<String> meshName;
  /// AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to.
  late final pulumi.Output<String> meshOwner;
  /// Name to use for the virtual node. Must be between 1 and 255 characters in length.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Resource owner's AWS account ID.
  late final pulumi.Output<String> resourceOwner;
  /// Virtual node specification to apply. See `spec` Block for details.
  late final pulumi.Output<VirtualNodeSpec> spec;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [VirtualNode].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualNode]. {@macro pulumi_appmesh_virtual_node_virtual_node_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualNode(
    String name, {
    VirtualNodeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appmesh/virtualNode:VirtualNode',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    createdDate = registerOutput<String>('createdDate');
    lastUpdatedDate = registerOutput<String>('lastUpdatedDate');
    meshName = registerOutput<String>('meshName');
    meshOwner = registerOutput<String>('meshOwner');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    resourceOwner = registerOutput<String>('resourceOwner');
    spec = registerOutput<VirtualNodeSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNodeSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [VirtualNode] resource's state with the given [name] and [id].
  static VirtualNode get(
    String name,
    pulumi.Input<String> id, {
    VirtualNodeState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return VirtualNode._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  VirtualNode._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appmesh/virtualNode:VirtualNode',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    createdDate = registerOutput<String>('createdDate');
    lastUpdatedDate = registerOutput<String>('lastUpdatedDate');
    meshName = registerOutput<String>('meshName');
    meshOwner = registerOutput<String>('meshOwner');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    resourceOwner = registerOutput<String>('resourceOwner');
    spec = registerOutput<VirtualNodeSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNodeSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [VirtualNode] resource.
  VirtualNode.reference(String urn)
    : super(
        'aws:appmesh/virtualNode:VirtualNode',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    createdDate = registerOutput<String>('createdDate');
    lastUpdatedDate = registerOutput<String>('lastUpdatedDate');
    meshName = registerOutput<String>('meshName');
    meshOwner = registerOutput<String>('meshOwner');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    resourceOwner = registerOutput<String>('resourceOwner');
    spec = registerOutput<VirtualNodeSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNodeSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
