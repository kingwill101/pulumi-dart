// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'serial_pipeline.dart';

/// {@template pulumi_clouddeploy_v1_delivery_pipeline_args_doc}
/// The set of arguments for DeliveryPipeline.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_v1_delivery_pipeline_args_doc}
class DeliveryPipelineArgs {
  /// User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Required. ID of the `DeliveryPipeline`.
  final pulumi.Input<String> deliveryPipelineId;

  /// Description of the `DeliveryPipeline`. Max length is 255 characters.
  final pulumi.Input<String>? description;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;

  /// Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Optional. Name of the `DeliveryPipeline`. Format is `projects/{project}/locations/{location}/deliveryPipelines/a-z{0,62}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`.
  final pulumi.Input<SerialPipeline>? serialPipeline;

  /// When suspended, no new releases or rollouts can be created, but in-progress ones will complete.
  final pulumi.Input<bool>? suspended;

  /// Creates a new [DeliveryPipelineArgs].
  /// [annotations] User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy.
  /// [deliveryPipelineId] Required. ID of the `DeliveryPipeline`.
  /// [description] Description of the `DeliveryPipeline`. Max length is 255 characters.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [labels] Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  /// [location] Optional.
  /// [name] Optional. Name of the `DeliveryPipeline`. Format is `projects/{project}/locations/{location}/deliveryPipelines/a-z{0,62}`.
  /// [project] Optional.
  /// [requestId] Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [serialPipeline] SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`.
  /// [suspended] When suspended, no new releases or rollouts can be created, but in-progress ones will complete.
  DeliveryPipelineArgs({
    Map<String, String>? annotations,
    required String deliveryPipelineId,
    String? description,
    String? etag,
    Map<String, String>? labels,
    String? location,
    String? name,
    String? project,
    String? requestId,
    SerialPipeline? serialPipeline,
    bool? suspended,
  })  : annotations =
            pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
        deliveryPipelineId = pulumi.Input.asInput<String>(deliveryPipelineId),
        description = pulumi.Input.asOptionalInput<String>(description),
        etag = pulumi.Input.asOptionalInput<String>(etag),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        requestId = pulumi.Input.asOptionalInput<String>(requestId),
        serialPipeline =
            pulumi.Input.asOptionalInput<SerialPipeline>(serialPipeline),
        suspended = pulumi.Input.asOptionalInput<bool>(suspended);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    map['deliveryPipelineId'] = deliveryPipelineId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final serialPipelineValue = serialPipeline;
    if (serialPipelineValue != null) {
      map['serialPipeline'] = pulumi.Input.mapOptionalInputValue<SerialPipeline,
          Map<String, dynamic>>(serialPipelineValue, (value) => value.toMap());
    }
    final suspendedValue = suspended;
    if (suspendedValue != null) {
      map['suspended'] = suspendedValue;
    }
    return map;
  }

  factory DeliveryPipelineArgs.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineArgs(
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      deliveryPipelineId: map['deliveryPipelineId'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      serialPipeline: map['serialPipeline'] == null
          ? null
          : SerialPipeline.fromMap(
              (map['serialPipeline'] as Map).cast<String, dynamic>()),
      suspended: map['suspended'] == null ? null : map['suspended'] as bool,
    );
  }
}
