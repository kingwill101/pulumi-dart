// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'serial_pipeline.dart';

/// The set of arguments for DeliveryPipeline.
class DeliveryPipelineArgs {
  /// User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy.
  final Input<Map<String, String>>? annotations;

  /// Required. ID of the `DeliveryPipeline`.
  final Input<String> deliveryPipelineId;

  /// Description of the `DeliveryPipeline`. Max length is 255 characters.
  final Input<String>? description;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final Input<String>? etag;

  /// Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Optional. Name of the `DeliveryPipeline`. Format is `projects/{project}/locations/{location}/deliveryPipelines/a-z{0,62}`.
  final Input<String>? name;
  final Input<String>? project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`.
  final Input<SerialPipeline>? serialPipeline;

  /// When suspended, no new releases or rollouts can be created, but in-progress ones will complete.
  final Input<bool>? suspended;

  DeliveryPipelineArgs({
    this.annotations,
    required this.deliveryPipelineId,
    this.description,
    this.etag,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.requestId,
    this.serialPipeline,
    this.suspended,
  });

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
      map['serialPipeline'] =
          Input.mapOptionalInputValue<SerialPipeline, Map<String, dynamic>>(
              serialPipelineValue, (value) => value.toMap());
    }
    final suspendedValue = suspended;
    if (suspendedValue != null) {
      map['suspended'] = suspendedValue;
    }
    return map;
  }

  factory DeliveryPipelineArgs.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineArgs(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      deliveryPipelineId: Input.asInput<String>(map['deliveryPipelineId']),
      description: Input.asOptionalInput<String>(map['description']),
      etag: Input.asOptionalInput<String>(map['etag']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      serialPipeline:
          Input.asOptionalInput<SerialPipeline>(map['serialPipeline']),
      suspended: Input.asOptionalInput<bool>(map['suspended']),
    );
  }
}
