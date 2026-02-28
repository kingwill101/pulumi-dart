import 'package:pulumi/pulumi.dart' as pulumi;
import 'unit_kind_args.dart';
import 'unit_kind_dependency.dart';
import 'unit_kind_input_variable_mapping.dart';
import 'unit_kind_output_variable_mapping.dart';

/// A UnitKind serves as a template or type definition for a group of Units. Units that belong to the same UnitKind are managed together, follow the same release model, and are typically updated together through rollouts.
///
///
/// ## Example Usage
///
/// ### Saas Runtime Unit Kind Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const exampleSaas = new gcp.saasruntime.SaaS("example_saas", {
///     saasId: "example-saas",
///     location: "us-east1",
///     locations: [{
///         name: "us-east1",
///     }],
/// });
/// const clusterUnitKind = new gcp.saasruntime.UnitKind("cluster_unit_kind", {
///     location: "us-east1",
///     unitKindId: "cluster-unitkind",
///     saas: exampleSaas.id,
///     defaultRelease: "projects/my-project-name/locations/us-east1/releases/example-release",
/// });
/// const example = new gcp.saasruntime.UnitKind("example", {
///     location: "us-east1",
///     unitKindId: "app-unitkind",
///     saas: exampleSaas.id,
///     dependencies: [{
///         unitKind: clusterUnitKind.id,
///         alias: "cluster",
///     }],
/// });
/// const exampleRelease = new gcp.saasruntime.Release("example_release", {
///     location: "us-east1",
///     releaseId: "example-release",
///     unitKind: clusterUnitKind.id,
///     blueprint: {
///         "package": "us-central1-docker.pkg.dev/ci-test-project-188019/test-repo/tf-test-easysaas-alpha-image@sha256:7992fdbaeaf998ecd31a7f937bb26e38a781ecf49b24857a6176c1e9bfc299ee",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example_saas = gcp.saasruntime.SaaS("example_saas",
///     saas_id="example-saas",
///     location="us-east1",
///     locations=[{
///         "name": "us-east1",
///     }])
/// cluster_unit_kind = gcp.saasruntime.UnitKind("cluster_unit_kind",
///     location="us-east1",
///     unit_kind_id="cluster-unitkind",
///     saas=example_saas.id,
///     default_release="projects/my-project-name/locations/us-east1/releases/example-release")
/// example = gcp.saasruntime.UnitKind("example",
///     location="us-east1",
///     unit_kind_id="app-unitkind",
///     saas=example_saas.id,
///     dependencies=[{
///         "unit_kind": cluster_unit_kind.id,
///         "alias": "cluster",
///     }])
/// example_release = gcp.saasruntime.Release("example_release",
///     location="us-east1",
///     release_id="example-release",
///     unit_kind=cluster_unit_kind.id,
///     blueprint={
///         "package": "us-central1-docker.pkg.dev/ci-test-project-188019/test-repo/tf-test-easysaas-alpha-image@sha256:7992fdbaeaf998ecd31a7f937bb26e38a781ecf49b24857a6176c1e9bfc299ee",
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
///     var exampleSaas = new Gcp.SaaSRuntime.SaaS("example_saas", new()
///     {
///         SaasId = "example-saas",
///         Location = "us-east1",
///         Locations = new[]
///         {
///             new Gcp.SaaSRuntime.Inputs.SaaSLocationArgs
///             {
///                 Name = "us-east1",
///             },
///         },
///     });
///
///     var clusterUnitKind = new Gcp.SaaSRuntime.UnitKind("cluster_unit_kind", new()
///     {
///         Location = "us-east1",
///         UnitKindId = "cluster-unitkind",
///         Saas = exampleSaas.Id,
///         DefaultRelease = "projects/my-project-name/locations/us-east1/releases/example-release",
///     });
///
///     var example = new Gcp.SaaSRuntime.UnitKind("example", new()
///     {
///         Location = "us-east1",
///         UnitKindId = "app-unitkind",
///         Saas = exampleSaas.Id,
///         Dependencies = new[]
///         {
///             new Gcp.SaaSRuntime.Inputs.UnitKindDependencyArgs
///             {
///                 UnitKind = clusterUnitKind.Id,
///                 Alias = "cluster",
///             },
///         },
///     });
///
///     var exampleRelease = new Gcp.SaaSRuntime.Release("example_release", new()
///     {
///         Location = "us-east1",
///         ReleaseId = "example-release",
///         UnitKind = clusterUnitKind.Id,
///         Blueprint = new Gcp.SaaSRuntime.Inputs.ReleaseBlueprintArgs
///         {
///             Package = "us-central1-docker.pkg.dev/ci-test-project-188019/test-repo/tf-test-easysaas-alpha-image@sha256:7992fdbaeaf998ecd31a7f937bb26e38a781ecf49b24857a6176c1e9bfc299ee",
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
/// 		exampleSaas, err := saasruntime.NewSaaS(ctx, "example_saas", &saasruntime.SaaSArgs{
/// 			SaasId:   pulumi.String("example-saas"),
/// 			Location: pulumi.String("us-east1"),
/// 			Locations: saasruntime.SaaSLocationArray{
/// 				&saasruntime.SaaSLocationArgs{
/// 					Name: pulumi.String("us-east1"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		clusterUnitKind, err := saasruntime.NewUnitKind(ctx, "cluster_unit_kind", &saasruntime.UnitKindArgs{
/// 			Location:       pulumi.String("us-east1"),
/// 			UnitKindId:     pulumi.String("cluster-unitkind"),
/// 			Saas:           exampleSaas.ID(),
/// 			DefaultRelease: pulumi.String("projects/my-project-name/locations/us-east1/releases/example-release"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = saasruntime.NewUnitKind(ctx, "example", &saasruntime.UnitKindArgs{
/// 			Location:   pulumi.String("us-east1"),
/// 			UnitKindId: pulumi.String("app-unitkind"),
/// 			Saas:       exampleSaas.ID(),
/// 			Dependencies: saasruntime.UnitKindDependencyArray{
/// 				&saasruntime.UnitKindDependencyArgs{
/// 					UnitKind: clusterUnitKind.ID(),
/// 					Alias:    pulumi.String("cluster"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = saasruntime.NewRelease(ctx, "example_release", &saasruntime.ReleaseArgs{
/// 			Location:  pulumi.String("us-east1"),
/// 			ReleaseId: pulumi.String("example-release"),
/// 			UnitKind:  clusterUnitKind.ID(),
/// 			Blueprint: &saasruntime.ReleaseBlueprintArgs{
/// 				Package: pulumi.String("us-central1-docker.pkg.dev/ci-test-project-188019/test-repo/tf-test-easysaas-alpha-image@sha256:7992fdbaeaf998ecd31a7f937bb26e38a781ecf49b24857a6176c1e9bfc299ee"),
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
/// import com.pulumi.gcp.saasruntime.UnitKind;
/// import com.pulumi.gcp.saasruntime.UnitKindArgs;
/// import com.pulumi.gcp.saasruntime.inputs.UnitKindDependencyArgs;
/// import com.pulumi.gcp.saasruntime.Release;
/// import com.pulumi.gcp.saasruntime.ReleaseArgs;
/// import com.pulumi.gcp.saasruntime.inputs.ReleaseBlueprintArgs;
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
///         var exampleSaas = new SaaS("exampleSaas", SaaSArgs.builder()
///             .saasId("example-saas")
///             .location("us-east1")
///             .locations(SaaSLocationArgs.builder()
///                 .name("us-east1")
///                 .build())
///             .build());
///
///         var clusterUnitKind = new UnitKind("clusterUnitKind", UnitKindArgs.builder()
///             .location("us-east1")
///             .unitKindId("cluster-unitkind")
///             .saas(exampleSaas.id())
///             .defaultRelease("projects/my-project-name/locations/us-east1/releases/example-release")
///             .build());
///
///         var example = new UnitKind("example", UnitKindArgs.builder()
///             .location("us-east1")
///             .unitKindId("app-unitkind")
///             .saas(exampleSaas.id())
///             .dependencies(UnitKindDependencyArgs.builder()
///                 .unitKind(clusterUnitKind.id())
///                 .alias("cluster")
///                 .build())
///             .build());
///
///         var exampleRelease = new Release("exampleRelease", ReleaseArgs.builder()
///             .location("us-east1")
///             .releaseId("example-release")
///             .unitKind(clusterUnitKind.id())
///             .blueprint(ReleaseBlueprintArgs.builder()
///                 .package_("us-central1-docker.pkg.dev/ci-test-project-188019/test-repo/tf-test-easysaas-alpha-image@sha256:7992fdbaeaf998ecd31a7f937bb26e38a781ecf49b24857a6176c1e9bfc299ee")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleSaas:
///     type: gcp:saasruntime:SaaS
///     name: example_saas
///     properties:
///       saasId: example-saas
///       location: us-east1
///       locations:
///         - name: us-east1
///   clusterUnitKind:
///     type: gcp:saasruntime:UnitKind
///     name: cluster_unit_kind
///     properties:
///       location: us-east1
///       unitKindId: cluster-unitkind
///       saas: ${exampleSaas.id}
///       defaultRelease: projects/my-project-name/locations/us-east1/releases/example-release
///   example:
///     type: gcp:saasruntime:UnitKind
///     properties:
///       location: us-east1
///       unitKindId: app-unitkind
///       saas: ${exampleSaas.id}
///       dependencies:
///         - unitKind: ${clusterUnitKind.id}
///           alias: cluster
///   exampleRelease:
///     type: gcp:saasruntime:Release
///     name: example_release
///     properties:
///       location: us-east1
///       releaseId: example-release
///       unitKind: ${clusterUnitKind.id}
///       blueprint:
///         package: us-central1-docker.pkg.dev/ci-test-project-188019/test-repo/tf-test-easysaas-alpha-image@sha256:7992fdbaeaf998ecd31a7f937bb26e38a781ecf49b24857a6176c1e9bfc299ee
/// ```
///
///
/// ## Import
///
/// UnitKind can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/unitKinds/{{unit_kind_id}}`
///
/// * `{{project}}/{{location}}/{{unit_kind_id}}`
///
/// * `{{location}}/{{unit_kind_id}}`
///
/// When using the `pulumi import` command, UnitKind can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:saasruntime/unitKind:UnitKind default projects/{{project}}/locations/{{location}}/unitKinds/{{unit_kind_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:saasruntime/unitKind:UnitKind default {{project}}/{{location}}/{{unit_kind_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:saasruntime/unitKind:UnitKind default {{location}}/{{unit_kind_id}}
/// ```
class UnitKind extends pulumi.CustomResource {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// The timestamp when the resource was created.
  late final pulumi.Output<String> createTime;

