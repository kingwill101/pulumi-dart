// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../data_product_access_group/data_product_access_group.dart';

/// The set of arguments for DataProduct.
class DataProductArgs {
  /// Custom user defined access groups at the data product level.
  /// Structure is documented below.
  final Input<List<DataProductAccessGroup>>? accessGroups;

  /// The ID of the data product.
  final Input<String> dataProductId;

  /// Description of the data product.
  final Input<String>? description;

  /// User-friendly display name.
  final Input<String> displayName;

  /// User-defined labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location for the data product.
  final Input<String> location;

  /// Emails of the owners.
  final Input<List<String>> ownerEmails;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

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
      map['accessGroups'] = Input.mapOptionalInputValue<
              List<DataProductAccessGroup>, List<Map<String, dynamic>>>(
          accessGroupsValue,
          (value) =>
              Input.encodeList<DataProductAccessGroup, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
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
      accessGroups: Input.asOptionalInput<List<DataProductAccessGroup>>(
          map['accessGroups']),
      dataProductId: Input.asInput<String>(map['dataProductId']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      ownerEmails: Input.asInput<List<String>>(map['ownerEmails']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
