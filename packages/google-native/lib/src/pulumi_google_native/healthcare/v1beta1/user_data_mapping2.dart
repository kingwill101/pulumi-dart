import 'package:pulumi/pulumi.dart';
import 'attribute_response2.dart';
import 'user_data_mapping_args2.dart';

/// Creates a new User data mapping in the parent consent store.
class UserDataMapping2 extends CustomResource {
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
  late final Output<List<AttributeResponse2>> resourceAttributes;

  /// User's UUID provided by the client.
  late final Output<String> userId;

  UserDataMapping2(
    String name, {
    UserDataMappingArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:healthcare/v1beta1:UserDataMapping',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.archiveTime = registerOutput<String>('archiveTime');
    this.archived = registerOutput<bool>('archived');
    this.consentStoreId = registerOutput<String>('consentStoreId');
    this.dataId = registerOutput<String>('dataId');
    this.datasetId = registerOutput<String>('datasetId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.resourceAttributes =
        registerOutput<List<AttributeResponse2>>('resourceAttributes');
    this.userId = registerOutput<String>('userId');
  }
}
