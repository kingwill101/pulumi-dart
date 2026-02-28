import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_gateway_args.dart';
import 'security_gateway_hub.dart';
import 'security_gateway_proxy_protocol_config.dart';
import 'security_gateway_service_discovery.dart';

/// Deployment of Security Gateway.
///
///
///
/// ## Example Usage
///
/// ### Beyondcorp Security Gateway Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.beyondcorp.SecurityGateway("example", {
///     securityGatewayId: "default",
///     displayName: "My Security Gateway resource",
///     hubs: [{
///         region: "us-central1",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.beyondcorp.SecurityGateway("example",
///     security_gateway_id="default",
///     display_name="My Security Gateway resource",
///     hubs=[{
///         "region": "us-central1",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.Beyondcorp.SecurityGateway("example", new()
///     {
///         SecurityGatewayId = "default",
///         DisplayName = "My Security Gateway resource",
///         Hubs = new[]
///         {
///             new Gcp.Beyondcorp.Inputs.SecurityGatewayHubArgs
///             {
///                 Region = "us-central1",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := beyondcorp.NewSecurityGateway(ctx, "example", &beyondcorp.SecurityGatewayArgs{
/// 			SecurityGatewayId: pulumi.String("default"),
/// 			DisplayName:       pulumi.String("My Security Gateway resource"),
/// 			Hubs: beyondcorp.SecurityGatewayHubArray{
/// 				&beyondcorp.SecurityGatewayHubArgs{
/// 					Region: pulumi.String("us-central1"),
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
/// import com.pulumi.gcp.beyondcorp.SecurityGateway;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayHubArgs;
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
///         var example = new SecurityGateway("example", SecurityGatewayArgs.builder()
///             .securityGatewayId("default")
///             .displayName("My Security Gateway resource")
///             .hubs(SecurityGatewayHubArgs.builder()
///                 .region("us-central1")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:beyondcorp:SecurityGateway
///     properties:
///       securityGatewayId: default
///       displayName: My Security Gateway resource
///       hubs:
///         - region: us-central1
/// ```
///
/// ### Beyondcorp Security Gateway Spa
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example_spa = new gcp.beyondcorp.SecurityGateway("example-spa", {
///     securityGatewayId: "default-spa",
///     displayName: "My SPA Security Gateway resource",
///     proxyProtocolConfig: {
///         allowedClientHeaders: [
///             "header1",
///             "header2",
///         ],
///         contextualHeaders: {
///             userInfo: {
///                 outputType: "PROTOBUF",
///             },
///             groupInfo: {
///                 outputType: "JSON",
///             },
///             deviceInfo: {
///                 outputType: "NONE",
///             },
///             outputType: "NONE",
///         },
///         metadataHeaders: {
///             "metadata-header1": "value1",
///             "metadata-header2": "value2",
///         },
///         gatewayIdentity: "RESOURCE_NAME",
///         clientIp: true,
///     },
///     serviceDiscovery: {
///         apiGateway: {
///             resourceOverride: {
///                 path: "/api/v1/routes",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example_spa = gcp.beyondcorp.SecurityGateway("example-spa",
///     security_gateway_id="default-spa",
///     display_name="My SPA Security Gateway resource",
///     proxy_protocol_config={
///         "allowed_client_headers": [
///             "header1",
///             "header2",
///         ],
///         "contextual_headers": {
///             "user_info": {
///                 "output_type": "PROTOBUF",
///             },
///             "group_info": {
///                 "output_type": "JSON",
///             },
///             "device_info": {
///                 "output_type": "NONE",
///             },
///             "output_type": "NONE",
///         },
///         "metadata_headers": {
///             "metadata-header1": "value1",
///             "metadata-header2": "value2",
///         },
///         "gateway_identity": "RESOURCE_NAME",
///         "client_ip": True,
///     },
///     service_discovery={
///         "api_gateway": {
///             "resource_override": {
///                 "path": "/api/v1/routes",
///             },
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example_spa = new Gcp.Beyondcorp.SecurityGateway("example-spa", new()
///     {
///         SecurityGatewayId = "default-spa",
///         DisplayName = "My SPA Security Gateway resource",
///         ProxyProtocolConfig = new Gcp.Beyondcorp.Inputs.SecurityGatewayProxyProtocolConfigArgs
///         {
///             AllowedClientHeaders = new[]
///             {
///                 "header1",
///                 "header2",
///             },
///             ContextualHeaders = new Gcp.Beyondcorp.Inputs.SecurityGatewayProxyProtocolConfigContextualHeadersArgs
///             {
///                 UserInfo = new Gcp.Beyondcorp.Inputs.SecurityGatewayProxyProtocolConfigContextualHeadersUserInfoArgs
///                 {
///                     OutputType = "PROTOBUF",
///                 },
///                 GroupInfo = new Gcp.Beyondcorp.Inputs.SecurityGatewayProxyProtocolConfigContextualHeadersGroupInfoArgs
///                 {
///                     OutputType = "JSON",
///                 },
///                 DeviceInfo = new Gcp.Beyondcorp.Inputs.SecurityGatewayProxyProtocolConfigContextualHeadersDeviceInfoArgs
///                 {
///                     OutputType = "NONE",
///                 },
///                 OutputType = "NONE",
///             },
///             MetadataHeaders =
///             {
///                 { "metadata-header1", "value1" },
///                 { "metadata-header2", "value2" },
///             },
///             GatewayIdentity = "RESOURCE_NAME",
///             ClientIp = true,
///         },
///         ServiceDiscovery = new Gcp.Beyondcorp.Inputs.SecurityGatewayServiceDiscoveryArgs
///         {
///             ApiGateway = new Gcp.Beyondcorp.Inputs.SecurityGatewayServiceDiscoveryApiGatewayArgs
///             {
///                 ResourceOverride = new Gcp.Beyondcorp.Inputs.SecurityGatewayServiceDiscoveryApiGatewayResourceOverrideArgs
///                 {
///                     Path = "/api/v1/routes",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := beyondcorp.NewSecurityGateway(ctx, "example-spa", &beyondcorp.SecurityGatewayArgs{
/// 			SecurityGatewayId: pulumi.String("default-spa"),
/// 			DisplayName:       pulumi.String("My SPA Security Gateway resource"),
/// 			ProxyProtocolConfig: &beyondcorp.SecurityGatewayProxyProtocolConfigArgs{
/// 				AllowedClientHeaders: pulumi.StringArray{
/// 					pulumi.String("header1"),
/// 					pulumi.String("header2"),
/// 				},
/// 				ContextualHeaders: &beyondcorp.SecurityGatewayProxyProtocolConfigContextualHeadersArgs{
/// 					UserInfo: &beyondcorp.SecurityGatewayProxyProtocolConfigContextualHeadersUserInfoArgs{
/// 						OutputType: pulumi.String("PROTOBUF"),
/// 					},
/// 					GroupInfo: &beyondcorp.SecurityGatewayProxyProtocolConfigContextualHeadersGroupInfoArgs{
/// 						OutputType: pulumi.String("JSON"),
/// 					},
/// 					DeviceInfo: &beyondcorp.SecurityGatewayProxyProtocolConfigContextualHeadersDeviceInfoArgs{
/// 						OutputType: pulumi.String("NONE"),
/// 					},
/// 					OutputType: pulumi.String("NONE"),
/// 				},
/// 				MetadataHeaders: pulumi.StringMap{
/// 					"metadata-header1": pulumi.String("value1"),
/// 					"metadata-header2": pulumi.String("value2"),
/// 				},
/// 				GatewayIdentity: pulumi.String("RESOURCE_NAME"),
/// 				ClientIp:        pulumi.Bool(true),
/// 			},
/// 			ServiceDiscovery: &beyondcorp.SecurityGatewayServiceDiscoveryArgs{
/// 				ApiGateway: &beyondcorp.SecurityGatewayServiceDiscoveryApiGatewayArgs{
/// 					ResourceOverride: &beyondcorp.SecurityGatewayServiceDiscoveryApiGatewayResourceOverrideArgs{
/// 						Path: pulumi.String("/api/v1/routes"),
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
/// import com.pulumi.gcp.beyondcorp.SecurityGateway;
/// import com.pulumi.gcp.beyondcorp.SecurityGatewayArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayProxyProtocolConfigArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayProxyProtocolConfigContextualHeadersArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayProxyProtocolConfigContextualHeadersUserInfoArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayProxyProtocolConfigContextualHeadersGroupInfoArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayProxyProtocolConfigContextualHeadersDeviceInfoArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayServiceDiscoveryArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayServiceDiscoveryApiGatewayArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.SecurityGatewayServiceDiscoveryApiGatewayResourceOverrideArgs;
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
///         var example_spa = new SecurityGateway("example-spa", SecurityGatewayArgs.builder()
///             .securityGatewayId("default-spa")
///             .displayName("My SPA Security Gateway resource")
///             .proxyProtocolConfig(SecurityGatewayProxyProtocolConfigArgs.builder()
///                 .allowedClientHeaders(
///                     "header1",
///                     "header2")
///                 .contextualHeaders(SecurityGatewayProxyProtocolConfigContextualHeadersArgs.builder()
///                     .userInfo(SecurityGatewayProxyProtocolConfigContextualHeadersUserInfoArgs.builder()
///                         .outputType("PROTOBUF")
///                         .build())
///                     .groupInfo(SecurityGatewayProxyProtocolConfigContextualHeadersGroupInfoArgs.builder()
///                         .outputType("JSON")
///                         .build())
///                     .deviceInfo(SecurityGatewayProxyProtocolConfigContextualHeadersDeviceInfoArgs.builder()
///                         .outputType("NONE")
///                         .build())
///                     .outputType("NONE")
///                     .build())
///                 .metadataHeaders(Map.ofEntries(
///                     Map.entry("metadata-header1", "value1"),
///                     Map.entry("metadata-header2", "value2")
///                 ))
///                 .gatewayIdentity("RESOURCE_NAME")
///                 .clientIp(true)
///                 .build())
///             .serviceDiscovery(SecurityGatewayServiceDiscoveryArgs.builder()
///                 .apiGateway(SecurityGatewayServiceDiscoveryApiGatewayArgs.builder()
///                     .resourceOverride(SecurityGatewayServiceDiscoveryApiGatewayResourceOverrideArgs.builder()
///                         .path("/api/v1/routes")
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
///   example-spa:
///     type: gcp:beyondcorp:SecurityGateway
///     properties:
///       securityGatewayId: default-spa
///       displayName: My SPA Security Gateway resource
///       proxyProtocolConfig:
///         allowedClientHeaders:
///           - header1
///           - header2
///         contextualHeaders:
///           userInfo:
///             outputType: PROTOBUF
///           groupInfo:
///             outputType: JSON
///           deviceInfo:
///             outputType: NONE
///           outputType: NONE
///         metadataHeaders:
///           metadata-header1: value1
///           metadata-header2: value2
///         gatewayIdentity: RESOURCE_NAME
///         clientIp: true
///       serviceDiscovery:
///         apiGateway:
///           resourceOverride:
///             path: /api/v1/routes
/// ```
///
///
/// ## Import
///
/// SecurityGateway can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/securityGateways/{{security_gateway_id}}`
///
/// * `{{project}}/{{location}}/{{security_gateway_id}}`
///
/// * `{{location}}/{{security_gateway_id}}`
///
/// When using the `pulumi import` command, SecurityGateway can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/securityGateway:SecurityGateway default projects/{{project}}/locations/{{location}}/securityGateways/{{security_gateway_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/securityGateway:SecurityGateway default {{project}}/{{location}}/{{security_gateway_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/securityGateway:SecurityGateway default {{location}}/{{security_gateway_id}}
/// ```
class SecurityGateway extends pulumi.CustomResource {
  /// Output only. Timestamp when the resource was created.
  late final pulumi.Output<String> createTime;
  /// Service account used for operations that involve resources in consumer projects.
  late final pulumi.Output<String> delegatingServiceAccount;
  /// Optional. An arbitrary user-provided name for the SecurityGateway.
  /// Cannot exceed 64 characters.
  late final pulumi.Output<String?> displayName;
  /// Output only. IP addresses that will be used for establishing
  /// connection to the endpoints.
  late final pulumi.Output<List<String>> externalIps;
  /// Optional. Map of Hubs that represents regional data path deployment with GCP region
  /// as a key.
  /// Structure is documented below.
  late final pulumi.Output<List<SecurityGatewayHub>?> hubs;
  /// (Optional, Deprecated)
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. Must be omitted or set to `global`.
  ///
  /// > **Warning:** `location` is deprecated and will be removed in a future major release.
  late final pulumi.Output<String?> location;
  /// Identifier. Name of the resource.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Shared proxy configuration for all apps.
  /// Structure is documented below.
  late final pulumi.Output<SecurityGatewayProxyProtocolConfig?> proxyProtocolConfig;
  /// Optional. User-settable SecurityGateway resource ID.
  /// * Must start with a letter.
  /// * Must contain between 4-63 characters from `/a-z-/`.
  /// * Must end with a number or letter.
  late final pulumi.Output<String> securityGatewayId;
  /// Settings related to the Service Discovery.
  /// Structure is documented below.
  late final pulumi.Output<SecurityGatewayServiceDiscovery?> serviceDiscovery;
  /// Output only. The operational state of the SecurityGateway.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// CREATING
  /// UPDATING
  /// DELETING
  /// RUNNING
  /// DOWN
  /// ERROR
  late final pulumi.Output<String> state;
  /// Output only. Timestamp when the resource was last modified.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [SecurityGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityGateway]. {@macro pulumi_beyondcorp_security_gateway_security_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityGateway(
    String name, {
    SecurityGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:beyondcorp/securityGateway:SecurityGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.delegatingServiceAccount = registerOutput<String>('delegatingServiceAccount');
    this.displayName = registerOutput<String?>('displayName');
    this.externalIps = registerOutput<List<String>>('externalIps');
    this.hubs = registerOutput<List<SecurityGatewayHub>?>('hubs');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.proxyProtocolConfig = registerOutput<SecurityGatewayProxyProtocolConfig?>('proxyProtocolConfig');
    this.securityGatewayId = registerOutput<String>('securityGatewayId');
    this.serviceDiscovery = registerOutput<SecurityGatewayServiceDiscovery?>('serviceDiscovery');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
