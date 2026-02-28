import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_gateway_allocated_connection.dart';
import 'app_gateway_args.dart';

/// A BeyondCorp AppGateway resource represents a BeyondCorp protected AppGateway to a remote application. It creates
/// all the necessary GCP components needed for creating a BeyondCorp protected AppGateway. Multiple connectors can be
/// authorised for a single AppGateway.
///
///
/// To get more information about AppGateway, see:
///
/// * [API documentation](https://cloud.google.com/beyondcorp/docs/reference/rest#rest-resource:-v1.projects.locations.appgateways)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/beyondcorp-enterprise/docs/enable-app-connector)
///
/// ## Example Usage
///
/// ### Beyondcorp App Gateway Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const appGateway = new gcp.beyondcorp.AppGateway("app_gateway", {
///     name: "my-app-gateway",
///     type: "TCP_PROXY",
///     region: "us-central1",
///     hostType: "GCP_REGIONAL_MIG",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// app_gateway = gcp.beyondcorp.AppGateway("app_gateway",
///     name="my-app-gateway",
///     type="TCP_PROXY",
///     region="us-central1",
///     host_type="GCP_REGIONAL_MIG")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var appGateway = new Gcp.Beyondcorp.AppGateway("app_gateway", new()
///     {
///         Name = "my-app-gateway",
///         Type = "TCP_PROXY",
///         Region = "us-central1",
///         HostType = "GCP_REGIONAL_MIG",
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
/// 		_, err := beyondcorp.NewAppGateway(ctx, "app_gateway", &beyondcorp.AppGatewayArgs{
/// 			Name:     pulumi.String("my-app-gateway"),
/// 			Type:     pulumi.String("TCP_PROXY"),
/// 			Region:   pulumi.String("us-central1"),
/// 			HostType: pulumi.String("GCP_REGIONAL_MIG"),
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
/// import com.pulumi.gcp.beyondcorp.AppGateway;
/// import com.pulumi.gcp.beyondcorp.AppGatewayArgs;
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
///         var appGateway = new AppGateway("appGateway", AppGatewayArgs.builder()
///             .name("my-app-gateway")
///             .type("TCP_PROXY")
///             .region("us-central1")
///             .hostType("GCP_REGIONAL_MIG")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   appGateway:
///     type: gcp:beyondcorp:AppGateway
///     name: app_gateway
///     properties:
///       name: my-app-gateway
///       type: TCP_PROXY
///       region: us-central1
///       hostType: GCP_REGIONAL_MIG
/// ```
///
/// ### Beyondcorp App Gateway Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const appGateway = new gcp.beyondcorp.AppGateway("app_gateway", {
///     name: "my-app-gateway",
///     type: "TCP_PROXY",
///     region: "us-central1",
///     displayName: "some display name",
///     labels: {
///         foo: "bar",
///         bar: "baz",
///     },
///     hostType: "GCP_REGIONAL_MIG",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// app_gateway = gcp.beyondcorp.AppGateway("app_gateway",
///     name="my-app-gateway",
///     type="TCP_PROXY",
///     region="us-central1",
///     display_name="some display name",
///     labels={
///         "foo": "bar",
///         "bar": "baz",
///     },
///     host_type="GCP_REGIONAL_MIG")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var appGateway = new Gcp.Beyondcorp.AppGateway("app_gateway", new()
///     {
///         Name = "my-app-gateway",
///         Type = "TCP_PROXY",
///         Region = "us-central1",
///         DisplayName = "some display name",
///         Labels =
///         {
///             { "foo", "bar" },
///             { "bar", "baz" },
///         },
///         HostType = "GCP_REGIONAL_MIG",
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
/// 		_, err := beyondcorp.NewAppGateway(ctx, "app_gateway", &beyondcorp.AppGatewayArgs{
/// 			Name:        pulumi.String("my-app-gateway"),
/// 			Type:        pulumi.String("TCP_PROXY"),
/// 			Region:      pulumi.String("us-central1"),
/// 			DisplayName: pulumi.String("some display name"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 				"bar": pulumi.String("baz"),
/// 			},
/// 			HostType: pulumi.String("GCP_REGIONAL_MIG"),
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
/// import com.pulumi.gcp.beyondcorp.AppGateway;
/// import com.pulumi.gcp.beyondcorp.AppGatewayArgs;
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
///         var appGateway = new AppGateway("appGateway", AppGatewayArgs.builder()
///             .name("my-app-gateway")
///             .type("TCP_PROXY")
///             .region("us-central1")
///             .displayName("some display name")
///             .labels(Map.ofEntries(
///                 Map.entry("foo", "bar"),
///                 Map.entry("bar", "baz")
///             ))
///             .hostType("GCP_REGIONAL_MIG")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   appGateway:
///     type: gcp:beyondcorp:AppGateway
///     name: app_gateway
///     properties:
///       name: my-app-gateway
///       type: TCP_PROXY
///       region: us-central1
///       displayName: some display name
///       labels:
///         foo: bar
///         bar: baz
///       hostType: GCP_REGIONAL_MIG
/// ```
///
///
/// ## Import
///
/// AppGateway can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/appGateways/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, AppGateway can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/appGateway:AppGateway default projects/{{project}}/locations/{{region}}/appGateways/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/appGateway:AppGateway default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/appGateway:AppGateway default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/appGateway:AppGateway default {{name}}
/// ```
class AppGateway extends pulumi.CustomResource {
  /// A list of connections allocated for the Gateway.
  /// Structure is documented below.
  late final pulumi.Output<List<AppGatewayAllocatedConnection>> allocatedConnections;
  /// An arbitrary user-provided name for the AppGateway.
  late final pulumi.Output<String?> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The type of hosting used by the AppGateway.
  /// Default value is `HOST_TYPE_UNSPECIFIED`.
  /// Possible values are: `HOST_TYPE_UNSPECIFIED`, `GCP_REGIONAL_MIG`.
  late final pulumi.Output<String?> hostType;
  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// ID of the AppGateway.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The region of the AppGateway.
  late final pulumi.Output<String?> region;
  /// Represents the different states of a AppGateway.
  late final pulumi.Output<String> state;
  /// The type of network connectivity used by the AppGateway.
  /// Default value is `TYPE_UNSPECIFIED`.
  /// Possible values are: `TYPE_UNSPECIFIED`, `TCP_PROXY`.
  late final pulumi.Output<String?> type;
  /// Server-defined URI for this resource.
  late final pulumi.Output<String> uri;

  /// Creates a new [AppGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppGateway]. {@macro pulumi_beyondcorp_app_gateway_app_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppGateway(
    String name, {
    AppGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:beyondcorp/appGateway:AppGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allocatedConnections = registerOutput<List<AppGatewayAllocatedConnection>>('allocatedConnections');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.hostType = registerOutput<String?>('hostType');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String?>('region');
    this.state = registerOutput<String>('state');
    this.type = registerOutput<String?>('type');
    this.uri = registerOutput<String>('uri');
  }
}
