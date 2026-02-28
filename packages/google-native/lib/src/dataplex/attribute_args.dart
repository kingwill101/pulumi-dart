// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_data_access_spec.dart';
import 'google_cloud_dataplex_v1_resource_access_spec.dart';

/// {@template pulumi_dataplex_v1_attribute_args_doc}
/// The set of arguments for Attribute.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_attribute_args_doc}
class AttributeArgs {
  /// Optional. Specified when applied to data stored on the resource (eg: rows, columns in BigQuery Tables).
  final pulumi.Input<GoogleCloudDataplexV1DataAccessSpec>? dataAccessSpec;

  /// Required. DataAttribute identifier. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the DataTaxonomy.
  final pulumi.Input<String> dataAttributeId;
  final pulumi.Input<String> dataTaxonomyId;

  /// Optional. Description of the DataAttribute.
  final pulumi.Input<String>? description;

  /// Optional. User friendly display name.
  final pulumi.Input<String>? displayName;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;

  /// Optional. User-defined labels for the DataAttribute.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Optional. The ID of the parent DataAttribute resource, should belong to the same data taxonomy. Circular dependency in parent chain is not valid. Maximum depth of the hierarchy allowed is 4. a -> b -> c -> d -> e, depth = 4
  final pulumi.Input<String>? parentId;
  final pulumi.Input<String>? project;

  /// Optional. Specified when applied to a resource (eg: Cloud Storage bucket, BigQuery dataset, BigQuery table).
  final pulumi.Input<GoogleCloudDataplexV1ResourceAccessSpec>?
      resourceAccessSpec;

  /// Creates a new [AttributeArgs].
  /// [dataAccessSpec] Optional. Specified when applied to data stored on the resource (eg: rows, columns in BigQuery Tables).
  /// [dataAttributeId] Required. DataAttribute identifier. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the DataTaxonomy.
  /// [dataTaxonomyId] Required.
  /// [description] Optional. Description of the DataAttribute.
  /// [displayName] Optional. User friendly display name.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [labels] Optional. User-defined labels for the DataAttribute.
  /// [location] Optional.
  /// [parentId] Optional. The ID of the parent DataAttribute resource, should belong to the same data taxonomy. Circular dependency in parent chain is not valid. Maximum depth of the hierarchy allowed is 4. a -> b -> c -> d -> e, depth = 4
  /// [project] Optional.
  /// [resourceAccessSpec] Optional. Specified when applied to a resource (eg: Cloud Storage bucket, BigQuery dataset, BigQuery table).
  AttributeArgs({
    GoogleCloudDataplexV1DataAccessSpec? dataAccessSpec,
    required String dataAttributeId,
    required String dataTaxonomyId,
    String? description,
    String? displayName,
    String? etag,
    Map<String, String>? labels,
    String? location,
    String? parentId,
    String? project,
    GoogleCloudDataplexV1ResourceAccessSpec? resourceAccessSpec,
  })  : dataAccessSpec =
            pulumi.Input.asOptionalInput<GoogleCloudDataplexV1DataAccessSpec>(
                dataAccessSpec),
        dataAttributeId = pulumi.Input.asInput<String>(dataAttributeId),
        dataTaxonomyId = pulumi.Input.asInput<String>(dataTaxonomyId),
        description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        etag = pulumi.Input.asOptionalInput<String>(etag),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        parentId = pulumi.Input.asOptionalInput<String>(parentId),
        project = pulumi.Input.asOptionalInput<String>(project),
        resourceAccessSpec = pulumi.Input.asOptionalInput<
            GoogleCloudDataplexV1ResourceAccessSpec>(resourceAccessSpec);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataAccessSpecValue = dataAccessSpec;
    if (dataAccessSpecValue != null) {
      map['dataAccessSpec'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudDataplexV1DataAccessSpec,
          Map<String, dynamic>>(dataAccessSpecValue, (value) => value.toMap());
    }
    map['dataAttributeId'] = dataAttributeId;
    map['dataTaxonomyId'] = dataTaxonomyId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
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
    final parentIdValue = parentId;
    if (parentIdValue != null) {
      map['parentId'] = parentIdValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final resourceAccessSpecValue = resourceAccessSpec;
    if (resourceAccessSpecValue != null) {
      map['resourceAccessSpec'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudDataplexV1ResourceAccessSpec, Map<String, dynamic>>(
          resourceAccessSpecValue, (value) => value.toMap());
    }
    return map;
  }

  factory AttributeArgs.fromMap(Map<String, dynamic> map) {
    return AttributeArgs(
      dataAccessSpec: map['dataAccessSpec'] == null
          ? null
          : GoogleCloudDataplexV1DataAccessSpec.fromMap(
              (map['dataAccessSpec'] as Map).cast<String, dynamic>()),
      dataAttributeId: map['dataAttributeId'] as String,
      dataTaxonomyId: map['dataTaxonomyId'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      parentId: map['parentId'] == null ? null : map['parentId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      resourceAccessSpec: map['resourceAccessSpec'] == null
          ? null
          : GoogleCloudDataplexV1ResourceAccessSpec.fromMap(
              (map['resourceAccessSpec'] as Map).cast<String, dynamic>()),
    );
  }
}
