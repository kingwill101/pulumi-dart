import 'package:pulumi/pulumi.dart' hide Config;
import 'data_taxonomy_args.dart';

/// Create a DataTaxonomy resource.
/// Auto-naming is currently not supported for this resource.
class DataTaxonomy extends CustomResource {
  /// The number of attributes in the DataTaxonomy.
  late final Output<int> attributeCount;

  /// The number of classes in the DataTaxonomy.
  late final Output<int> classCount;

  /// The time when the DataTaxonomy was created.
  late final Output<String> createTime;

  /// Required. DataTaxonomy identifier. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the Project.
  late final Output<String> dataTaxonomyId;

  /// Optional. Description of the DataTaxonomy.
  late final Output<String> description;

  /// Optional. User friendly display name.
  late final Output<String> displayName;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final Output<String> etag;

  /// Optional. User-defined labels for the DataTaxonomy.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The relative resource name of the DataTaxonomy, of the form: projects/{project_number}/locations/{location_id}/dataTaxonomies/{data_taxonomy_id}.
  late final Output<String> name;
  late final Output<String> project;

  /// System generated globally unique ID for the dataTaxonomy. This ID will be different if the DataTaxonomy is deleted and re-created with the same name.
  late final Output<String> uid;

  /// The time when the DataTaxonomy was last updated.
  late final Output<String> updateTime;

  DataTaxonomy(
    String name, {
    DataTaxonomyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dataplex/v1:DataTaxonomy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.attributeCount = registerOutput<int>('attributeCount');
    this.classCount = registerOutput<int>('classCount');
    this.createTime = registerOutput<String>('createTime');
    this.dataTaxonomyId = registerOutput<String>('dataTaxonomyId');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
