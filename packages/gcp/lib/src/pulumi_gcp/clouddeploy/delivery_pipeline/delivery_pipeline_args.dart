// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../delivery_pipeline_serial_pipeline/delivery_pipeline_serial_pipeline.dart';

/// The set of arguments for DeliveryPipeline.
class DeliveryPipelineArgs {
  /// User annotations. These attributes can only be set and used by the user, and not by Google Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final Input<Map<String, String>>? annotations;

  /// Description of the `DeliveryPipeline`. Max length is 255 characters.
  final Input<String>? description;

  /// Labels are attributes that can be set and used by both the user and by Google Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location for the resource
  final Input<String> location;

  /// Name of the `DeliveryPipeline`. Format is `a-z?`.
  ///
  ///
  ///
  /// - - -
  final Input<String>? name;

  /// The project for the resource
  final Input<String>? project;

  /// SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`.
  final Input<DeliveryPipelineSerialPipeline>? serialPipeline;

  /// When suspended, no new releases or rollouts can be created, but in-progress ones will complete.
  final Input<bool>? suspended;

  DeliveryPipelineArgs({
    this.annotations,
    this.description,
    this.labels,
    required this.location,
    this.name,
    this.project,
    this.serialPipeline,
    this.suspended,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final serialPipelineValue = serialPipeline;
    if (serialPipelineValue != null) {
      map['serialPipeline'] = Input.mapOptionalInputValue<
          DeliveryPipelineSerialPipeline,
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
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      serialPipeline: Input.asOptionalInput<DeliveryPipelineSerialPipeline>(
          map['serialPipeline']),
      suspended: Input.asOptionalInput<bool>(map['suspended']),
    );
  }
}
