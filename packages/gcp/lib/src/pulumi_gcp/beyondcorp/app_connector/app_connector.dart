import 'package:pulumi/pulumi.dart';
import '../app_connector_principal_info/app_connector_principal_info.dart';
import 'app_connector_args.dart';

/// A BeyondCorp AppConnector resource represents an application facing component deployed proximal to
/// and with direct access to the application instances. It is used to establish connectivity between the
/// remote enterprise environment and GCP. It initiates connections to the applications and can proxy the
/// data from users over the connection.
///
///
/// To get more information about AppConnector, see:
///
/// * [API documentation](https://cloud.google.com/beyondcorp/docs/reference/rest#rest-resource:-v1.projects.locations.appconnectors)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/beyondcorp-enterprise/docs/enable-app-connector)
///
/// ## Example Usage
///
/// ### Beyondcorp App Connector Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const serviceAccount = new gcp.serviceaccount.Account("service_account", {
/// accountId: "my-account",
/// displayName: "Test Service Account",
/// });
/// const appConnector = new gcp.beyondcorp.AppConnector("app_connector", {
/// name: "my-app-connector",
/// principalInfo: {
/// serviceAccount: {
/// email: serviceAccount.email,
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// service_account = gcp.serviceaccount.Account("service_account",
/// account_id="my-account",
/// display_name="Test Service Account")
/// app_connector = gcp.beyondcorp.AppConnector("app_connector",
/// name="my-app-connector",
/// principal_info={
/// "service_account": {
/// "email": service_account.email,
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var serviceAccount = new Gcp.ServiceAccount.Account("service_account", new()
/// {
/// AccountId = "my-account",
/// DisplayName = "Test Service Account",
/// });
///
/// var appConnector = new Gcp.Beyondcorp.AppConnector("app_connector", new()
/// {
/// Name = "my-app-connector",
/// PrincipalInfo = new Gcp.Beyondcorp.Inputs.AppConnectorPrincipalInfoArgs
/// {
/// ServiceAccount = new Gcp.Beyondcorp.Inputs.AppConnectorPrincipalInfoServiceAccountArgs
/// {
/// Email = serviceAccount.Email,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// serviceAccount, err := serviceaccount.NewAccount(ctx, "service_account", &serviceaccount.AccountArgs{
/// AccountId:   pulumi.String("my-account"),
/// DisplayName: pulumi.String("Test Service Account"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = beyondcorp.NewAppConnector(ctx, "app_connector", &beyondcorp.AppConnectorArgs{
/// Name: pulumi.String("my-app-connector"),
/// PrincipalInfo: &beyondcorp.AppConnectorPrincipalInfoArgs{
/// ServiceAccount: &beyondcorp.AppConnectorPrincipalInfoServiceAccountArgs{
/// Email: serviceAccount.Email,
/// },
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.beyondcorp.AppConnector;
/// import com.pulumi.gcp.beyondcorp.AppConnectorArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.AppConnectorPrincipalInfoArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.AppConnectorPrincipalInfoServiceAccountArgs;
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
/// var serviceAccount = new Account("serviceAccount", AccountArgs.builder()
/// .accountId("my-account")
/// .displayName("Test Service Account")
/// .build());
///
/// var appConnector = new AppConnector("appConnector", AppConnectorArgs.builder()
/// .name("my-app-connector")
/// .principalInfo(AppConnectorPrincipalInfoArgs.builder()
/// .serviceAccount(AppConnectorPrincipalInfoServiceAccountArgs.builder()
/// .email(serviceAccount.email())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// serviceAccount:
/// type: gcp:serviceaccount:Account
/// name: service_account
/// properties:
/// accountId: my-account
/// displayName: Test Service Account
/// appConnector:
/// type: gcp:beyondcorp:AppConnector
/// name: app_connector
/// properties:
/// name: my-app-connector
/// principalInfo:
/// serviceAccount:
/// email: ${serviceAccount.email}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Beyondcorp App Connector Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const serviceAccount = new gcp.serviceaccount.Account("service_account", {
/// accountId: "my-account",
/// displayName: "Test Service Account",
/// });
/// const appConnector = new gcp.beyondcorp.AppConnector("app_connector", {
/// name: "my-app-connector",
/// region: "us-central1",
/// displayName: "some display name",
/// principalInfo: {
/// serviceAccount: {
/// email: serviceAccount.email,
/// },
/// },
/// labels: {
/// foo: "bar",
/// bar: "baz",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// service_account = gcp.serviceaccount.Account("service_account",
/// account_id="my-account",
/// display_name="Test Service Account")
/// app_connector = gcp.beyondcorp.AppConnector("app_connector",
/// name="my-app-connector",
/// region="us-central1",
/// display_name="some display name",
/// principal_info={
/// "service_account": {
/// "email": service_account.email,
/// },
/// },
/// labels={
/// "foo": "bar",
/// "bar": "baz",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var serviceAccount = new Gcp.ServiceAccount.Account("service_account", new()
/// {
/// AccountId = "my-account",
/// DisplayName = "Test Service Account",
/// });
///
/// var appConnector = new Gcp.Beyondcorp.AppConnector("app_connector", new()
/// {
/// Name = "my-app-connector",
/// Region = "us-central1",
/// DisplayName = "some display name",
/// PrincipalInfo = new Gcp.Beyondcorp.Inputs.AppConnectorPrincipalInfoArgs
/// {
/// ServiceAccount = new Gcp.Beyondcorp.Inputs.AppConnectorPrincipalInfoServiceAccountArgs
/// {
/// Email = serviceAccount.Email,
/// },
/// },
/// Labels =
/// {
/// { "foo", "bar" },
/// { "bar", "baz" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// serviceAccount, err := serviceaccount.NewAccount(ctx, "service_account", &serviceaccount.AccountArgs{
/// AccountId:   pulumi.String("my-account"),
/// DisplayName: pulumi.String("Test Service Account"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = beyondcorp.NewAppConnector(ctx, "app_connector", &beyondcorp.AppConnectorArgs{
/// Name:        pulumi.String("my-app-connector"),
/// Region:      pulumi.String("us-central1"),
/// DisplayName: pulumi.String("some display name"),
/// PrincipalInfo: &beyondcorp.AppConnectorPrincipalInfoArgs{
/// ServiceAccount: &beyondcorp.AppConnectorPrincipalInfoServiceAccountArgs{
/// Email: serviceAccount.Email,
/// },
/// },
/// Labels: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
/// "bar": pulumi.String("baz"),
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.beyondcorp.AppConnector;
/// import com.pulumi.gcp.beyondcorp.AppConnectorArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.AppConnectorPrincipalInfoArgs;
/// import com.pulumi.gcp.beyondcorp.inputs.AppConnectorPrincipalInfoServiceAccountArgs;
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
/// var serviceAccount = new Account("serviceAccount", AccountArgs.builder()
/// .accountId("my-account")
/// .displayName("Test Service Account")
/// .build());
///
/// var appConnector = new AppConnector("appConnector", AppConnectorArgs.builder()
/// .name("my-app-connector")
/// .region("us-central1")
/// .displayName("some display name")
/// .principalInfo(AppConnectorPrincipalInfoArgs.builder()
/// .serviceAccount(AppConnectorPrincipalInfoServiceAccountArgs.builder()
/// .email(serviceAccount.email())
/// .build())
/// .build())
/// .labels(Map.ofEntries(
/// Map.entry("foo", "bar"),
/// Map.entry("bar", "baz")
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// serviceAccount:
/// type: gcp:serviceaccount:Account
/// name: service_account
/// properties:
/// accountId: my-account
/// displayName: Test Service Account
/// appConnector:
/// type: gcp:beyondcorp:AppConnector
/// name: app_connector
/// properties:
/// name: my-app-connector
/// region: us-central1
/// displayName: some display name
/// principalInfo:
/// serviceAccount:
/// email: ${serviceAccount.email}
/// labels:
/// foo: bar
/// bar: baz
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// AppConnector can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/appConnectors/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, AppConnector can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/appConnector:AppConnector default projects/{{project}}/locations/{{region}}/appConnectors/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/appConnector:AppConnector default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/appConnector:AppConnector default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/appConnector:AppConnector default {{name}}
/// ```
class AppConnector extends CustomResource {
  /// An arbitrary user-provided name for the AppConnector.
  late final Output<String?> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// ID of the AppConnector.
  late final Output<String> name;

  /// Principal information about the Identity of the AppConnector.
  /// Structure is documented below.
  late final Output<AppConnectorPrincipalInfo> principalInfo;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The region of the AppConnector.
  late final Output<String?> region;

  /// Represents the different states of a AppConnector.
  late final Output<String> state;

  AppConnector(
    String name, {
    AppConnectorArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:beyondcorp/appConnector:AppConnector',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.displayName = Output.createUnknown<String?>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.name = Output.createUnknown<String>();
    this.principalInfo = Output.createUnknown<AppConnectorPrincipalInfo>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.region = Output.createUnknown<String?>();
    this.state = Output.createUnknown<String>();
  }
}
