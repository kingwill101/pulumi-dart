// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_product_access_group.dart';

/// {@template pulumi_dataplex_data_product_data_product_args_doc}
/// The set of arguments for DataProduct.
/// {@endtemplate}
/// {@macro pulumi_dataplex_data_product_data_product_args_doc}
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

  /// Creates a new [DataProductArgs].
  /// [accessGroups] Custom user defined access groups at the data product level.
  /// [dataProductId] The ID of the data product.
  /// [description] Description of the data product.
  /// [displayName] User-friendly display name.
  /// [labels] User-defined labels.
  /// [location] The location for the data product.
  /// [ownerEmails] Emails of the owners.
  /// [project] The ID of the project in which the resource belongs.
  DataProductArgs({
    List<DataProductAccessGroup>? accessGroups,
    required String dataProductId,
    String? description,
    required String displayName,
    Map<String, String>? labels,
    required String location,
    required List<String> ownerEmails,
    String? project,
  })  : accessGroups =
            pulumi.Input.asOptionalInput<List<DataProductAccessGroup>>(
                accessGroups),
        dataProductId = pulumi.Input.asInput<String>(dataProductId),
        description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asInput<String>(displayName),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asInput<String>(location),
        ownerEmails = pulumi.Input.asInput<List<String>>(ownerEmails),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      accessGroups: map['accessGroups'] == null
          ? null
          : pulumi.Input.decodeList<DataProductAccessGroup>(
              map['accessGroups'],
              (value) => DataProductAccessGroup.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dataProductId: map['dataProductId'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      ownerEmails: (map['ownerEmails'] as List).cast<String>(),
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
