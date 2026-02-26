import 'package:pulumi/pulumi.dart';
import 'authz_extension_args.dart';

/// AuthzExtension is a resource that allows traffic forwarding to a callout backend service to make an authorization decision.
///
///
/// To get more information about AuthzExtension, see:
///
/// * [API documentation](https://cloud.google.com/service-extensions/docs/reference/rest/v1beta1/projects.locations.authzExtensions)
///
/// ## Example Usage
///
/// ### Network Services Authz Extension Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.RegionBackendService("default", {
/// name: "authz-service",
/// project: "my-project-name",
/// region: "us-west1",
/// protocol: "HTTP2",
/// loadBalancingScheme: "INTERNAL_MANAGED",
/// portName: "grpc",
/// });
/// const defaultAuthzExtension = new gcp.networkservices.AuthzExtension("default", {
/// name: "my-authz-ext",
/// project: "my-project-name",
/// location: "us-west1",
/// description: "my description",
/// loadBalancingScheme: "INTERNAL_MANAGED",
/// authority: "ext11.com",
/// service: _default.selfLink,
/// timeout: "0.1s",
/// failOpen: false,
/// forwardHeaders: ["Authorization"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.RegionBackendService("default",
/// name="authz-service",
/// project="my-project-name",
/// region="us-west1",
/// protocol="HTTP2",
/// load_balancing_scheme="INTERNAL_MANAGED",
/// port_name="grpc")
/// default_authz_extension = gcp.networkservices.AuthzExtension("default",
/// name="my-authz-ext",
/// project="my-project-name",
/// location="us-west1",
/// description="my description",
/// load_balancing_scheme="INTERNAL_MANAGED",
/// authority="ext11.com",
/// service=default.self_link,
/// timeout="0.1s",
/// fail_open=False,
/// forward_headers=["Authorization"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.Compute.RegionBackendService("default", new()
/// {
/// Name = "authz-service",
/// Project = "my-project-name",
/// Region = "us-west1",
/// Protocol = "HTTP2",
/// LoadBalancingScheme = "INTERNAL_MANAGED",
/// PortName = "grpc",
/// });
///
/// var defaultAuthzExtension = new Gcp.NetworkServices.AuthzExtension("default", new()
/// {
/// Name = "my-authz-ext",
/// Project = "my-project-name",
/// Location = "us-west1",
/// Description = "my description",
/// LoadBalancingScheme = "INTERNAL_MANAGED",
/// Authority = "ext11.com",
/// Service = @default.SelfLink,
/// Timeout = "0.1s",
/// FailOpen = false,
/// ForwardHeaders = new[]
/// {
/// "Authorization",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// Name:                pulumi.String("authz-service"),
/// Project:             pulumi.String("my-project-name"),
/// Region:              pulumi.String("us-west1"),
/// Protocol:            pulumi.String("HTTP2"),
/// LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// PortName:            pulumi.String("grpc"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = networkservices.NewAuthzExtension(ctx, "default", &networkservices.AuthzExtensionArgs{
/// Name:                pulumi.String("my-authz-ext"),
/// Project:             pulumi.String("my-project-name"),
/// Location:            pulumi.String("us-west1"),
/// Description:         pulumi.String("my description"),
/// LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// Authority:           pulumi.String("ext11.com"),
/// Service:             _default.SelfLink,
/// Timeout:             pulumi.String("0.1s"),
/// FailOpen:            pulumi.Bool(false),
/// ForwardHeaders: pulumi.StringArray{
/// pulumi.String("Authorization"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.networkservices.AuthzExtension;
/// import com.pulumi.gcp.networkservices.AuthzExtensionArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var default_ = new RegionBackendService("default", RegionBackendServiceArgs.builder()
/// .name("authz-service")
/// .project("my-project-name")
/// .region("us-west1")
/// .protocol("HTTP2")
/// .loadBalancingScheme("INTERNAL_MANAGED")
/// .portName("grpc")
/// .build());
///
/// var defaultAuthzExtension = new AuthzExtension("defaultAuthzExtension", AuthzExtensionArgs.builder()
/// .name("my-authz-ext")
/// .project("my-project-name")
/// .location("us-west1")
/// .description("my description")
/// .loadBalancingScheme("INTERNAL_MANAGED")
/// .authority("ext11.com")
/// .service(default_.selfLink())
/// .timeout("0.1s")
/// .failOpen(false)
/// .forwardHeaders("Authorization")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:compute:RegionBackendService
/// properties:
/// name: authz-service
/// project: my-project-name
/// region: us-west1
/// protocol: HTTP2
/// loadBalancingScheme: INTERNAL_MANAGED
/// portName: grpc
/// defaultAuthzExtension:
/// type: gcp:networkservices:AuthzExtension
/// name: default
/// properties:
/// name: my-authz-ext
/// project: my-project-name
/// location: us-west1
/// description: my description
/// loadBalancingScheme: INTERNAL_MANAGED
/// authority: ext11.com
/// service: ${default.selfLink}
/// timeout: 0.1s
/// failOpen: false
/// forwardHeaders:
/// - Authorization
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Network Services Authz Extension Basic With Auth Grpc
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.RegionBackendService("default", {
/// name: "authz-service-grpc",
/// project: "my-project-name",
/// region: "us-west1",
/// protocol: "HTTP2",
/// loadBalancingScheme: "INTERNAL_MANAGED",
/// portName: "grpc",
/// });
/// const defaultAuthzExtension = new gcp.networkservices.AuthzExtension("default", {
/// name: "my-authz-ext-with-grpc",
/// project: "my-project-name",
/// location: "us-west1",
/// description: "my description",
/// loadBalancingScheme: "INTERNAL_MANAGED",
/// wireFormat: "EXT_AUTHZ_GRPC",
/// authority: "ext11.com",
/// service: _default.selfLink,
/// timeout: "0.1s",
/// failOpen: false,
/// forwardHeaders: ["Authorization"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.RegionBackendService("default",
/// name="authz-service-grpc",
/// project="my-project-name",
/// region="us-west1",
/// protocol="HTTP2",
/// load_balancing_scheme="INTERNAL_MANAGED",
/// port_name="grpc")
/// default_authz_extension = gcp.networkservices.AuthzExtension("default",
/// name="my-authz-ext-with-grpc",
/// project="my-project-name",
/// location="us-west1",
/// description="my description",
/// load_balancing_scheme="INTERNAL_MANAGED",
/// wire_format="EXT_AUTHZ_GRPC",
/// authority="ext11.com",
/// service=default.self_link,
/// timeout="0.1s",
/// fail_open=False,
/// forward_headers=["Authorization"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.Compute.RegionBackendService("default", new()
/// {
/// Name = "authz-service-grpc",
/// Project = "my-project-name",
/// Region = "us-west1",
/// Protocol = "HTTP2",
/// LoadBalancingScheme = "INTERNAL_MANAGED",
/// PortName = "grpc",
/// });
///
/// var defaultAuthzExtension = new Gcp.NetworkServices.AuthzExtension("default", new()
/// {
/// Name = "my-authz-ext-with-grpc",
/// Project = "my-project-name",
/// Location = "us-west1",
/// Description = "my description",
/// LoadBalancingScheme = "INTERNAL_MANAGED",
/// WireFormat = "EXT_AUTHZ_GRPC",
/// Authority = "ext11.com",
/// Service = @default.SelfLink,
/// Timeout = "0.1s",
/// FailOpen = false,
/// ForwardHeaders = new[]
/// {
/// "Authorization",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// Name:                pulumi.String("authz-service-grpc"),
/// Project:             pulumi.String("my-project-name"),
/// Region:              pulumi.String("us-west1"),
/// Protocol:            pulumi.String("HTTP2"),
/// LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// PortName:            pulumi.String("grpc"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = networkservices.NewAuthzExtension(ctx, "default", &networkservices.AuthzExtensionArgs{
/// Name:                pulumi.String("my-authz-ext-with-grpc"),
/// Project:             pulumi.String("my-project-name"),
/// Location:            pulumi.String("us-west1"),
/// Description:         pulumi.String("my description"),
/// LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// WireFormat:          pulumi.String("EXT_AUTHZ_GRPC"),
/// Authority:           pulumi.String("ext11.com"),
/// Service:             _default.SelfLink,
/// Timeout:             pulumi.String("0.1s"),
/// FailOpen:            pulumi.Bool(false),
/// ForwardHeaders: pulumi.StringArray{
/// pulumi.String("Authorization"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.networkservices.AuthzExtension;
/// import com.pulumi.gcp.networkservices.AuthzExtensionArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var default_ = new RegionBackendService("default", RegionBackendServiceArgs.builder()
/// .name("authz-service-grpc")
/// .project("my-project-name")
/// .region("us-west1")
/// .protocol("HTTP2")
/// .loadBalancingScheme("INTERNAL_MANAGED")
/// .portName("grpc")
/// .build());
///
/// var defaultAuthzExtension = new AuthzExtension("defaultAuthzExtension", AuthzExtensionArgs.builder()
/// .name("my-authz-ext-with-grpc")
/// .project("my-project-name")
/// .location("us-west1")
/// .description("my description")
/// .loadBalancingScheme("INTERNAL_MANAGED")
/// .wireFormat("EXT_AUTHZ_GRPC")
/// .authority("ext11.com")
/// .service(default_.selfLink())
/// .timeout("0.1s")
/// .failOpen(false)
/// .forwardHeaders("Authorization")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:compute:RegionBackendService
/// properties:
/// name: authz-service-grpc
/// project: my-project-name
/// region: us-west1
/// protocol: HTTP2
/// loadBalancingScheme: INTERNAL_MANAGED
/// portName: grpc
/// defaultAuthzExtension:
/// type: gcp:networkservices:AuthzExtension
/// name: default
/// properties:
/// name: my-authz-ext-with-grpc
/// project: my-project-name
/// location: us-west1
/// description: my description
/// loadBalancingScheme: INTERNAL_MANAGED
/// wireFormat: EXT_AUTHZ_GRPC
/// authority: ext11.com
/// service: ${default.selfLink}
/// timeout: 0.1s
/// failOpen: false
/// forwardHeaders:
/// - Authorization
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// AuthzExtension can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/authzExtensions/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, AuthzExtension can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/authzExtension:AuthzExtension default projects/{{project}}/locations/{{location}}/authzExtensions/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/authzExtension:AuthzExtension default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/authzExtension:AuthzExtension default {{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/authzExtension:AuthzExtension default {{name}}
/// ```
class AuthzExtension extends CustomResource {
  /// The :authority header in the gRPC request sent from Envoy to the extension service.
  late final Output<String> authority;

  /// The timestamp when the resource was created.
  late final Output<String> createTime;

  /// A human-readable description of the resource.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Determines how the proxy behaves if the call to the extension fails or times out.
  /// When set to TRUE, request or response processing continues without error. Any subsequent extensions in the extension chain are also executed. When set to FALSE or the default setting of FALSE is used, one of the following happens:
  /// * If response headers have not been delivered to the downstream client, a generic 500 error is returned to the client. The error response can be tailored by configuring a custom error response in the load balancer.
  /// * If response headers have been delivered, then the HTTP stream to the downstream client is reset.
  late final Output<bool> failOpen;

  /// List of the HTTP headers to forward to the extension (from the client). If omitted, all headers are sent. Each element is a string indicating the header name.
  late final Output<List<String>?> forwardHeaders;

  /// Set of labels associated with the AuthzExtension resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// All backend services and forwarding rules referenced by this extension must share the same load balancing scheme.
  /// For more information, refer to [Backend services overview](https://cloud.google.com/load-balancing/docs/backend-service).
  /// Possible values are: `INTERNAL_MANAGED`, `EXTERNAL_MANAGED`.
  late final Output<String> loadBalancingScheme;

  /// The location of the resource.
  late final Output<String> location;

  /// The metadata provided here is included as part of the<span pulumi-lang-nodejs=" metadataContext " pulumi-lang-dotnet=" MetadataContext " pulumi-lang-go=" metadataContext " pulumi-lang-python=" metadata_context " pulumi-lang-yaml=" metadataContext " pulumi-lang-java=" metadataContext "> metadata_context </span>(of type google.protobuf.Struct) in the ProcessingRequest message sent to the extension server. The metadata is available under the namespace com.google.authz_extension.<resourceName>. The following variables are supported in the metadata Struct:
  /// {forwarding_rule_id} - substituted with the forwarding rule's fully qualified resource name.
  late final Output<Map<String, String>?> metadata;

  /// Identifier. Name of the AuthzExtension resource.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The reference to the service that runs the extension.
  /// To configure a callout extension, service must be a fully-qualified reference to a [backend service](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices) in the format:
  /// https://www.googleapis.com/compute/v1/projects/{project}/regions/{region}/backendServices/{backendService} or https://www.googleapis.com/compute/v1/projects/{project}/global/backendServices/{backendService}.
  late final Output<String> service;

  /// Specifies the timeout for each individual message on the stream. The timeout must be between 10-10000 milliseconds.
  late final Output<String> timeout;

  /// The timestamp when the resource was updated.
  late final Output<String> updateTime;

  /// Specifies the communication protocol used by the callout extension
  /// to communicate with its backend service.
  /// Supported values:
  /// - WIRE_FORMAT_UNSPECIFIED:
  /// No wire format is explicitly specified. The backend automatically
  /// defaults this value to EXT_PROC_GRPC.
  /// - EXT_PROC_GRPC:
  /// Uses Envoy's External Processing (ext_proc) gRPC API over a single
  /// gRPC stream. The backend service must support HTTP/2 or H2C.
  /// All supported events for a client request are sent over the same
  /// gRPC stream. This is the default wire format.
  /// - EXT_AUTHZ_GRPC:
  /// Uses Envoy's external authorization (ext_authz) gRPC API.
  /// The backend service must support HTTP/2 or H2C.
  /// This option is only supported for regional AuthzExtension resources.
  /// Possible values are: `WIRE_FORMAT_UNSPECIFIED`, `EXT_PROC_GRPC`, `EXT_AUTHZ_GRPC`.
  late final Output<String> wireFormat;

  AuthzExtension(
    String name, {
    AuthzExtensionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/authzExtension:AuthzExtension',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.authority = registerOutput<String>('authority');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.failOpen = registerOutput<bool>('failOpen');
    this.forwardHeaders = registerOutput<List<String>?>('forwardHeaders');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.loadBalancingScheme = registerOutput<String>('loadBalancingScheme');
    this.location = registerOutput<String>('location');
    this.metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.service = registerOutput<String>('service');
    this.timeout = registerOutput<String>('timeout');
    this.updateTime = registerOutput<String>('updateTime');
    this.wireFormat = registerOutput<String>('wireFormat');
  }
}
