import 'package:pulumi/pulumi.dart' as pulumi;
import '../delivery_pipeline_condition/delivery_pipeline_condition.dart';
import '../delivery_pipeline_serial_pipeline/delivery_pipeline_serial_pipeline.dart';
import 'delivery_pipeline_args.dart';

/// The Cloud Deploy `DeliveryPipeline` resource
///
/// ## Example Usage
///
/// ### Canary_delivery_pipeline
/// Creates a basic Cloud Deploy delivery pipeline
///
/// ### Canary_service_networking_delivery_pipeline
/// Creates a basic Cloud Deploy delivery pipeline
///
/// ### Canaryrun_delivery_pipeline
/// Creates a basic Cloud Deploy delivery pipeline
///
/// ### Delivery_pipeline
/// Creates a basic Cloud Deploy delivery pipeline
///
/// ### Verify_delivery_pipeline
/// tests creating and updating a delivery pipeline with deployment verification strategy
///
///
/// ## Import
///
/// DeliveryPipeline can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/deliveryPipelines/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, DeliveryPipeline can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:clouddeploy/deliveryPipeline:DeliveryPipeline default projects/{{project}}/locations/{{location}}/deliveryPipelines/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:clouddeploy/deliveryPipeline:DeliveryPipeline default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:clouddeploy/deliveryPipeline:DeliveryPipeline default {{location}}/{{name}}
/// ```
class DeliveryPipeline extends pulumi.CustomResource {
  /// User annotations. These attributes can only be set and used by the user, and not by Google Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// Output only. Information around the state of the Delivery Pipeline.
  late final pulumi.Output<List<DeliveryPipelineCondition>> conditions;

  /// Output only. Time at which the pipeline was created.
  late final pulumi.Output<String> createTime;

  /// Description of the `DeliveryPipeline`. Max length is 255 characters.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// Labels are attributes that can be set and used by both the user and by Google Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location for the resource
  late final pulumi.Output<String> location;

  /// Name of the `DeliveryPipeline`. Format is `a-z?`.
  ///
  ///
  ///
  /// - - -
  late final pulumi.Output<String> name;

  /// The project for the resource
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`.
  late final pulumi.Output<DeliveryPipelineSerialPipeline?> serialPipeline;

  /// When suspended, no new releases or rollouts can be created, but in-progress ones will complete.
  late final pulumi.Output<bool?> suspended;

  /// Output only. Unique identifier of the `DeliveryPipeline`.
  late final pulumi.Output<String> uid;

  /// Output only. Most recent time at which the pipeline was updated.
  late final pulumi.Output<String> updateTime;

  DeliveryPipeline(
    String name, {
    DeliveryPipelineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/deliveryPipeline:DeliveryPipeline',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.conditions =
        registerOutput<List<DeliveryPipelineCondition>>('conditions');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.serialPipeline =
        registerOutput<DeliveryPipelineSerialPipeline?>('serialPipeline');
    this.suspended = registerOutput<bool?>('suspended');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
