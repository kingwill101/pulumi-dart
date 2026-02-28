import 'package:pulumi/pulumi.dart' as pulumi;
import 'attribute_args.dart';
import 'google_cloud_dataplex_v1_data_access_spec_response.dart';
import 'google_cloud_dataplex_v1_resource_access_spec_response.dart';

/// Create a DataAttribute resource.
/// Auto-naming is currently not supported for this resource.
class Attribute extends pulumi.CustomResource {
  /// The number of child attributes present for this attribute.
  late final pulumi.Output<int> attributeCount;
  /// The time when the DataAttribute was created.
  late final pulumi.Output<String> createTime;
  /// Optional. Specified when applied to data stored on the resource (eg: rows, columns in BigQuery Tables).
  late final pulumi.Output<GoogleCloudDataplexV1DataAccessSpecResponse> dataAccessSpec;
  /// Required. DataAttribute identifier. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the DataTaxonomy.
  late final pulumi.Output<String> dataAttributeId;
  late final pulumi.Output<String> dataTaxonomyId;
  /// Optional. Description of the DataAttribute.
  late final pulumi.Output<String> description;
  /// Optional. User friendly display name.
  late final pulumi.Output<String> displayName;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;
  /// Optional. User-defined labels for the DataAttribute.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// The relative resource name of the dataAttribute, of the form: projects/{project_number}/locations/{location_id}/dataTaxonomies/{dataTaxonomy}/attributes/{data_attribute_id}.
  late final pulumi.Output<String> name;
  /// Optional. The ID of the parent DataAttribute resource, should belong to the same data taxonomy. Circular dependency in parent chain is not valid. Maximum depth of the hierarchy allowed is 4. a -> b -> c -> d -> e, depth = 4
  late final pulumi.Output<String> parentId;
  late final pulumi.Output<String> project;
  /// Optional. Specified when applied to a resource (eg: Cloud Storage bucket, BigQuery dataset, BigQuery table).
  late final pulumi.Output<GoogleCloudDataplexV1ResourceAccessSpecResponse> resourceAccessSpec;
  /// System generated globally unique ID for the DataAttribute. This ID will be different if the DataAttribute is deleted and re-created with the same name.
  late final pulumi.Output<String> uid;
  /// The time when the DataAttribute was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Attribute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Attribute]. {@macro pulumi_dataplex_v1_attribute_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Attribute(
    String name, {
    AttributeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dataplex/v1:Attribute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.attributeCount = registerOutput<int>('attributeCount');
    this.createTime = registerOutput<String>('createTime');
    this.dataAccessSpec = registerOutput<GoogleCloudDataplexV1DataAccessSpecResponse>('dataAccessSpec');
    this.dataAttributeId = registerOutput<String>('dataAttributeId');
    this.dataTaxonomyId = registerOutput<String>('dataTaxonomyId');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.parentId = registerOutput<String>('parentId');
    this.project = registerOutput<String>('project');
    this.resourceAccessSpec = registerOutput<GoogleCloudDataplexV1ResourceAccessSpecResponse>('resourceAccessSpec');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
