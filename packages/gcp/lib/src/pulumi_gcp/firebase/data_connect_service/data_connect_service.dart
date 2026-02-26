import 'package:pulumi/pulumi.dart';
import 'data_connect_service_args.dart';

/// A Firebase Data Connect service.
///
///
/// To get more information about Service, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/data-connect/rest)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/data-connect)
///
/// ## Example Usage
///
/// ### Firebasedataconnect Service Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // Enable Firebase Data Connect API
/// const fdc = new gcp.projects.Service("fdc", {
/// project: "my-project-name",
/// service: "firebasedataconnect.googleapis.com",
/// });
/// // Create a Firebase Data Connect service
/// const _default = new gcp.firebase.DataConnectService("default", {
/// project: "my-project-name",
/// location: "us-central1",
/// serviceId: "example-service",
/// deletionPolicy: "DEFAULT",
/// labels: {
/// label: "my-label",
/// },
/// annotations: {
/// key1: "value1",
/// key2: "value2",
/// },
/// }, {
/// dependsOn: [fdc],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # Enable Firebase Data Connect API
/// fdc = gcp.projects.Service("fdc",
/// project="my-project-name",
/// service="firebasedataconnect.googleapis.com")
/// # Create a Firebase Data Connect service
/// default = gcp.firebase.DataConnectService("default",
/// project="my-project-name",
/// location="us-central1",
/// service_id="example-service",
/// deletion_policy="DEFAULT",
/// labels={
/// "label": "my-label",
/// },
/// annotations={
/// "key1": "value1",
/// "key2": "value2",
/// },
/// opts = pulumi.ResourceOptions(depends_on=[fdc]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// // Enable Firebase Data Connect API
/// var fdc = new Gcp.Projects.Service("fdc", new()
/// {
/// Project = "my-project-name",
/// ServiceName = "firebasedataconnect.googleapis.com",
/// });
///
/// // Create a Firebase Data Connect service
/// var @default = new Gcp.Firebase.DataConnectService("default", new()
/// {
/// Project = "my-project-name",
/// Location = "us-central1",
/// ServiceId = "example-service",
/// DeletionPolicy = "DEFAULT",
/// Labels =
/// {
/// { "label", "my-label" },
/// },
/// Annotations =
/// {
/// { "key1", "value1" },
/// { "key2", "value2" },
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// fdc,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // Enable Firebase Data Connect API
/// fdc, err := projects.NewService(ctx, "fdc", &projects.ServiceArgs{
/// Project: pulumi.String("my-project-name"),
/// Service: pulumi.String("firebasedataconnect.googleapis.com"),
/// })
/// if err != nil {
/// return err
/// }
/// // Create a Firebase Data Connect service
/// _, err = firebase.NewDataConnectService(ctx, "default", &firebase.DataConnectServiceArgs{
/// Project:        pulumi.String("my-project-name"),
/// Location:       pulumi.String("us-central1"),
/// ServiceId:      pulumi.String("example-service"),
/// DeletionPolicy: pulumi.String("DEFAULT"),
/// Labels: pulumi.StringMap{
/// "label": pulumi.String("my-label"),
/// },
/// Annotations: pulumi.StringMap{
/// "key1": pulumi.String("value1"),
/// "key2": pulumi.String("value2"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// fdc,
/// }))
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
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.firebase.DataConnectService;
/// import com.pulumi.gcp.firebase.DataConnectServiceArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// // Enable Firebase Data Connect API
/// var fdc = new Service("fdc", ServiceArgs.builder()
/// .project("my-project-name")
/// .service("firebasedataconnect.googleapis.com")
/// .build());
///
/// // Create a Firebase Data Connect service
/// var default_ = new DataConnectService("default", DataConnectServiceArgs.builder()
/// .project("my-project-name")
/// .location("us-central1")
/// .serviceId("example-service")
/// .deletionPolicy("DEFAULT")
/// .labels(Map.of("label", "my-label"))
/// .annotations(Map.ofEntries(
/// Map.entry("key1", "value1"),
/// Map.entry("key2", "value2")
/// ))
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(fdc)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # Enable Firebase Data Connect API
/// fdc:
/// type: gcp:projects:Service
/// properties:
/// project: my-project-name
/// service: firebasedataconnect.googleapis.com
/// # Create a Firebase Data Connect service
/// default:
/// type: gcp:firebase:DataConnectService
/// properties:
/// project: my-project-name
/// location: us-central1
/// serviceId: example-service
/// deletionPolicy: DEFAULT
/// labels:
/// label: my-label
/// annotations:
/// key1: value1
/// key2: value2
/// options:
/// dependsOn:
/// - ${fdc}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Firebasedataconnect Service With Force Deletion
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // Enable Firebase Data Connect API
/// const fdc = new gcp.projects.Service("fdc", {
/// project: "my-project-name",
/// service: "firebasedataconnect.googleapis.com",
/// });
/// // Create a Firebase Data Connect service
/// const _default = new gcp.firebase.DataConnectService("default", {
/// project: "my-project-name",
/// location: "us-central1",
/// serviceId: "example-service",
/// deletionPolicy: "FORCE",
/// }, {
/// dependsOn: [fdc],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # Enable Firebase Data Connect API
/// fdc = gcp.projects.Service("fdc",
/// project="my-project-name",
/// service="firebasedataconnect.googleapis.com")
/// # Create a Firebase Data Connect service
/// default = gcp.firebase.DataConnectService("default",
/// project="my-project-name",
/// location="us-central1",
/// service_id="example-service",
/// deletion_policy="FORCE",
/// opts = pulumi.ResourceOptions(depends_on=[fdc]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// // Enable Firebase Data Connect API
/// var fdc = new Gcp.Projects.Service("fdc", new()
/// {
/// Project = "my-project-name",
/// ServiceName = "firebasedataconnect.googleapis.com",
/// });
///
/// // Create a Firebase Data Connect service
/// var @default = new Gcp.Firebase.DataConnectService("default", new()
/// {
/// Project = "my-project-name",
/// Location = "us-central1",
/// ServiceId = "example-service",
/// DeletionPolicy = "FORCE",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// fdc,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // Enable Firebase Data Connect API
/// fdc, err := projects.NewService(ctx, "fdc", &projects.ServiceArgs{
/// Project: pulumi.String("my-project-name"),
/// Service: pulumi.String("firebasedataconnect.googleapis.com"),
/// })
/// if err != nil {
/// return err
/// }
/// // Create a Firebase Data Connect service
/// _, err = firebase.NewDataConnectService(ctx, "default", &firebase.DataConnectServiceArgs{
/// Project:        pulumi.String("my-project-name"),
/// Location:       pulumi.String("us-central1"),
/// ServiceId:      pulumi.String("example-service"),
/// DeletionPolicy: pulumi.String("FORCE"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// fdc,
/// }))
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
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.firebase.DataConnectService;
/// import com.pulumi.gcp.firebase.DataConnectServiceArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// // Enable Firebase Data Connect API
/// var fdc = new Service("fdc", ServiceArgs.builder()
/// .project("my-project-name")
/// .service("firebasedataconnect.googleapis.com")
/// .build());
///
/// // Create a Firebase Data Connect service
/// var default_ = new DataConnectService("default", DataConnectServiceArgs.builder()
/// .project("my-project-name")
/// .location("us-central1")
/// .serviceId("example-service")
/// .deletionPolicy("FORCE")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(fdc)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # Enable Firebase Data Connect API
/// fdc:
/// type: gcp:projects:Service
/// properties:
/// project: my-project-name
/// service: firebasedataconnect.googleapis.com
/// # Create a Firebase Data Connect service
/// default:
/// type: gcp:firebase:DataConnectService
/// properties:
/// project: my-project-name
/// location: us-central1
/// serviceId: example-service
/// deletionPolicy: FORCE
/// options:
/// dependsOn:
/// - ${fdc}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Service can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/services/{{service_id}}`
///
/// * `{{project}}/{{location}}/{{service_id}}`
///
/// * `{{location}}/{{service_id}}`
///
/// When using the `pulumi import` command, Service can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/dataConnectService:DataConnectService default projects/{{project}}/locations/{{location}}/services/{{service_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/dataConnectService:DataConnectService default {{project}}/{{location}}/{{service_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/dataConnectService:DataConnectService default {{location}}/{{service_id}}
/// ```
class DataConnectService extends CustomResource {
  /// Optional. Stores small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveAnnotations`" pulumi-lang-dotnet="`EffectiveAnnotations`" pulumi-lang-go="`effectiveAnnotations`" pulumi-lang-python="`effective_annotations`" pulumi-lang-yaml="`effectiveAnnotations`" pulumi-lang-java="`effectiveAnnotations`">`effective_annotations`</span> for all of the annotations present on the resource.
  late final Output<Map<String, String>?> annotations;

