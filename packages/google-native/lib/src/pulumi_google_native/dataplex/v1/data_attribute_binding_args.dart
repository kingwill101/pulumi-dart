// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_data_attribute_binding_path.dart';

/// The set of arguments for DataAttributeBinding.
class DataAttributeBindingArgs {
  /// Optional. List of attributes to be associated with the resource, provided in the form: projects/{project}/locations/{location}/dataTaxonomies/{dataTaxonomy}/attributes/{data_attribute_id}
  final pulumi.Input<List<String>>? attributes;

  /// Required. DataAttributeBinding identifier. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the Location.
  final pulumi.Input<String> dataAttributeBindingId;

  /// Optional. Description of the DataAttributeBinding.
  final pulumi.Input<String>? description;

  /// Optional. User friendly display name.
  final pulumi.Input<String>? displayName;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Etags must be used when calling the DeleteDataAttributeBinding and the UpdateDataAttributeBinding method.
  final pulumi.Input<String>? etag;

  /// Optional. User-defined labels for the DataAttributeBinding.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Optional. The list of paths for items within the associated resource (eg. columns and partitions within a table) along with attribute bindings.
  final pulumi.Input<List<GoogleCloudDataplexV1DataAttributeBindingPath>>?
      paths;
  final pulumi.Input<String>? project;

  /// Optional. Immutable. The resource name of the resource that is associated to attributes. Presently, only entity resource is supported in the form: projects/{project}/locations/{location}/lakes/{lake}/zones/{zone}/entities/{entity_id} Must belong in the same project and region as the attribute binding, and there can only exist one active binding for a resource.
  final pulumi.Input<String>? resource;

  DataAttributeBindingArgs({
    this.attributes,
    required this.dataAttributeBindingId,
    this.description,
    this.displayName,
    this.etag,
    this.labels,
    this.location,
    this.paths,
    this.project,
    this.resource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = attributesValue;
    }
    map['dataAttributeBindingId'] = dataAttributeBindingId;
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
    final pathsValue = paths;
    if (pathsValue != null) {
      map['paths'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudDataplexV1DataAttributeBindingPath>,
              List<Map<String, dynamic>>>(
          pathsValue,
          (value) => pulumi.Input.encodeList<
              GoogleCloudDataplexV1DataAttributeBindingPath,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final resourceValue = resource;
    if (resourceValue != null) {
      map['resource'] = resourceValue;
    }
    return map;
  }

  factory DataAttributeBindingArgs.fromMap(Map<String, dynamic> map) {
    return DataAttributeBindingArgs(
      attributes: pulumi.Input.asOptionalInput<List<String>>(map['attributes']),
      dataAttributeBindingId:
          pulumi.Input.asInput<String>(map['dataAttributeBindingId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      paths: pulumi.Input.asOptionalInput<
          List<GoogleCloudDataplexV1DataAttributeBindingPath>>(map['paths']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      resource: pulumi.Input.asOptionalInput<String>(map['resource']),
    );
  }
}