  /// A reference to the Release object to use as default for creating new units
  /// of this UnitKind.
  /// If not specified, a new unit must explicitly reference which release to use
  /// for its creation.
  late final pulumi.Output<String?> defaultRelease;

  /// List of other unit kinds that this release will depend on. Dependencies
  /// will be automatically provisioned if not found. Maximum 10.
  /// Structure is documented below.
  late final pulumi.Output<List<UnitKindDependency>?> dependencies;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// An opaque value that uniquely identifies a version or
  /// generation of a resource. It can be used to confirm that the client
  /// and server agree on the ordering of a resource being written.
  late final pulumi.Output<String> etag;

  /// List of inputVariables for this release that will either be retrieved from
  /// a dependency’s outputVariables, or will be passed on to a dependency’s
  /// inputVariables. Maximum 100.
  /// Structure is documented below.
  late final pulumi.Output<List<UnitKindInputVariableMapping>?>
      inputVariableMappings;

  /// The labels on the resource, which can be used for categorization.
  /// similar to Kubernetes resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// Identifier. The resource name (full URI of the resource) following the standard naming
  /// scheme:
  /// "projects/{project}/locations/{location}/unitKinds/{unitKind}"
  late final pulumi.Output<String> name;

  /// List of outputVariables for this unit kind will be passed to this unit's
  /// outputVariables. Maximum 100.
  /// Structure is documented below.
  late final pulumi.Output<List<UnitKindOutputVariableMapping>?>
      outputVariableMappings;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// A reference to the Saas that defines the product (managed service) that
  /// the producer wants to manage with SaaS Runtime. Part of the SaaS Runtime
  /// common data model. Immutable once set.
  late final pulumi.Output<String> saas;

