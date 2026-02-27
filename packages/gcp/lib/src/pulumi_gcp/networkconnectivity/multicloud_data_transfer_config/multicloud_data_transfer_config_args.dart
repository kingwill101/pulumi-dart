// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../multicloud_data_transfer_config_service/multicloud_data_transfer_config_service.dart';

/// The set of arguments for MulticloudDataTransferConfig.
class MulticloudDataTransferConfigArgs {
  /// A description of this resource.
  final Input<String>? description;

  /// User-defined labels.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location of the multicloud data transfer config.
  final Input<String> location;

  /// The name of the MulticloudDataTransferConfig resource.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Maps services to their current or planned states. Service names are keys,
  /// and the associated values describe the state of the service.
  /// Structure is documented below.
  final Input<List<MulticloudDataTransferConfigService>>? services;

  MulticloudDataTransferConfigArgs({
    this.description,
    this.labels,
    required this.location,
    this.name,
    this.project,
    this.services,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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
    final servicesValue = services;
    if (servicesValue != null) {
      map['services'] = Input.mapOptionalInputValue<
              List<MulticloudDataTransferConfigService>,
              List<Map<String, dynamic>>>(
          servicesValue,
          (value) => Input.encodeList<MulticloudDataTransferConfigService,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory MulticloudDataTransferConfigArgs.fromMap(Map<String, dynamic> map) {
    return MulticloudDataTransferConfigArgs(
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      services:
          Input.asOptionalInput<List<MulticloudDataTransferConfigService>>(
              map['services']),
    );
  }
}
