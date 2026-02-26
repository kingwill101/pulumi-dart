import 'package:pulumi/pulumi.dart';
import '../gdc_service_instance_gdce_cluster/gdc_service_instance_gdce_cluster.dart';
import 'gdc_service_instance_args.dart';

/// A service instance is an instance of the Dataproc operator running on a GDC cluster.
///
///
/// To get more information about ServiceInstance, see:
///
/// * [API documentation](https://cloud.google.com/dataproc-gdc/docs/reference/rest/v1/projects.locations.serviceInstances)
/// * How-to Guides
/// * [Dataproc Intro](https://cloud.google.com/dataproc/)
///
/// ## Example Usage
///
/// ### Dataprocgdc Serviceinstance
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const service_instance = new gcp.dataproc.GdcServiceInstance("service-instance", {
/// serviceInstanceId: "tf-e2e-service-instance",
/// project: "my-project",
/// location: "us-west2",
/// gdceCluster: {
/// gdceCluster: "projects/gdce-cluster-monitoring/locations/us-west2/clusters/gdce-prism-prober-ord106",
/// },
/// displayName: "A service instance",
/// labels: {
/// "test-label": "label-value",
/// },
/// serviceAccount: "dataprocgdc-cep-workflows@gdce-cluster-monitoring.iam.gserviceaccount.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// service_instance = gcp.dataproc.GdcServiceInstance("service-instance",
/// service_instance_id="tf-e2e-service-instance",
/// project="my-project",
/// location="us-west2",
/// gdce_cluster={
/// "gdce_cluster": "projects/gdce-cluster-monitoring/locations/us-west2/clusters/gdce-prism-prober-ord106",
/// },
/// display_name="A service instance",
/// labels={
/// "test-label": "label-value",
/// },
/// service_account="dataprocgdc-cep-workflows@gdce-cluster-monitoring.iam.gserviceaccount.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var service_instance = new Gcp.Dataproc.GdcServiceInstance("service-instance", new()
/// {
/// ServiceInstanceId = "tf-e2e-service-instance",
/// Project = "my-project",
/// Location = "us-west2",
/// GdceCluster = new Gcp.Dataproc.Inputs.GdcServiceInstanceGdceClusterArgs
/// {
/// GdceCluster = "projects/gdce-cluster-monitoring/locations/us-west2/clusters/gdce-prism-prober-ord106",
/// },
/// DisplayName = "A service instance",
/// Labels =
/// {
/// { "test-label", "label-value" },
/// },
/// ServiceAccount = "dataprocgdc-cep-workflows@gdce-cluster-monitoring.iam.gserviceaccount.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataproc.NewGdcServiceInstance(ctx, "service-instance", &dataproc.GdcServiceInstanceArgs{
/// ServiceInstanceId: pulumi.String("tf-e2e-service-instance"),
/// Project:           pulumi.String("my-project"),
/// Location:          pulumi.String("us-west2"),
/// GdceCluster: &dataproc.GdcServiceInstanceGdceClusterArgs{
/// GdceCluster: pulumi.String("projects/gdce-cluster-monitoring/locations/us-west2/clusters/gdce-prism-prober-ord106"),
/// },
/// DisplayName: pulumi.String("A service instance"),
/// Labels: pulumi.StringMap{
/// "test-label": pulumi.String("label-value"),
/// },
/// ServiceAccount: pulumi.String("dataprocgdc-cep-workflows@gdce-cluster-monitoring.iam.gserviceaccount.com"),
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
/// import com.pulumi.gcp.dataproc.GdcServiceInstance;
/// import com.pulumi.gcp.dataproc.GdcServiceInstanceArgs;
/// import com.pulumi.gcp.dataproc.inputs.GdcServiceInstanceGdceClusterArgs;
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
/// var service_instance = new GdcServiceInstance("service-instance", GdcServiceInstanceArgs.builder()
/// .serviceInstanceId("tf-e2e-service-instance")
/// .project("my-project")
/// .location("us-west2")
/// .gdceCluster(GdcServiceInstanceGdceClusterArgs.builder()
/// .gdceCluster("projects/gdce-cluster-monitoring/locations/us-west2/clusters/gdce-prism-prober-ord106")
/// .build())
/// .displayName("A service instance")
/// .labels(Map.of("test-label", "label-value"))
/// .serviceAccount("dataprocgdc-cep-workflows@gdce-cluster-monitoring.iam.gserviceaccount.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// service-instance:
/// type: gcp:dataproc:GdcServiceInstance
/// properties:
/// serviceInstanceId: tf-e2e-service-instance
/// project: my-project
/// location: us-west2
/// gdceCluster:
/// gdceCluster: projects/gdce-cluster-monitoring/locations/us-west2/clusters/gdce-prism-prober-ord106
/// displayName: A service instance
/// labels:
/// test-label: label-value
/// serviceAccount: dataprocgdc-cep-workflows@gdce-cluster-monitoring.iam.gserviceaccount.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ServiceInstance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/serviceInstances/{{service_instance_id}}`
///
/// * `{{project}}/{{location}}/{{service_instance_id}}`
///
/// * `{{location}}/{{service_instance_id}}`
///
/// When using the `pulumi import` command, ServiceInstance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataproc/gdcServiceInstance:GdcServiceInstance default projects/{{project}}/locations/{{location}}/serviceInstances/{{service_instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataproc/gdcServiceInstance:GdcServiceInstance default {{project}}/{{location}}/{{service_instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataproc/gdcServiceInstance:GdcServiceInstance default {{location}}/{{service_instance_id}}
/// ```
class GdcServiceInstance extends CustomResource {
  /// The timestamp when the resource was created.
  late final Output<String> createTime;

  /// User-provided human-readable name to be used in user interfaces.
  late final Output<String?> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Effective service account associated with ServiceInstance. This will be the<span pulumi-lang-nodejs=" serviceAccount " pulumi-lang-dotnet=" ServiceAccount " pulumi-lang-go=" serviceAccount " pulumi-lang-python=" service_account " pulumi-lang-yaml=" serviceAccount " pulumi-lang-java=" serviceAccount "> service_account </span>if specified. Otherwise, it will be an automatically created per-resource P4SA that also automatically has Fleet Workload. Identity bindings applied.
  late final Output<String> effectiveServiceAccount;

  /// Gdce cluster information.
  /// Structure is documented below.
  late final Output<GdcServiceInstanceGdceCluster?> gdceCluster;

  /// The labels to associate with this service instance. Labels may be used for filtering and billing tracking.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Location of the resource.
  late final Output<String> location;

  /// Identifier. The name of the service instance.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Whether the service instance is currently reconciling. True if the current state of the resource does not match the intended state, and the system is working to reconcile them, whether or not the change was user initiated.
  late final Output<bool> reconciling;

  /// The intended state to which the service instance is reconciling. Possible values:
  /// * `CREATING`
  /// * `ACTIVE`
  /// * `DISCONNECTED`
  /// * `DELETING`
  /// * `STOPPING`
  /// * `STOPPED`
  /// * `STARTING`
  /// * `UPDATING`
  /// * `FAILED`
  late final Output<String> requestedState;

  /// Requested service account to associate with ServiceInstance.
  late final Output<String?> serviceAccount;

  /// Id of the service instance.
  late final Output<String> serviceInstanceId;

  /// Spark-specific service instance configuration.
  late final Output<Map<String, dynamic>?> sparkServiceInstanceConfig;

  /// The current state. Possible values:
  /// * `CREATING`
  /// * `ACTIVE`
  /// * `DISCONNECTED`
  /// * `DELETING`
  /// * `STOPPING`
  /// * `STOPPED`
  /// * `STARTING`
  /// * `UPDATING`
  /// * `FAILED`
  late final Output<String> state;

  /// A message explaining the current state.
  late final Output<String> stateMessage;

  /// System generated unique identifier for this service instance, formatted as UUID4.
  late final Output<String> uid;

  /// The timestamp when the resource was most recently updated.
  late final Output<String> updateTime;

  GdcServiceInstance(
    String name, {
    GdcServiceInstanceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/gdcServiceInstance:GdcServiceInstance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.effectiveServiceAccount =
        registerOutput<String>('effectiveServiceAccount');
    this.gdceCluster =
        registerOutput<GdcServiceInstanceGdceCluster?>('gdceCluster');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciling = registerOutput<bool>('reconciling');
    this.requestedState = registerOutput<String>('requestedState');
    this.serviceAccount = registerOutput<String?>('serviceAccount');
    this.serviceInstanceId = registerOutput<String>('serviceInstanceId');
    this.sparkServiceInstanceConfig =
        registerOutput<Map<String, dynamic>?>('sparkServiceInstanceConfig');
    this.state = registerOutput<String>('state');
    this.stateMessage = registerOutput<String>('stateMessage');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
