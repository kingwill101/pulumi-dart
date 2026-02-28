import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicloud_data_transfer_config_args.dart';
import 'multicloud_data_transfer_config_service.dart';

/// 'Manage Multicloud Data Transfer Configs'
///
///
/// To get more information about MulticloudDataTransferConfig, see:
///
/// * [API documentation](https://docs.cloud.google.com/network-connectivity/docs/reference/networkconnectivity/rest/v1/projects.locations.multicloudDataTransferConfigs)
/// * How-to Guides
/// * [QUICKSTART_TITLE](https://docs.cloud.google.com/data-transfer-essentials/docs/create-resources)
///
/// ## Example Usage
///
/// ### Network Connectivity Multicloud Data Transfer Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.networkconnectivity.MulticloudDataTransferConfig("example", {
///     name: "basic_config",
///     location: "europe-west1",
///     description: "A basic multicloud data transfer configs",
///     labels: {
///         foo: "bar",
///     },
///     services: [
///         {
///             serviceName: "big-query",
///         },
///         {
///             serviceName: "cloud-storage",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.networkconnectivity.MulticloudDataTransferConfig("example",
///     name="basic_config",
///     location="europe-west1",
///     description="A basic multicloud data transfer configs",
///     labels={
///         "foo": "bar",
///     },
///     services=[
///         {
///             "service_name": "big-query",
///         },
///         {
///             "service_name": "cloud-storage",
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
///     var example = new Gcp.NetworkConnectivity.MulticloudDataTransferConfig("example", new()
///     {
///         Name = "basic_config",
///         Location = "europe-west1",
///         Description = "A basic multicloud data transfer configs",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Services = new[]
///         {
///             new Gcp.NetworkConnectivity.Inputs.MulticloudDataTransferConfigServiceArgs
///             {
///                 ServiceName = "big-query",
///             },
///             new Gcp.NetworkConnectivity.Inputs.MulticloudDataTransferConfigServiceArgs
///             {
///                 ServiceName = "cloud-storage",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkconnectivity.NewMulticloudDataTransferConfig(ctx, "example", &networkconnectivity.MulticloudDataTransferConfigArgs{
/// 			Name:        pulumi.String("basic_config"),
/// 			Location:    pulumi.String("europe-west1"),
/// 			Description: pulumi.String("A basic multicloud data transfer configs"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Services: networkconnectivity.MulticloudDataTransferConfigServiceArray{
/// 				&networkconnectivity.MulticloudDataTransferConfigServiceArgs{
/// 					ServiceName: pulumi.String("big-query"),
/// 				},
/// 				&networkconnectivity.MulticloudDataTransferConfigServiceArgs{
/// 					ServiceName: pulumi.String("cloud-storage"),
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
/// import com.pulumi.gcp.networkconnectivity.MulticloudDataTransferConfig;
/// import com.pulumi.gcp.networkconnectivity.MulticloudDataTransferConfigArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.MulticloudDataTransferConfigServiceArgs;
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
///         var example = new MulticloudDataTransferConfig("example", MulticloudDataTransferConfigArgs.builder()
///             .name("basic_config")
///             .location("europe-west1")
///             .description("A basic multicloud data transfer configs")
///             .labels(Map.of("foo", "bar"))
///             .services(
///                 MulticloudDataTransferConfigServiceArgs.builder()
///                     .serviceName("big-query")
///                     .build(),
///                 MulticloudDataTransferConfigServiceArgs.builder()
///                     .serviceName("cloud-storage")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:networkconnectivity:MulticloudDataTransferConfig
///     properties:
///       name: basic_config
///       location: europe-west1
///       description: A basic multicloud data transfer configs
///       labels:
///         foo: bar
///       services:
///         - serviceName: big-query
///         - serviceName: cloud-storage
/// ```
///
///
/// ## Import
///
/// MulticloudDataTransferConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/multicloudDataTransferConfigs/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, MulticloudDataTransferConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/multicloudDataTransferConfig:MulticloudDataTransferConfig default projects/{{project}}/locations/{{location}}/multicloudDataTransferConfigs/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/multicloudDataTransferConfig:MulticloudDataTransferConfig default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/multicloudDataTransferConfig:MulticloudDataTransferConfig default {{location}}/{{name}}
/// ```
class MulticloudDataTransferConfig extends pulumi.CustomResource {
  /// Time when the MulticloudDataTransferConfig resource was created.
  late final pulumi.Output<String> createTime;

  /// A description of this resource.
  late final pulumi.Output<String?> description;

  /// The number of Destination resources in use with the
  /// MulticloudDataTransferConfig resource.
  late final pulumi.Output<int> destinationsActiveCount;

  /// The number of Destination resources configured for the
  /// MulticloudDataTransferConfig resource.
  late final pulumi.Output<int> destinationsCount;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The etag is computed by the server, and might be sent with update and
  /// delete requests so that the client has an up-to-date value before
  /// proceeding.
  late final pulumi.Output<String> etag;

  /// User-defined labels.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location of the multicloud data transfer config.
  late final pulumi.Output<String> location;

  /// The name of the MulticloudDataTransferConfig resource.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Maps services to their current or planned states. Service names are keys,
  /// and the associated values describe the state of the service.
  /// Structure is documented below.
  late final pulumi.Output<List<MulticloudDataTransferConfigService>?> services;

  /// The Google-generated unique ID for the MulticloudDataTransferConfig
  /// resource. This value is unique across all MulticloudDataTransferConfig
  /// resources. If a resource is deleted and another with the same name is
  /// created, the new resource is assigned a different and unique ID.
  late final pulumi.Output<String> uid;

  /// Time when the MulticloudDataTransferConfig resource was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [MulticloudDataTransferConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MulticloudDataTransferConfig]. {@macro pulumi_networkconnectivity_multicloud_data_transfer_config_multicloud_data_transfer_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MulticloudDataTransferConfig(
    String name, {
    MulticloudDataTransferConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkconnectivity/multicloudDataTransferConfig:MulticloudDataTransferConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.destinationsActiveCount =
        registerOutput<int>('destinationsActiveCount');
    this.destinationsCount = registerOutput<int>('destinationsCount');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.services =
        registerOutput<List<MulticloudDataTransferConfigService>?>('services');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
