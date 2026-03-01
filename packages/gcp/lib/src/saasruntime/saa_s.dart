import 'package:pulumi/pulumi.dart' as pulumi;
import 'saa_sargs.dart';
import 'saa_slocation.dart';

/// A Saas resource is the top-level representation of a SaaS service managed by a producer. It contains a list of locations where the service is available, which is used by the Rollout system to generate a rollout plan.
///
///
/// ## Example Usage
///
/// ### Saas Runtime Saas Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.saasruntime.SaaS("example", {
///     saasId: "test-saas",
///     location: "global",
///     locations: [
///         {
///             name: "us-central1",
///         },
///         {
///             name: "europe-west1",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.saasruntime.SaaS("example",
///     saas_id="test-saas",
///     location="global",
///     locations=[
///         {
///             "name": "us-central1",
///         },
///         {
///             "name": "europe-west1",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.SaaSRuntime.SaaS("example", new()
///     {
///         SaasId = "test-saas",
///         Location = "global",
///         Locations = new[]
///         {
///             new Gcp.SaaSRuntime.Inputs.SaaSLocationArgs
///             {
///                 Name = "us-central1",
///             },
///             new Gcp.SaaSRuntime.Inputs.SaaSLocationArgs
///             {
///                 Name = "europe-west1",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/saasruntime"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := saasruntime.NewSaaS(ctx, "example", &saasruntime.SaaSArgs{
/// 			SaasId:   pulumi.String("test-saas"),
/// 			Location: pulumi.String("global"),
/// 			Locations: saasruntime.SaaSLocationArray{
/// 				&saasruntime.SaaSLocationArgs{
/// 					Name: pulumi.String("us-central1"),
/// 				},
/// 				&saasruntime.SaaSLocationArgs{
/// 					Name: pulumi.String("europe-west1"),
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
/// import com.pulumi.gcp.saasruntime.SaaS;
/// import com.pulumi.gcp.saasruntime.SaaSArgs;
/// import com.pulumi.gcp.saasruntime.inputs.SaaSLocationArgs;
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
///         var example = new SaaS("example", SaaSArgs.builder()
///             .saasId("test-saas")
///             .location("global")
///             .locations(
///                 SaaSLocationArgs.builder()
///                     .name("us-central1")
///                     .build(),
///                 SaaSLocationArgs.builder()
///                     .name("europe-west1")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:saasruntime:SaaS
///     properties:
///       saasId: test-saas
///       location: global
///       locations:
///         - name: us-central1
///         - name: europe-west1
/// ```
///
///
/// ## Import
///
/// Saas can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/saas/{{saas_id}}`
///
/// * `{{project}}/{{location}}/{{saas_id}}`
///
/// * `{{location}}/{{saas_id}}`
///
/// When using the `pulumi import` command, Saas can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:saasruntime/saaS:SaaS default projects/{{project}}/locations/{{location}}/saas/{{saas_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:saasruntime/saaS:SaaS default {{project}}/{{location}}/{{saas_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:saasruntime/saaS:SaaS default {{location}}/{{saas_id}}
/// ```
class SaaS extends pulumi.CustomResource {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// The timestamp when the resource was created.
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// An opaque value that uniquely identifies a version or
  /// generation of a resource. It can be used to confirm that the client
  /// and server agree on the ordering of a resource being written.
  late final pulumi.Output<String> etag;

  /// The labels on the resource, which can be used for categorization.
  /// similar to Kubernetes resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// List of locations that the service is available in. Rollout refers to the
  /// list to generate a rollout plan.
  /// Structure is documented below.
  late final pulumi.Output<List<SaaSLocation>?> locations;

  /// Identifier. The resource name (full URI of the resource) following the standard naming
  /// scheme:
  /// "projects/{project}/locations/{location}/saas/{saas}"
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The ID value for the new saas.
  late final pulumi.Output<String> saasId;

  /// The unique identifier of the resource. UID is unique in the time
  /// and space for this resource within the scope of the service. It is
  /// typically generated by the server on successful creation of a resource
  /// and must not be changed. UID is used to uniquely identify resources
  /// with resource name reuses. This should be a UUID4.
  late final pulumi.Output<String> uid;

  /// The timestamp when the resource was last updated. Any
  /// change to the resource made by users must refresh this value.
  /// Changes to a resource made by the service should refresh this value.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [SaaS].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SaaS]. {@macro pulumi_saasruntime_saa_s_saa_sargs_doc}
  /// [options] Resource options controlling this resource's behavior.
  SaaS(String name, {SaaSArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'gcp:saasruntime/saaS:SaaS',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.createTime = registerOutput<String>('createTime');
    this.effectiveAnnotations = registerOutput<Map<String, String>>(
      'effectiveAnnotations',
    );
    this.effectiveLabels = registerOutput<Map<String, String>>(
      'effectiveLabels',
    );
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.locations = registerOutput<List<SaaSLocation>?>('locations');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.saasId = registerOutput<String>('saasId');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
