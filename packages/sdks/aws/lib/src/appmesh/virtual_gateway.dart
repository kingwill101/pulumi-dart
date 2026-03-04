import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_gateway_args.dart';
import 'virtual_gateway_spec.dart';
import 'virtual_gateway_state.dart';

/// Provides an AWS App Mesh virtual gateway resource.
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
/// const example = new aws.appmesh.VirtualGateway("example", {
///     name: "example-virtual-gateway",
///     meshName: "example-service-mesh",
///     spec: {
///         listeners: [{
///             portMapping: {
///                 port: 8080,
///                 protocol: "http",
///             },
///         }],
///     },
///     tags: {
///         Environment: "test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appmesh.VirtualGateway("example",
///     name="example-virtual-gateway",
///     mesh_name="example-service-mesh",
///     spec={
///         "listeners": [{
///             "port_mapping": {
///                 "port": 8080,
///                 "protocol": "http",
///             },
///         }],
///     },
///     tags={
///         "Environment": "test",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AppMesh.VirtualGateway("example", new()
///     {
///         Name = "example-virtual-gateway",
///         MeshName = "example-service-mesh",
///         Spec = new Aws.AppMesh.Inputs.VirtualGatewaySpecArgs
///         {
///             Listeners = new[]
///             {
///                 new Aws.AppMesh.Inputs.VirtualGatewaySpecListenerArgs
///                 {
///                     PortMapping = new Aws.AppMesh.Inputs.VirtualGatewaySpecListenerPortMappingArgs
///                     {
///                         Port = 8080,
///                         Protocol = "http",
///                     },
///                 },
///             },
///         },
///         Tags =
///         {
///             { "Environment", "test" },
///         },
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
/// 		_, err := appmesh.NewVirtualGateway(ctx, "example", &appmesh.VirtualGatewayArgs{
/// 			Name:     pulumi.String("example-virtual-gateway"),
/// 			MeshName: pulumi.String("example-service-mesh"),
/// 			Spec: &appmesh.VirtualGatewaySpecArgs{
/// 				Listeners: appmesh.VirtualGatewaySpecListenerArray{
/// 					&appmesh.VirtualGatewaySpecListenerArgs{
/// 						PortMapping: &appmesh.VirtualGatewaySpecListenerPortMappingArgs{
/// 							Port:     pulumi.Int(8080),
/// 							Protocol: pulumi.String("http"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("test"),
/// 			},
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
/// import com.pulumi.aws.appmesh.VirtualGateway;
/// import com.pulumi.aws.appmesh.VirtualGatewayArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualGatewaySpecArgs;
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
///         var example = new VirtualGateway("example", VirtualGatewayArgs.builder()
///             .name("example-virtual-gateway")
///             .meshName("example-service-mesh")
///             .spec(VirtualGatewaySpecArgs.builder()
///                 .listeners(VirtualGatewaySpecListenerArgs.builder()
///                     .portMapping(VirtualGatewaySpecListenerPortMappingArgs.builder()
///                         .port(8080)
///                         .protocol("http")
///                         .build())
///                     .build())
///                 .build())
///             .tags(Map.of("Environment", "test"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:appmesh:VirtualGateway
///     properties:
///       name: example-virtual-gateway
///       meshName: example-service-mesh
///       spec:
///         listeners:
///           - portMapping:
///               port: 8080
///               protocol: http
///       tags:
///         Environment: test
/// ```
///
///
/// ### Access Logs and TLS
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appmesh.VirtualGateway("example", {
///     name: "example-virtual-gateway",
///     meshName: "example-service-mesh",
///     spec: {
///         listeners: [{
///             portMapping: {
///                 port: 8080,
///                 protocol: "http",
///             },
///             tls: {
///                 certificate: {
///                     acm: {
///                         certificateArn: exampleAwsAcmCertificate.arn,
///                     },
///                 },
///                 mode: "STRICT",
///             },
///         }],
///         logging: {
///             accessLog: {
///                 file: {
///                     path: "/var/log/access.log",
///                 },
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appmesh.VirtualGateway("example",
///     name="example-virtual-gateway",
///     mesh_name="example-service-mesh",
///     spec={
///         "listeners": [{
///             "port_mapping": {
///                 "port": 8080,
///                 "protocol": "http",
///             },
///             "tls": {
///                 "certificate": {
///                     "acm": {
///                         "certificate_arn": example_aws_acm_certificate["arn"],
///                     },
///                 },
///                 "mode": "STRICT",
///             },
///         }],
///         "logging": {
///             "access_log": {
///                 "file": {
///                     "path": "/var/log/access.log",
///                 },
///             },
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AppMesh.VirtualGateway("example", new()
///     {
///         Name = "example-virtual-gateway",
///         MeshName = "example-service-mesh",
///         Spec = new Aws.AppMesh.Inputs.VirtualGatewaySpecArgs
///         {
///             Listeners = new[]
///             {
///                 new Aws.AppMesh.Inputs.VirtualGatewaySpecListenerArgs
///                 {
///                     PortMapping = new Aws.AppMesh.Inputs.VirtualGatewaySpecListenerPortMappingArgs
///                     {
///                         Port = 8080,
///                         Protocol = "http",
///                     },
///                     Tls = new Aws.AppMesh.Inputs.VirtualGatewaySpecListenerTlsArgs
///                     {
///                         Certificate = new Aws.AppMesh.Inputs.VirtualGatewaySpecListenerTlsCertificateArgs
///                         {
///                             Acm = new Aws.AppMesh.Inputs.VirtualGatewaySpecListenerTlsCertificateAcmArgs
///                             {
///                                 CertificateArn = exampleAwsAcmCertificate.Arn,
///                             },
///                         },
///                         Mode = "STRICT",
///                     },
///                 },
///             },
///             Logging = new Aws.AppMesh.Inputs.VirtualGatewaySpecLoggingArgs
///             {
///                 AccessLog = new Aws.AppMesh.Inputs.VirtualGatewaySpecLoggingAccessLogArgs
///                 {
///                     File = new Aws.AppMesh.Inputs.VirtualGatewaySpecLoggingAccessLogFileArgs
///                     {
///                         Path = "/var/log/access.log",
///                     },
///                 },
///             },
///         },
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
/// 		_, err := appmesh.NewVirtualGateway(ctx, "example", &appmesh.VirtualGatewayArgs{
/// 			Name:     pulumi.String("example-virtual-gateway"),
/// 			MeshName: pulumi.String("example-service-mesh"),
/// 			Spec: &appmesh.VirtualGatewaySpecArgs{
/// 				Listeners: appmesh.VirtualGatewaySpecListenerArray{
/// 					&appmesh.VirtualGatewaySpecListenerArgs{
/// 						PortMapping: &appmesh.VirtualGatewaySpecListenerPortMappingArgs{
/// 							Port:     pulumi.Int(8080),
/// 							Protocol: pulumi.String("http"),
/// 						},
/// 						Tls: &appmesh.VirtualGatewaySpecListenerTlsArgs{
/// 							Certificate: &appmesh.VirtualGatewaySpecListenerTlsCertificateArgs{
/// 								Acm: &appmesh.VirtualGatewaySpecListenerTlsCertificateAcmArgs{
/// 									CertificateArn: pulumi.Any(exampleAwsAcmCertificate.Arn),
/// 								},
/// 							},
/// 							Mode: pulumi.String("STRICT"),
/// 						},
/// 					},
/// 				},
/// 				Logging: &appmesh.VirtualGatewaySpecLoggingArgs{
/// 					AccessLog: &appmesh.VirtualGatewaySpecLoggingAccessLogArgs{
/// 						File: &appmesh.VirtualGatewaySpecLoggingAccessLogFileArgs{
/// 							Path: pulumi.String("/var/log/access.log"),
/// 						},
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.aws.appmesh.VirtualGateway;
/// import com.pulumi.aws.appmesh.VirtualGatewayArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualGatewaySpecArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualGatewaySpecLoggingArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualGatewaySpecLoggingAccessLogArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualGatewaySpecLoggingAccessLogFileArgs;
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
///         var example = new VirtualGateway("example", VirtualGatewayArgs.builder()
///             .name("example-virtual-gateway")
///             .meshName("example-service-mesh")
///             .spec(VirtualGatewaySpecArgs.builder()
///                 .listeners(VirtualGatewaySpecListenerArgs.builder()
///                     .portMapping(VirtualGatewaySpecListenerPortMappingArgs.builder()
///                         .port(8080)
///                         .protocol("http")
///                         .build())
///                     .tls(VirtualGatewaySpecListenerTlsArgs.builder()
///                         .certificate(VirtualGatewaySpecListenerTlsCertificateArgs.builder()
///                             .acm(VirtualGatewaySpecListenerTlsCertificateAcmArgs.builder()
///                                 .certificateArn(exampleAwsAcmCertificate.arn())
///                                 .build())
///                             .build())
///                         .mode("STRICT")
///                         .build())
///                     .build())
///                 .logging(VirtualGatewaySpecLoggingArgs.builder()
///                     .accessLog(VirtualGatewaySpecLoggingAccessLogArgs.builder()
///                         .file(VirtualGatewaySpecLoggingAccessLogFileArgs.builder()
///                             .path("/var/log/access.log")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:appmesh:VirtualGateway
///     properties:
///       name: example-virtual-gateway
///       meshName: example-service-mesh
///       spec:
///         listeners:
///           - portMapping:
///               port: 8080
///               protocol: http
///             tls:
///               certificate:
///                 acm:
///                   certificateArn: ${exampleAwsAcmCertificate.arn}
///               mode: STRICT
///         logging:
///           accessLog:
///             file:
///               path: /var/log/access.log
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import App Mesh virtual gateway using `mesh_name` together with the virtual gateway's `name`. For example:
///
/// ```sh
/// $ pulumi import aws:appmesh/virtualGateway:VirtualGateway example mesh/gw1
/// ```
class VirtualGateway extends pulumi.CustomResource {
  /// ARN of the virtual gateway.
  late final pulumi.Output<String> arn;

  /// Creation date of the virtual gateway.
  late final pulumi.Output<String> createdDate;

  /// Last update date of the virtual gateway.
  late final pulumi.Output<String> lastUpdatedDate;

  /// Name of the service mesh in which to create the virtual gateway. Must be between 1 and 255 characters in length.
  late final pulumi.Output<String> meshName;

  /// AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to.
  late final pulumi.Output<String> meshOwner;

  /// Name to use for the virtual gateway. Must be between 1 and 255 characters in length.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Resource owner's AWS account ID.
  late final pulumi.Output<String> resourceOwner;

  /// Virtual gateway specification to apply.
  late final pulumi.Output<VirtualGatewaySpec> spec;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [VirtualGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualGateway]. {@macro pulumi_appmesh_virtual_gateway_virtual_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualGateway(
    String name, {
    VirtualGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:appmesh/virtualGateway:VirtualGateway',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
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
    spec = registerOutput<VirtualGatewaySpec>('spec');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [VirtualGateway] resource's state with the given [name] and [id].
  static VirtualGateway get(
    String name,
    pulumi.Input<String> id, {
    VirtualGatewayState? state,
  }) {
    return VirtualGateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VirtualGateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:appmesh/virtualGateway:VirtualGateway',
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
    spec = registerOutput<VirtualGatewaySpec>('spec');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
