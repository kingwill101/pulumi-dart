// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../data_product_access_group/data_product_access_group.dart';

/// The set of arguments for DataProduct.
class DataProductArgs {
  /// Custom user defined access groups at the data product level.
  /// Structure is documented below.
  final pulumi.Input<List<DataProductAccessGroup>>? accessGroups;

  /// The ID of the data product.
  final pulumi.Input<String> dataProductId;

  /// Description of the data product.
  final pulumi.Input<String>? description;

  /// User-friendly display name.
  final pulumi.Input<String> displayName;

  /// User-defined labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location for the data product.
  final pulumi.Input<String> location;

  /// Emails of the owners.
  final pulumi.Input<List<String>> ownerEmails;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  DataProductArgs({
    this.accessGroups,
    required this.dataProductId,
    this.description,
    required this.displayName,
    this.labels,
    required this.location,
    required this.ownerEmails,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessGroupsValue = accessGroups;
    if (accessGroupsValue != null) {
      map['accessGroups'] = pulumi.Input.mapOptionalInputValue<
              List<DataProductAccessGroup>, List<Map<String, dynamic>>>(
          accessGroupsValue,
          (value) => pulumi.Input.encodeList<DataProductAccessGroup,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['dataProductId'] = dataProductId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    map['ownerEmails'] = ownerEmails;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory DataProductArgs.fromMap(Map<String, dynamic> map) {
    return DataProductArgs(
      accessGroups: pulumi.Input.asOptionalInput<List<DataProductAccessGroup>>(
          map['accessGroups']),
      dataProductId: pulumi.Input.asInput<String>(map['dataProductId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      ownerEmails: pulumi.Input.asInput<List<String>>(map['ownerEmails']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
