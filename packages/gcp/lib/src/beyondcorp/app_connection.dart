import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_connection_application_endpoint.dart';
import 'app_connection_args.dart';
import 'app_connection_gateway.dart';

/// A BeyondCorp AppConnection resource represents a BeyondCorp protected AppConnection to a remote application.
/// It creates all the necessary GCP components needed for creating a BeyondCorp protected AppConnection.
/// Multiple connectors can be authorised for a single AppConnection.
///
///
/// To get more information about AppConnection, see:
///
/// * [API documentation](https://cloud.google.com/beyondcorp/docs/reference/rest#rest-resource:-v1.projects.locations.appconnections)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/beyondcorp-enterprise/docs/enable-app-connector)
///
/// ## Example Usage
///
/// ### Beyondcorp App Connection Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const serviceAccount = new gcp.serviceaccount.Account("service_account", {
///     accountId: "my-account",
///     displayName: "Test Service Account",
/// });
/// const appConnector = new gcp.beyondcorp.AppConnector("app_connector", {
///     name: "my-app-connector",
///     principalInfo: {
///         serviceAccount: {
///             email: serviceAccount.email,
///         },
///     },
/// });
/// const appConnection = new gcp.beyondcorp.AppConnection("app_connection", {
///     name: "my-app-connection",
///     type: "TCP_PROXY",
///     applicationEndpoint: {
///         host: "foo-host",
///         port: 8080,
///     },
///     connectors: [appConnector.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// service_account = gcp.serviceaccount.Account("service_account",
///     account_id="my-account",
///     display_name="Test Service Account")
/// app_connector = gcp.beyondcorp.AppConnector("app_connector",
///     name="my-app-connector",
///     principal_info={
///         "service_account": {
///             "email": service_account.email,
///         },
///     })
/// app_connection = gcp.beyondcorp.AppConnection("app_connection",
///     name="my-app-connection",
///     type="TCP_PROXY",
///     application_endpoint={
///         "host": "foo-host",
///         "port": 8080,
///     },
///     connectors=[app_connector.id])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceAccount = new Gcp.ServiceAccount.Account("service_account", new()
///     {
///         AccountId = "my-account",
///         DisplayName = "Test Service Account",
///     });
///
///     var appConnector = new Gcp.Beyondcorp.AppConnector("app_connector", new()
///     {
///         Name = "my-app-connector",
///         PrincipalInfo = new Gcp.Beyondcorp.Inputs.AppConnectorPrincipalInfoArgs
///         {
///             ServiceAccount = new Gcp.Beyondcorp.Inputs.AppConnectorPrincipalInfoServiceAccountArgs
///             {
///                 Email = serviceAccount.Email,
///             },
///         },
///     });
///
///     var appConnection = new Gcp.Beyondcorp.AppConnection("app_connection", new()
///     {
///         Name = "my-app-connection",
///         Type = "TCP_PROXY",
///         ApplicationEndpoint = new Gcp.Beyondcorp.Inputs.AppConnectionApplicationEndpointArgs
///         {
///             Host = "foo-host",
///             Port = 8080,
///         },
///         Connectors = new[]
///         {
///             appConnector.Id,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		serviceAccount, err := serviceaccount.NewAccount(ctx, "service_account", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("my-account"),
/// 			DisplayName: pulumi.String("Test Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		appConnector, err := beyondcorp.NewAppConnector(ctx, "app_connector", &beyondcorp.AppConnectorArgs{
/// 			Name: pulumi.String("my-app-connector"),
/// 			PrincipalInfo: &beyondcorp.AppConnectorPrincipalInfoArgs{
/// 				ServiceAccount: &beyondcorp.AppConnectorPrincipalInfoServiceAccountArgs{
/// 					Email: serviceAccount.Email,
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = beyondcorp.NewAppConnection(ctx, "app_connection", &beyondcorp.AppConnectionArgs{
/// 			Name: pulumi.String("my-app-connection"),
/// 			Type: pulumi.String("TCP_PROXY"),
/// 			ApplicationEndpoint: &beyondcorp.AppConnectionApplicationEndpointArgs{
/// 				Host: pulumi.String("foo-host"),
/// 				Port: pulumi.Int(8080),
/// 			},
/// 			Connectors: pulumi.StringArray{
/// 				appConnector.ID(),
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.beyondcorp.AppConnector;
/// import com.pulumi.gcp.beyondcorp.AppConnectorArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.AppConnectorPrincipalInfoArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.AppConnectorPrincipalInfoServiceAccountArgs;
/// import com.pulumi.gcp.beyondcorp.AppConnection;
/// import com.pulumi.gcp.beyondcorp.AppConnectionArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.AppConnectionApplicationEndpointArgs;
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
///         var serviceAccount = new Account("serviceAccount", AccountArgs.builder()
///             .accountId("my-account")
///             .displayName("Test Service Account")
///             .build());
///
///         var appConnector = new AppConnector("appConnector", AppConnectorArgs.builder()
///             .name("my-app-connector")
///             .principalInfo(AppConnectorPrincipalInfoArgs.builder()
///                 .serviceAccount(AppConnectorPrincipalInfoServiceAccountArgs.builder()
///                     .email(serviceAccount.email())
///                     .build())
///                 .build())
///             .build());
///
///         var appConnection = new AppConnection("appConnection", AppConnectionArgs.builder()
///             .name("my-app-connection")
///             .type("TCP_PROXY")
///             .applicationEndpoint(AppConnectionApplicationEndpointArgs.builder()
///                 .host("foo-host")
///                 .port(8080)
///                 .build())
///             .connectors(appConnector.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   serviceAccount:
///     type: gcp:serviceaccount:Account
///     name: service_account
///     properties:
///       accountId: my-account
///       displayName: Test Service Account
///   appConnector:
///     type: gcp:beyondcorp:AppConnector
///     name: app_connector
///     properties:
///       name: my-app-connector
///       principalInfo:
///         serviceAccount:
///           email: ${serviceAccount.email}
///   appConnection:
///     type: gcp:beyondcorp:AppConnection
///     name: app_connection
///     properties:
///       name: my-app-connection
///       type: TCP_PROXY
///       applicationEndpoint:
///         host: foo-host
///         port: 8080
///       connectors:
///         - ${appConnector.id}
/// ```
///
/// ### Beyondcorp App Connection Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const serviceAccount = new gcp.serviceaccount.Account("service_account", {
///     accountId: "my-account",
///     displayName: "Test Service Account",
/// });
/// const appGateway = new gcp.beyondcorp.AppGateway("app_gateway", {
///     name: "my-app-gateway",
///     type: "TCP_PROXY",
///     hostType: "GCP_REGIONAL_MIG",
/// });
/// const appConnector = new gcp.beyondcorp.AppConnector("app_connector", {
///     name: "my-app-connector",
///     principalInfo: {
///         serviceAccount: {
///             email: serviceAccount.email,
///         },
///     },
/// });
/// const appConnection = new gcp.beyondcorp.AppConnection("app_connection", {
///     name: "my-app-connection",
///     type: "TCP_PROXY",
///     displayName: "some display name",
///     applicationEndpoint: {
///         host: "foo-host",
///         port: 8080,
///     },
///     connectors: [appConnector.id],
///     gateway: {
///         appGateway: appGateway.id,
///     },
///     labels: {
///         foo: "bar",
///         bar: "baz",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// service_account = gcp.serviceaccount.Account("service_account",
///     account_id="my-account",
///     display_name="Test Service Account")
/// app_gateway = gcp.beyondcorp.AppGateway("app_gateway",
///     name="my-app-gateway",
///     type="TCP_PROXY",
///     host_type="GCP_REGIONAL_MIG")
/// app_connector = gcp.beyondcorp.AppConnector("app_connector",
///     name="my-app-connector",
///     principal_info={
///         "service_account": {
///             "email": service_account.email,
///         },
///     })
/// app_connection = gcp.beyondcorp.AppConnection("app_connection",
///     name="my-app-connection",
///     type="TCP_PROXY",
///     display_name="some display name",
///     application_endpoint={
///         "host": "foo-host",
///         "port": 8080,
///     },
///     connectors=[app_connector.id],
///     gateway={
///         "app_gateway": app_gateway.id,
///     },
///     labels={
///         "foo": "bar",
///         "bar": "baz",
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
///     var serviceAccount = new Gcp.ServiceAccount.Account("service_account", new()
///     {
///         AccountId = "my-account",
///         DisplayName = "Test Service Account",
///     });
///
///     var appGateway = new Gcp.Beyondcorp.AppGateway("app_gateway", new()
///     {
///         Name = "my-app-gateway",
///         Type = "TCP_PROXY",
///         HostType = "GCP_REGIONAL_MIG",
///     });
///
///     var appConnector = new Gcp.Beyondcorp.AppConnector("app_connector", new()
///     {
///         Name = "my-app-connector",
///         PrincipalInfo = new Gcp.Beyondcorp.Inputs.AppConnectorPrincipalInfoArgs
///         {
///             ServiceAccount = new Gcp.Beyondcorp.Inputs.AppConnectorPrincipalInfoServiceAccountArgs
///             {
///                 Email = serviceAccount.Email,
///             },
///         },
///     });
///
///     var appConnection = new Gcp.Beyondcorp.AppConnection("app_connection", new()
///     {
///         Name = "my-app-connection",
///         Type = "TCP_PROXY",
///         DisplayName = "some display name",
///         ApplicationEndpoint = new Gcp.Beyondcorp.Inputs.AppConnectionApplicationEndpointArgs
///         {
///             Host = "foo-host",
///             Port = 8080,
///         },
///         Connectors = new[]
///         {
///             appConnector.Id,
///         },
///         Gateway = new Gcp.Beyondcorp.Inputs.AppConnectionGatewayArgs
///         {
///             AppGateway = appGateway.Id,
///         },
///         Labels =
///         {
///             { "foo", "bar" },
///             { "bar", "baz" },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		serviceAccount, err := serviceaccount.NewAccount(ctx, "service_account", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("my-account"),
/// 			DisplayName: pulumi.String("Test Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		appGateway, err := beyondcorp.NewAppGateway(ctx, "app_gateway", &beyondcorp.AppGatewayArgs{
/// 			Name:     pulumi.String("my-app-gateway"),
/// 			Type:     pulumi.String("TCP_PROXY"),
/// 			HostType: pulumi.String("GCP_REGIONAL_MIG"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		appConnector, err := beyondcorp.NewAppConnector(ctx, "app_connector", &beyondcorp.AppConnectorArgs{
/// 			Name: pulumi.String("my-app-connector"),
/// 			PrincipalInfo: &beyondcorp.AppConnectorPrincipalInfoArgs{
/// 				ServiceAccount: &beyondcorp.AppConnectorPrincipalInfoServiceAccountArgs{
/// 					Email: serviceAccount.Email,
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = beyondcorp.NewAppConnection(ctx, "app_connection", &beyondcorp.AppConnectionArgs{
/// 			Name:        pulumi.String("my-app-connection"),
/// 			Type:        pulumi.String("TCP_PROXY"),
/// 			DisplayName: pulumi.String("some display name"),
/// 			ApplicationEndpoint: &beyondcorp.AppConnectionApplicationEndpointArgs{
/// 				Host: pulumi.String("foo-host"),
/// 				Port: pulumi.Int(8080),
/// 			},
/// 			Connectors: pulumi.StringArray{
/// 				appConnector.ID(),
/// 			},
/// 			Gateway: &beyondcorp.AppConnectionGatewayArgs{
/// 				AppGateway: appGateway.ID(),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 				"bar": pulumi.String("baz"),
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.beyondcorp.AppGateway;
/// import com.pulumi.gcp.beyondcorp.AppGatewayArgs;
/// import com.pulumi.gcp.beyondcorp.AppConnector;
/// import com.pulumi.gcp.beyondcorp.AppConnectorArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.AppConnectorPrincipalInfoArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.AppConnectorPrincipalInfoServiceAccountArgs;
/// import com.pulumi.gcp.beyondcorp.AppConnection;
/// import com.pulumi.gcp.beyondcorp.AppConnectionArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.AppConnectionApplicationEndpointArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.AppConnectionGatewayArgs;
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
///         var serviceAccount = new Account("serviceAccount", AccountArgs.builder()
///             .accountId("my-account")
///             .displayName("Test Service Account")
///             .build());
///
///         var appGateway = new AppGateway("appGateway", AppGatewayArgs.builder()
///             .name("my-app-gateway")
///             .type("TCP_PROXY")
///             .hostType("GCP_REGIONAL_MIG")
///             .build());
///
///         var appConnector = new AppConnector("appConnector", AppConnectorArgs.builder()
///             .name("my-app-connector")
///             .principalInfo(AppConnectorPrincipalInfoArgs.builder()
///                 .serviceAccount(AppConnectorPrincipalInfoServiceAccountArgs.builder()
///                     .email(serviceAccount.email())
///                     .build())
///                 .build())
///             .build());
///
///         var appConnection = new AppConnection("appConnection", AppConnectionArgs.builder()
///             .name("my-app-connection")
///             .type("TCP_PROXY")
///             .displayName("some display name")
///             .applicationEndpoint(AppConnectionApplicationEndpointArgs.builder()
///                 .host("foo-host")
///                 .port(8080)
///                 .build())
///             .connectors(appConnector.id())
///             .gateway(AppConnectionGatewayArgs.builder()
///                 .appGateway(appGateway.id())
///                 .build())
///             .labels(Map.ofEntries(
///                 Map.entry("foo", "bar"),
///                 Map.entry("bar", "baz")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   serviceAccount:
///     type: gcp:serviceaccount:Account
///     name: service_account
///     properties:
///       accountId: my-account
///       displayName: Test Service Account
///   appGateway:
///     type: gcp:beyondcorp:AppGateway
///     name: app_gateway
///     properties:
///       name: my-app-gateway
///       type: TCP_PROXY
///       hostType: GCP_REGIONAL_MIG
///   appConnector:
///     type: gcp:beyondcorp:AppConnector
///     name: app_connector
///     properties:
///       name: my-app-connector
///       principalInfo:
///         serviceAccount:
///           email: ${serviceAccount.email}
///   appConnection:
///     type: gcp:beyondcorp:AppConnection
///     name: app_connection
///     properties:
///       name: my-app-connection
///       type: TCP_PROXY
///       displayName: some display name
///       applicationEndpoint:
///         host: foo-host
///         port: 8080
///       connectors:
///         - ${appConnector.id}
///       gateway:
///         appGateway: ${appGateway.id}
///       labels:
///         foo: bar
///         bar: baz
/// ```
///
///
/// ## Import
///
/// AppConnection can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/appConnections/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, AppConnection can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/appConnection:AppConnection default projects/{{project}}/locations/{{region}}/appConnections/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/appConnection:AppConnection default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/appConnection:AppConnection default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/appConnection:AppConnection default {{name}}
/// ```
class AppConnection extends pulumi.CustomResource {
  /// Address of the remote application endpoint for the BeyondCorp AppConnection.
  /// Structure is documented below.
  late final pulumi.Output<AppConnectionApplicationEndpoint> applicationEndpoint;
  /// List of AppConnectors that are authorised to be associated with this AppConnection
  late final pulumi.Output<List<String>?> connectors;
  /// An arbitrary user-provided name for the AppConnection.
  late final pulumi.Output<String?> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Gateway used by the AppConnection.
  /// Structure is documented below.
  late final pulumi.Output<AppConnectionGateway> gateway;
  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// ID of the AppConnection.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The region of the AppConnection.
  late final pulumi.Output<String?> region;
  /// The type of network connectivity used by the AppConnection. Refer
  /// to https://cloud.google.com/beyondcorp/docs/reference/rest/v1/projects.locations.appConnections#type
  /// for a list of possible values.
  late final pulumi.Output<String?> type;

  /// Creates a new [AppConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppConnection]. {@macro pulumi_beyondcorp_app_connection_app_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppConnection(
    String name, {
    AppConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:beyondcorp/appConnection:AppConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationEndpoint = registerOutput<AppConnectionApplicationEndpoint>('applicationEndpoint');
    this.connectors = registerOutput<List<String>?>('connectors');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.gateway = registerOutput<AppConnectionGateway>('gateway');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String?>('region');
    this.type = registerOutput<String?>('type');
  }
}
