import 'package:pulumi/pulumi.dart';
import 'attribute_response.dart';
import 'user_data_mapping_args.dart';

/// Creates a new User data mapping in the parent consent store.
class UserDataMapping extends CustomResource {
  /// Indicates the time when this mapping was archived.
  late final Output<String> archiveTime;

  /// Indicates whether this mapping is archived.
  late final Output<bool> archived;
  late final Output<String> consentStoreId;

  /// A unique identifier for the mapped resource.
  late final Output<String> dataId;
  late final Output<String> datasetId;
  late final Output<String> location;

  /// Resource name of the User data mapping, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/userDataMappings/{user_data_mapping_id}`.
  late final Output<String> name;
  late final Output<String> project;

  /// Attributes of the resource. Only explicitly set attributes are displayed here. Attribute definitions with defaults set implicitly apply to these User data mappings. Attributes listed here must be single valued, that is, exactly one value is specified for the field "values" in each Attribute.
  late final Output<List<AttributeResponse>> resourceAttributes;

  /// User's UUID provided by the client.
  late final Output<String> userId;

  UserDataMapping(
    String name, {
    UserDataMappingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:healthcare/v1:UserDataMapping',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.archiveTime = Output.createUnknown<String>();
    this.archived = Output.createUnknown<bool>();
    this.consentStoreId = Output.createUnknown<String>();
    this.dataId = Output.createUnknown<String>();
    this.datasetId = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.resourceAttributes = Output.createUnknown<List<AttributeResponse>>();
    this.userId = Output.createUnknown<String>();
  }
}