  /// Output only. [Output only] Create time stamp.
  late final Output<String> createTime;

  /// The deletion policy for the database. Setting the field to FORCE allows the
  /// Service to be deleted even if a Schema or Connector is present. By default,
  /// the Service deletion will only succeed when no Schema or Connectors are
  /// present.
  /// Possible values: DEFAULT, FORCE
  late final Output<String?> deletionPolicy;

  /// Optional. Mutable human-readable name. 63 character limit.
  late final Output<String?> displayName;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Output only. This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  /// [AIP-154](https://google.aip.dev/154)
  late final Output<String> etag;

  /// Optional. Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The region in which the service resides, e.g. "us-central1" or "asia-east1".
  late final Output<String> location;

  /// Identifier. The relative resource name of the Firebase Data Connect service, in the
  /// format:
  /// ```
  /// projects/{project}/locations/{location}/services/{service}
  /// ```
  /// Note that the service ID is specific to Firebase Data Connect and does not
  /// correspond to any of the instance IDs of the underlying data source
  /// connections.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Output only. A field that if true, indicates that the system is working update the
  /// service.
  late final Output<bool> reconciling;

  /// Required. The ID to use for the service, which will become the final component of the
  /// service's resource name.
  late final Output<String> serviceId;

  /// Output only. System-assigned, unique identifier.
  late final Output<String> uid;

  /// Output only. [Output only] Update time stamp.
  late final Output<String> updateTime;

  DataConnectService(
    String name, {
    DataConnectServiceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/dataConnectService:DataConnectService',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = Output.createUnknown<Map<String, String>?>();
    this.createTime = Output.createUnknown<String>();
    this.deletionPolicy = Output.createUnknown<String?>();
    this.displayName = Output.createUnknown<String?>();
    this.effectiveAnnotations = Output.createUnknown<Map<String, String>>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.etag = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.reconciling = Output.createUnknown<bool>();
    this.serviceId = Output.createUnknown<String>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
