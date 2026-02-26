import 'package:pulumi/pulumi.dart';
import 'attribute_definition_args.dart';

/// Creates a new Attribute definition in the parent consent store.
class AttributeDefinition extends CustomResource {
  /// Possible values for the attribute. The number of allowed values must not exceed 500. An empty list is invalid. The list can only be expanded after creation.
  late final Output<List<String>> allowedValues;

  /// Required. The ID of the Attribute definition to create. The string must match the following regex: `_a-zA-Z{0,255}` and must not be a reserved keyword within the Common Expression Language as listed on https://github.com/google/cel-spec/blob/master/doc/langdef.md.
  late final Output<String> attributeDefinitionId;

  /// The category of the attribute. The value of this field cannot be changed after creation.
  late final Output<String> category;

  /// Optional. Default values of the attribute in Consents. If no default values are specified, it defaults to an empty value.
  late final Output<List<String>> consentDefaultValues;
  late final Output<String> consentStoreId;

  /// Optional. Default value of the attribute in User data mappings. If no default value is specified, it defaults to an empty value. This field is only applicable to attributes of the category `RESOURCE`.
  late final Output<String> dataMappingDefaultValue;
  late final Output<String> datasetId;

  /// Optional. A description of the attribute.
  late final Output<String> description;
  late final Output<String> location;

  /// Resource name of the Attribute definition, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/attributeDefinitions/{attribute_definition_id}`. Cannot be changed after creation.
  late final Output<String> name;
  late final Output<String> project;

  AttributeDefinition(
    String name, {
    AttributeDefinitionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:healthcare/v1:AttributeDefinition',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowedValues = Output.createUnknown<List<String>>();
    this.attributeDefinitionId = Output.createUnknown<String>();
    this.category = Output.createUnknown<String>();
    this.consentDefaultValues = Output.createUnknown<List<String>>();
    this.consentStoreId = Output.createUnknown<String>();
    this.dataMappingDefaultValue = Output.createUnknown<String>();
    this.datasetId = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
  }
}
