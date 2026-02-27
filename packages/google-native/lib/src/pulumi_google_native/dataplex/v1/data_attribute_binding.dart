import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_attribute_binding_args.dart';
import 'google_cloud_dataplex_v1_data_attribute_binding_path_response.dart';

/// Create a DataAttributeBinding resource.
/// Auto-naming is currently not supported for this resource.
class DataAttributeBinding extends pulumi.CustomResource {
  /// Optional. List of attributes to be associated with the resource, provided in the form: projects/{project}/locations/{location}/dataTaxonomies/{dataTaxonomy}/attributes/{data_attribute_id}
  late final pulumi.Output<List<String>> attributes;

  /// The time when the DataAttributeBinding was created.
  late final pulumi.Output<String> createTime;

  /// Required. DataAttributeBinding identifier. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the Location.
  late final pulumi.Output<String> dataAttributeBindingId;

  /// Optional. Description of the DataAttributeBinding.
  late final pulumi.Output<String> description;

  /// Optional. User friendly display name.
  late final pulumi.Output<String> displayName;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Etags must be used when calling the DeleteDataAttributeBinding and the UpdateDataAttributeBinding method.
  late final pulumi.Output<String> etag;

  /// Optional. User-defined labels for the DataAttributeBinding.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// The relative resource name of the Data Attribute Binding, of the form: projects/{project_number}/locations/{location}/dataAttributeBindings/{data_attribute_binding_id}
  late final pulumi.Output<String> name;

  /// Optional. The list of paths for items within the associated resource (eg. columns and partitions within a table) along with attribute bindings.
  late final pulumi
      .Output<List<GoogleCloudDataplexV1DataAttributeBindingPathResponse>>
      paths;
  late final pulumi.Output<String> project;

  /// Optional. Immutable. The resource name of the resource that is associated to attributes. Presently, only entity resource is supported in the form: projects/{project}/locations/{location}/lakes/{lake}/zones/{zone}/entities/{entity_id} Must belong in the same project and region as the attribute binding, and there can only exist one active binding for a resource.
  late final pulumi.Output<String> resource;

  /// System generated globally unique ID for the DataAttributeBinding. This ID will be different if the DataAttributeBinding is deleted and re-created with the same name.
  late final pulumi.Output<String> uid;

  /// The time when the DataAttributeBinding was last updated.
  late final pulumi.Output<String> updateTime;

  DataAttributeBinding(
    String name, {
    DataAttributeBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dataplex/v1:DataAttributeBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.attributes = registerOutput<List<String>>('attributes');
    this.createTime = registerOutput<String>('createTime');
    this.dataAttributeBindingId =
        registerOutput<String>('dataAttributeBindingId');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.paths = registerOutput<
        List<GoogleCloudDataplexV1DataAttributeBindingPathResponse>>('paths');
    this.project = registerOutput<String>('project');
    this.resource = registerOutput<String>('resource');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
