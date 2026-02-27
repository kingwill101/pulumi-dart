// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../multicloud_data_transfer_config_service/multicloud_data_transfer_config_service.dart';

/// The set of arguments for MulticloudDataTransferConfig.
class MulticloudDataTransferConfigArgs {
  /// A description of this resource.
  final pulumi.Input<String>? description;

  /// User-defined labels.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location of the multicloud data transfer config.
  final pulumi.Input<String> location;

  /// The name of the MulticloudDataTransferConfig resource.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Maps services to their current or planned states. Service names are keys,
  /// and the associated values describe the state of the service.
  /// Structure is documented below.
  final pulumi.Input<List<MulticloudDataTransferConfigService>>? services;

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
      map['services'] = pulumi.Input.mapOptionalInputValue<
              List<MulticloudDataTransferConfigService>,
              List<Map<String, dynamic>>>(
          servicesValue,
          (value) => pulumi.Input.encodeList<
              MulticloudDataTransferConfigService,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory MulticloudDataTransferConfigArgs.fromMap(Map<String, dynamic> map) {
    return MulticloudDataTransferConfigArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      services: pulumi.Input.asOptionalInput<
          List<MulticloudDataTransferConfigService>>(map['services']),
    );
  }
}