  /// The unique identifier of the resource. UID is unique in the time
  /// and space for this resource within the scope of the service. It is
  /// typically generated by the server on successful creation of a resource
  /// and must not be changed. UID is used to uniquely identify resources
  /// with resource name reuses. This should be a UUID4.
  late final pulumi.Output<String> uid;

  /// The ID value for the new unit kind.
  late final pulumi.Output<String> unitKindId;

  /// The timestamp when the resource was last updated. Any
  /// change to the resource made by users must refresh this value.
  /// Changes to a resource made by the service should refresh this value.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [UnitKind].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UnitKind]. {@macro pulumi_saasruntime_unit_kind_unit_kind_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UnitKind(
    String name, {
    UnitKindArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:saasruntime/unitKind:UnitKind',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.createTime = registerOutput<String>('createTime');
    this.defaultRelease = registerOutput<String?>('defaultRelease');
    this.dependencies =
        registerOutput<List<UnitKindDependency>?>('dependencies');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.inputVariableMappings =
        registerOutput<List<UnitKindInputVariableMapping>?>(
            'inputVariableMappings');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.outputVariableMappings =
        registerOutput<List<UnitKindOutputVariableMapping>?>(
            'outputVariableMappings');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.saas = registerOutput<String>('saas');
    this.uid = registerOutput<String>('uid');
    this.unitKindId = registerOutput<String>('unitKindId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
