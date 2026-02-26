import 'package:pulumi/pulumi.dart';
import 'data_attribute_binding_args.dart';
import 'google_cloud_dataplex_v1_data_attribute_binding_path_response.dart';

/// Create a DataAttributeBinding resource.
/// Auto-naming is currently not supported for this resource.
class DataAttributeBinding extends CustomResource {
  /// Optional. List of attributes to be associated with the resource, provided in the form: projects/{project}/locations/{location}/dataTaxonomies/{dataTaxonomy}/attributes/{data_attribute_id}
  late final Output<List<String>> attributes;

  /// The time when the DataAttributeBinding was created.
  late final Output<String> createTime;

  /// Required. DataAttributeBinding identifier. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the Location.
  late final Output<String> dataAttributeBindingId;

  /// Optional. Description of the DataAttributeBinding.
  late final Output<String> description;

  /// Optional. User friendly display name.
  late final Output<String> displayName;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Etags must be used when calling the DeleteDataAttributeBinding and the UpdateDataAttributeBinding method.
  late final Output<String> etag;

  /// Optional. User-defined labels for the DataAttributeBinding.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The relative resource name of the Data Attribute Binding, of the form: projects/{project_number}/locations/{location}/dataAttributeBindings/{data_attribute_binding_id}
  late final Output<String> name;

  /// Optional. The list of paths for items within the associated resource (eg. columns and partitions within a table) along with attribute bindings.
  late final Output<List<GoogleCloudDataplexV1DataAttributeBindingPathResponse>>
      paths;
  late final Output<String> project;

  /// Optional. Immutable. The resource name of the resource that is associated to attributes. Presently, only entity resource is supported in the form: projects/{project}/locations/{location}/lakes/{lake}/zones/{zone}/entities/{entity_id} Must belong in the same project and region as the attribute binding, and there can only exist one active binding for a resource.
  late final Output<String> resource;

  /// System generated globally unique ID for the DataAttributeBinding. This ID will be different if the DataAttributeBinding is deleted and re-created with the same name.
  late final Output<String> uid;

  /// The time when the DataAttributeBinding was last updated.
  late final Output<String> updateTime;

  DataAttributeBinding(
    String name, {
    DataAttributeBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dataplex/v1:DataAttributeBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.attributes = Output.createUnknown<List<String>>();
    this.createTime = Output.createUnknown<String>();
    this.dataAttributeBindingId = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.paths = Output.createUnknown<
        List<GoogleCloudDataplexV1DataAttributeBindingPathResponse>>();
    this.project = Output.createUnknown<String>();
    this.resource = Output.createUnknown<String>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
