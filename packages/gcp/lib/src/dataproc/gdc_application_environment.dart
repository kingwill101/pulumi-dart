import 'package:pulumi/pulumi.dart' as pulumi;
import 'gdc_application_environment_args.dart';
import 'gdc_application_environment_spark_application_environment_config.dart';

/// An ApplicationEnvironment contains shared configuration that may be referenced by multiple SparkApplications.
///
///
/// To get more information about ApplicationEnvironment, see:
///
/// * [API documentation](https://cloud.google.com/dataproc-gdc/docs/reference/rest/v1/projects.locations.applicationEnvironments)
/// * How-to Guides
/// * [Dataproc Intro](https://cloud.google.com/dataproc/)
///
/// ## Example Usage
///
/// ### Dataprocgdc Applicationenvironment Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const application_environment = new gcp.dataproc.GdcApplicationEnvironment("application-environment", {
///     applicationEnvironmentId: "dp-tf-e2e-application-environment-basic",
///     serviceinstance: "do-not-delete-dataproc-gdc-instance",
///     project: "my-project",
///     location: "us-west2",
///     namespace: "default",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// application_environment = gcp.dataproc.GdcApplicationEnvironment("application-environment",
///     application_environment_id="dp-tf-e2e-application-environment-basic",
///     serviceinstance="do-not-delete-dataproc-gdc-instance",
///     project="my-project",
///     location="us-west2",
///     namespace="default")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var application_environment = new Gcp.Dataproc.GdcApplicationEnvironment("application-environment", new()
///     {
///         ApplicationEnvironmentId = "dp-tf-e2e-application-environment-basic",
///         Serviceinstance = "do-not-delete-dataproc-gdc-instance",
///         Project = "my-project",
///         Location = "us-west2",
///         Namespace = "default",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataproc.NewGdcApplicationEnvironment(ctx, "application-environment", &dataproc.GdcApplicationEnvironmentArgs{
/// 			ApplicationEnvironmentId: pulumi.String("dp-tf-e2e-application-environment-basic"),
/// 			Serviceinstance:          pulumi.String("do-not-delete-dataproc-gdc-instance"),
/// 			Project:                  pulumi.String("my-project"),
/// 			Location:                 pulumi.String("us-west2"),
/// 			Namespace:                pulumi.String("default"),
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
/// import com.pulumi.gcp.dataproc.GdcApplicationEnvironment;
/// import com.pulumi.gcp.dataproc.GdcApplicationEnvironmentArgs;
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
///         var application_environment = new GdcApplicationEnvironment("application-environment", GdcApplicationEnvironmentArgs.builder()
///             .applicationEnvironmentId("dp-tf-e2e-application-environment-basic")
///             .serviceinstance("do-not-delete-dataproc-gdc-instance")
///             .project("my-project")
///             .location("us-west2")
///             .namespace("default")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   application-environment:
///     type: gcp:dataproc:GdcApplicationEnvironment
///     properties:
///       applicationEnvironmentId: dp-tf-e2e-application-environment-basic
///       serviceinstance: do-not-delete-dataproc-gdc-instance
///       project: my-project
///       location: us-west2
///       namespace: default
/// ```
///
/// ### Dataprocgdc Applicationenvironment
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const application_environment = new gcp.dataproc.GdcApplicationEnvironment("application-environment", {
///     applicationEnvironmentId: "dp-tf-e2e-application-environment",
///     serviceinstance: "do-not-delete-dataproc-gdc-instance",
///     project: "my-project",
///     location: "us-west2",
///     namespace: "default",
///     displayName: "An application environment",
///     labels: {
///         "test-label": "label-value",
///     },
///     annotations: {
///         an_annotation: "annotation_value",
///     },
///     sparkApplicationEnvironmentConfig: {
///         defaultProperties: {
///             "spark.executor.memory": "4g",
///         },
///         defaultVersion: "1.2",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// application_environment = gcp.dataproc.GdcApplicationEnvironment("application-environment",
///     application_environment_id="dp-tf-e2e-application-environment",
///     serviceinstance="do-not-delete-dataproc-gdc-instance",
///     project="my-project",
///     location="us-west2",
///     namespace="default",
///     display_name="An application environment",
///     labels={
///         "test-label": "label-value",
///     },
///     annotations={
///         "an_annotation": "annotation_value",
///     },
///     spark_application_environment_config={
///         "default_properties": {
///             "spark.executor.memory": "4g",
///         },
///         "default_version": "1.2",
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
///     var application_environment = new Gcp.Dataproc.GdcApplicationEnvironment("application-environment", new()
///     {
///         ApplicationEnvironmentId = "dp-tf-e2e-application-environment",
///         Serviceinstance = "do-not-delete-dataproc-gdc-instance",
///         Project = "my-project",
///         Location = "us-west2",
///         Namespace = "default",
///         DisplayName = "An application environment",
///         Labels =
///         {
///             { "test-label", "label-value" },
///         },
///         Annotations =
///         {
///             { "an_annotation", "annotation_value" },
///         },
///         SparkApplicationEnvironmentConfig = new Gcp.Dataproc.Inputs.GdcApplicationEnvironmentSparkApplicationEnvironmentConfigArgs
///         {
///             DefaultProperties =
///             {
///                 { "spark.executor.memory", "4g" },
///             },
///             DefaultVersion = "1.2",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataproc.NewGdcApplicationEnvironment(ctx, "application-environment", &dataproc.GdcApplicationEnvironmentArgs{
/// 			ApplicationEnvironmentId: pulumi.String("dp-tf-e2e-application-environment"),
/// 			Serviceinstance:          pulumi.String("do-not-delete-dataproc-gdc-instance"),
/// 			Project:                  pulumi.String("my-project"),
/// 			Location:                 pulumi.String("us-west2"),
/// 			Namespace:                pulumi.String("default"),
/// 			DisplayName:              pulumi.String("An application environment"),
/// 			Labels: pulumi.StringMap{
/// 				"test-label": pulumi.String("label-value"),
/// 			},
/// 			Annotations: pulumi.StringMap{
/// 				"an_annotation": pulumi.String("annotation_value"),
/// 			},
/// 			SparkApplicationEnvironmentConfig: &dataproc.GdcApplicationEnvironmentSparkApplicationEnvironmentConfigArgs{
/// 				DefaultProperties: pulumi.StringMap{
/// 					"spark.executor.memory": pulumi.String("4g"),
/// 				},
/// 				DefaultVersion: pulumi.String("1.2"),
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
/// import com.pulumi.gcp.dataproc.GdcApplicationEnvironment;
/// import com.pulumi.gcp.dataproc.GdcApplicationEnvironmentArgs;
/// import com.pulumi.gcp.dataproc.inputs.GdcApplicationEnvironmentSparkApplicationEnvironmentConfigArgs;
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
///         var application_environment = new GdcApplicationEnvironment("application-environment", GdcApplicationEnvironmentArgs.builder()
///             .applicationEnvironmentId("dp-tf-e2e-application-environment")
///             .serviceinstance("do-not-delete-dataproc-gdc-instance")
///             .project("my-project")
///             .location("us-west2")
///             .namespace("default")
///             .displayName("An application environment")
///             .labels(Map.of("test-label", "label-value"))
///             .annotations(Map.of("an_annotation", "annotation_value"))
///             .sparkApplicationEnvironmentConfig(GdcApplicationEnvironmentSparkApplicationEnvironmentConfigArgs.builder()
///                 .defaultProperties(Map.of("spark.executor.memory", "4g"))
///                 .defaultVersion("1.2")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   application-environment:
///     type: gcp:dataproc:GdcApplicationEnvironment
///     properties:
///       applicationEnvironmentId: dp-tf-e2e-application-environment
///       serviceinstance: do-not-delete-dataproc-gdc-instance
///       project: my-project
///       location: us-west2
///       namespace: default
///       displayName: An application environment
///       labels:
///         test-label: label-value
///       annotations:
///         an_annotation: annotation_value
///       sparkApplicationEnvironmentConfig:
///         defaultProperties:
///           spark.executor.memory: 4g
///         defaultVersion: '1.2'
/// ```
///
///
/// ## Import
///
/// ApplicationEnvironment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/serviceInstances/{{serviceinstance}}/applicationEnvironments/{{application_environment_id}}`
///
/// * `{{project}}/{{location}}/{{serviceinstance}}/{{application_environment_id}}`
///
/// * `{{location}}/{{serviceinstance}}/{{application_environment_id}}`
///
/// When using the `pulumi import` command, ApplicationEnvironment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataproc/gdcApplicationEnvironment:GdcApplicationEnvironment default projects/{{project}}/locations/{{location}}/serviceInstances/{{serviceinstance}}/applicationEnvironments/{{application_environment_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataproc/gdcApplicationEnvironment:GdcApplicationEnvironment default {{project}}/{{location}}/{{serviceinstance}}/{{application_environment_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataproc/gdcApplicationEnvironment:GdcApplicationEnvironment default {{location}}/{{serviceinstance}}/{{application_environment_id}}
/// ```
class GdcApplicationEnvironment extends pulumi.CustomResource {
  /// The annotations to associate with this application environment. Annotations may be used to store client information, but are not used by the server.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// The id of the application environment
  late final pulumi.Output<String?> applicationEnvironmentId;

  /// The timestamp when the resource was created.
  late final pulumi.Output<String> createTime;

  /// User-provided human-readable name to be used in user interfaces.
  late final pulumi.Output<String?> displayName;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The labels to associate with this application environment. Labels may be used for filtering and billing tracking.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location of the application environment
  late final pulumi.Output<String> location;

  /// Identifier. The name of the application environment. Format: projects/{project}/locations/{location}/serviceInstances/{service_instance}/applicationEnvironments/{application_environment_id}
  late final pulumi.Output<String> name;

  /// The name of the namespace in which to create this ApplicationEnvironment. This namespace must already exist in the cluster
  late final pulumi.Output<String?> namespace;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The id of the service instance to which this application environment belongs.
  late final pulumi.Output<String> serviceinstance;

  /// Represents the SparkApplicationEnvironmentConfig.
  /// Structure is documented below.
  late final pulumi
      .Output<GdcApplicationEnvironmentSparkApplicationEnvironmentConfig?>
      sparkApplicationEnvironmentConfig;

  /// System generated unique identifier for this application environment, formatted as UUID4.
  late final pulumi.Output<String> uid;

  /// The timestamp when the resource was most recently updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [GdcApplicationEnvironment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GdcApplicationEnvironment]. {@macro pulumi_dataproc_gdc_application_environment_gdc_application_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GdcApplicationEnvironment(
    String name, {
    GdcApplicationEnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/gdcApplicationEnvironment:GdcApplicationEnvironment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.applicationEnvironmentId =
        registerOutput<String?>('applicationEnvironmentId');
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.namespace = registerOutput<String?>('namespace');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.serviceinstance = registerOutput<String>('serviceinstance');
    this.sparkApplicationEnvironmentConfig = registerOutput<
            GdcApplicationEnvironmentSparkApplicationEnvironmentConfig?>(
        'sparkApplicationEnvironmentConfig');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
