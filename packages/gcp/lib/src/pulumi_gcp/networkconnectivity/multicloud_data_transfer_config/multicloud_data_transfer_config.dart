import 'package:pulumi/pulumi.dart' as pulumi;
import '../multicloud_data_transfer_config_service/multicloud_data_transfer_config_service.dart';
import 'multicloud_data_transfer_config_args.dart';

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
