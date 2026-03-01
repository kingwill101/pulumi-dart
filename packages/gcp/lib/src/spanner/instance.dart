import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_autoscaling_config.dart';

/// An isolated set of Cloud Spanner resources on which databases can be
/// hosted.
///
///
/// To get more information about Instance, see:
///
/// * [API documentation](https://cloud.google.com/spanner/docs/reference/rest/v1/projects.instances)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/spanner/)
///
/// ## Example Usage
///
/// ### Spanner Instance Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.spanner.Instance("example", {
///     config: "regional-us-central1",
///     displayName: "Test Spanner Instance",
///     numNodes: 2,
///     edition: "STANDARD",
///     defaultBackupScheduleType: "AUTOMATIC",
///     labels: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.spanner.Instance("example",
///     config="regional-us-central1",
///     display_name="Test Spanner Instance",
///     num_nodes=2,
///     edition="STANDARD",
///     default_backup_schedule_type="AUTOMATIC",
///     labels={
///         "foo": "bar",
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
///     var example = new Gcp.Spanner.Instance("example", new()
///     {
///         Config = "regional-us-central1",
///         DisplayName = "Test Spanner Instance",
///         NumNodes = 2,
///         Edition = "STANDARD",
///         DefaultBackupScheduleType = "AUTOMATIC",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/spanner"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := spanner.NewInstance(ctx, "example", &spanner.InstanceArgs{
/// 			Config:                    pulumi.String("regional-us-central1"),
/// 			DisplayName:               pulumi.String("Test Spanner Instance"),
/// 			NumNodes:                  pulumi.Int(2),
/// 			Edition:                   pulumi.String("STANDARD"),
/// 			DefaultBackupScheduleType: pulumi.String("AUTOMATIC"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
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
/// import com.pulumi.gcp.spanner.Instance;
/// import com.pulumi.gcp.spanner.InstanceArgs;
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
///         var example = new Instance("example", InstanceArgs.builder()
///             .config("regional-us-central1")
///             .displayName("Test Spanner Instance")
///             .numNodes(2)
///             .edition("STANDARD")
///             .defaultBackupScheduleType("AUTOMATIC")
///             .labels(Map.of("foo", "bar"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:spanner:Instance
///     properties:
///       config: regional-us-central1
///       displayName: Test Spanner Instance
///       numNodes: 2
///       edition: STANDARD
///       defaultBackupScheduleType: AUTOMATIC
///       labels:
///         foo: bar
/// ```
///
/// ### Spanner Instance Processing Units
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.spanner.Instance("example", {
///     config: "regional-us-central1",
///     displayName: "Test Spanner Instance",
///     processingUnits: 200,
///     labels: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.spanner.Instance("example",
///     config="regional-us-central1",
///     display_name="Test Spanner Instance",
///     processing_units=200,
///     labels={
///         "foo": "bar",
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
///     var example = new Gcp.Spanner.Instance("example", new()
///     {
///         Config = "regional-us-central1",
///         DisplayName = "Test Spanner Instance",
///         ProcessingUnits = 200,
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/spanner"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := spanner.NewInstance(ctx, "example", &spanner.InstanceArgs{
/// 			Config:          pulumi.String("regional-us-central1"),
/// 			DisplayName:     pulumi.String("Test Spanner Instance"),
/// 			ProcessingUnits: pulumi.Int(200),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
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
/// import com.pulumi.gcp.spanner.Instance;
/// import com.pulumi.gcp.spanner.InstanceArgs;
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
///         var example = new Instance("example", InstanceArgs.builder()
///             .config("regional-us-central1")
///             .displayName("Test Spanner Instance")
///             .processingUnits(200)
///             .labels(Map.of("foo", "bar"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:spanner:Instance
///     properties:
///       config: regional-us-central1
///       displayName: Test Spanner Instance
///       processingUnits: 200
///       labels:
///         foo: bar
/// ```
///
/// ### Spanner Instance Multi Regional
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.spanner.Instance("example", {
///     config: "nam-eur-asia1",
///     displayName: "Multi Regional Instance",
///     numNodes: 2,
///     labels: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.spanner.Instance("example",
///     config="nam-eur-asia1",
///     display_name="Multi Regional Instance",
///     num_nodes=2,
///     labels={
///         "foo": "bar",
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
///     var example = new Gcp.Spanner.Instance("example", new()
///     {
///         Config = "nam-eur-asia1",
///         DisplayName = "Multi Regional Instance",
///         NumNodes = 2,
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/spanner"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := spanner.NewInstance(ctx, "example", &spanner.InstanceArgs{
/// 			Config:      pulumi.String("nam-eur-asia1"),
/// 			DisplayName: pulumi.String("Multi Regional Instance"),
/// 			NumNodes:    pulumi.Int(2),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
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
/// import com.pulumi.gcp.spanner.Instance;
/// import com.pulumi.gcp.spanner.InstanceArgs;
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
///         var example = new Instance("example", InstanceArgs.builder()
///             .config("nam-eur-asia1")
///             .displayName("Multi Regional Instance")
///             .numNodes(2)
///             .labels(Map.of("foo", "bar"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:spanner:Instance
///     properties:
///       config: nam-eur-asia1
///       displayName: Multi Regional Instance
///       numNodes: 2
///       labels:
///         foo: bar
/// ```
///
///
/// ## Import
///
/// Instance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/instances/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:spanner/instance:Instance default projects/{{project}}/instances/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:spanner/instance:Instance default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:spanner/instance:Instance default {{name}}
/// ```
class Instance extends pulumi.CustomResource {
  late final pulumi.Output<InstanceAutoscalingConfig?> autoscalingConfig;

  /// The name of the instance's configuration (similar but not
  /// quite the same as a region) which defines the geographic placement and
  /// replication of your databases in this instance. It determines where your data
  /// is stored. Values are typically of the form `regional-europe-west1` , `us-central` etc.
  /// In order to obtain a valid list please consult the
  /// [Configuration section of the docs](https://cloud.google.com/spanner/docs/instances).
  late final pulumi.Output<String> config;

  /// Controls the default backup behavior for new databases within the instance.
  /// Note that `AUTOMATIC` is not permitted for free instances, as backups and backup schedules are not allowed for free instances.
  /// if unset or NONE, no default backup schedule will be created for new databases within the instance.
  /// Possible values are: `NONE`, `AUTOMATIC`.
  late final pulumi.Output<String> defaultBackupScheduleType;

  /// The descriptive name for this instance as it appears in UIs. Must be
  /// unique per project and between 4 and 30 characters in length.
  late final pulumi.Output<String> displayName;

  /// The edition selected for this instance. Different editions provide different capabilities at different price points.
  /// Possible values are: `EDITION_UNSPECIFIED`, `STANDARD`, `ENTERPRISE`, `ENTERPRISE_PLUS`.
  late final pulumi.Output<String> edition;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// When deleting a spanner instance, this boolean option will delete all backups of this instance.
  /// This must be set to true if you created a backup manually in the console.
  late final pulumi.Output<bool?> forceDestroy;

  /// The type of this instance. The type can be used to distinguish product variants, that can affect aspects like:
  /// usage restrictions, quotas and billing. Currently this is used to distinguish FREE_INSTANCE vs PROVISIONED instances.
  /// When configured as FREE_INSTANCE, the field `edition` should not be configured.
  /// Possible values are: `PROVISIONED`, `FREE_INSTANCE`.
  late final pulumi.Output<String> instanceType;

  /// An object containing a list of "key": value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// A unique identifier for the instance, which cannot be changed after
  /// the instance is created. The name must be between 6 and 30 characters
  /// in length.
  /// If not provided, a random string starting with `tf-` will be selected.
  late final pulumi.Output<String> name;
  late final pulumi.Output<int> numNodes;
  late final pulumi.Output<int> processingUnits;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Instance status: `CREATING` or `READY`.
  late final pulumi.Output<String> state;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_spanner_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:spanner/instance:Instance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.autoscalingConfig = registerOutput<InstanceAutoscalingConfig?>(
      'autoscalingConfig',
    );
    this.config = registerOutput<String>('config');
    this.defaultBackupScheduleType = registerOutput<String>(
      'defaultBackupScheduleType',
    );
    this.displayName = registerOutput<String>('displayName');
    this.edition = registerOutput<String>('edition');
    this.effectiveLabels = registerOutput<Map<String, String>>(
      'effectiveLabels',
    );
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.instanceType = registerOutput<String>('instanceType');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.numNodes = registerOutput<int>('numNodes');
    this.processingUnits = registerOutput<int>('processingUnits');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
  }
}
