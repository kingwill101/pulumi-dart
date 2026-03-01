// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_resource_column_definition.dart';
import 'custom_resource_subresources.dart';
import 'custom_resource_validation.dart';
import 'selectable_field.dart';

/// CustomResourceDefinitionVersion describes a version for CRD.
class CustomResourceDefinitionVersion {
  /// additionalPrinterColumns specifies additional columns returned in Table output. See https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.
  final List<CustomResourceColumnDefinition>? additionalPrinterColumns;
  /// deprecated indicates this version of the custom resource API is deprecated. When set to true, API requests to this version receive a warning header in the server response. Defaults to false.
  final bool? deprecated;
  /// deprecationWarning overrides the default warning returned to API clients. May only be set when `deprecated` is true. The default warning indicates this version is deprecated and recommends use of the newest served version of equal or greater stability, if one exists.
  final String? deprecationWarning;
  /// name is the version name, e.g. “v1”, “v2beta1”, etc. The custom resources are served under this version at `/apis/<group>/<version>/...` if `served` is true.
  final String name;
  /// schema describes the schema used for validation, pruning, and defaulting of this version of the custom resource.
  final CustomResourceValidation? schema;
  /// selectableFields specifies paths to fields that may be used as field selectors. A maximum of 8 selectable fields are allowed. See https://kubernetes.io/docs/concepts/overview/working-with-objects/field-selectors
  final List<SelectableField>? selectableFields;
  /// served is a flag enabling/disabling this version from being served via REST APIs
  final bool served;
  /// storage indicates this version should be used when persisting custom resources to storage. There must be exactly one version with storage=true.
  final bool storage;
  /// subresources specify what subresources this version of the defined custom resource have.
  final CustomResourceSubresources? subresources;

  /// Creates a new [CustomResourceDefinitionVersion].
  /// [additionalPrinterColumns] additionalPrinterColumns specifies additional columns returned in Table output. See https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.
  /// [deprecated] deprecated indicates this version of the custom resource API is deprecated. When set to true, API requests to this version receive a warning header in the server response. Defaults to false.
  /// [deprecationWarning] deprecationWarning overrides the default warning returned to API clients. May only be set when `deprecated` is true. The default warning indicates this version is deprecated and recommends use of the newest served version of equal or greater stability, if one exists.
  /// [name] name is the version name, e.g. “v1”, “v2beta1”, etc. The custom resources are served under this version at `/apis/<group>/<version>/...` if `served` is true.
  /// [schema] schema describes the schema used for validation, pruning, and defaulting of this version of the custom resource.
  /// [selectableFields] selectableFields specifies paths to fields that may be used as field selectors. A maximum of 8 selectable fields are allowed. See https://kubernetes.io/docs/concepts/overview/working-with-objects/field-selectors
  /// [served] served is a flag enabling/disabling this version from being served via REST APIs
  /// [storage] storage indicates this version should be used when persisting custom resources to storage. There must be exactly one version with storage=true.
  /// [subresources] subresources specify what subresources this version of the defined custom resource have.
  CustomResourceDefinitionVersion({
    this.additionalPrinterColumns,
    this.deprecated,
    this.deprecationWarning,
    required this.name,
    this.schema,
    this.selectableFields,
    required this.served,
    required this.storage,
    this.subresources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalPrinterColumns': ?additionalPrinterColumns == null ? null : pulumi.Input.encodeList<CustomResourceColumnDefinition, Map<String, dynamic>>(additionalPrinterColumns!, (value) => value.toMap()),
      'deprecated': ?deprecated,
      'deprecationWarning': ?deprecationWarning,
      'name': name,
      'schema': ?schema == null ? null : schema!.toMap(),
      'selectableFields': ?selectableFields == null ? null : pulumi.Input.encodeList<SelectableField, Map<String, dynamic>>(selectableFields!, (value) => value.toMap()),
      'served': served,
      'storage': storage,
      'subresources': ?subresources == null ? null : subresources!.toMap(),
    };
  }

  factory CustomResourceDefinitionVersion.fromMap(Map<String, dynamic> map) {
    return CustomResourceDefinitionVersion(
      additionalPrinterColumns: map['additionalPrinterColumns'] == null ? null : pulumi.Input.decodeList<CustomResourceColumnDefinition>(map['additionalPrinterColumns'], (value) => CustomResourceColumnDefinition.fromMap((value as Map).cast<String, dynamic>())),
      deprecated: map['deprecated'] == null ? null : map['deprecated'] as bool,
      deprecationWarning: map['deprecationWarning'] == null ? null : map['deprecationWarning'] as String,
      name: map['name'] as String,
      schema: map['schema'] == null ? null : CustomResourceValidation.fromMap((map['schema'] as Map).cast<String, dynamic>()),
      selectableFields: map['selectableFields'] == null ? null : pulumi.Input.decodeList<SelectableField>(map['selectableFields'], (value) => SelectableField.fromMap((value as Map).cast<String, dynamic>())),
      served: map['served'] as bool,
      storage: map['storage'] as bool,
      subresources: map['subresources'] == null ? null : CustomResourceSubresources.fromMap((map['subresources'] as Map).cast<String, dynamic>()),
    );
  }
}

