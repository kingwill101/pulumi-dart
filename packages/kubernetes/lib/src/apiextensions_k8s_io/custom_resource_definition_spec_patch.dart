// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_resource_conversion_patch.dart';
import 'custom_resource_definition_names_patch.dart';
import 'custom_resource_definition_version_patch.dart';

/// CustomResourceDefinitionSpec describes how a user wants their resource to appear
class CustomResourceDefinitionSpecPatch {
  /// conversion defines conversion settings for the CRD.
  final CustomResourceConversionPatch? conversion;
  /// group is the API group of the defined custom resource. The custom resources are served under `/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).
  final String? group;
  /// names specify the resource and kind names for the custom resource.
  final CustomResourceDefinitionNamesPatch? names;
  /// preserveUnknownFields indicates that object fields which are not specified in the OpenAPI schema should be preserved when persisting to storage. apiVersion, kind, metadata and known fields inside metadata are always preserved. This field is deprecated in favor of setting `x-preserve-unknown-fields` to true in `spec.versions[*].schema.openAPIV3Schema`. See https://kubernetes.io/docs/tasks/extend-kubernetes/custom-resources/custom-resource-definitions/#field-pruning for details.
  final bool? preserveUnknownFields;
  /// scope indicates whether the defined custom resource is cluster- or namespace-scoped. Allowed values are `Cluster` and `Namespaced`.
  final String? scope;
  /// versions is the list of all API versions of the defined custom resource. Version names are used to compute the order in which served versions are listed in API discovery. If the version string is "kube-like", it will sort above non "kube-like" version strings, which are ordered lexicographically. "Kube-like" versions start with a "v", then are followed by a number (the major version), then optionally the string "alpha" or "beta" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
  final List<CustomResourceDefinitionVersionPatch>? versions;

  /// Creates a new [CustomResourceDefinitionSpecPatch].
  /// [conversion] conversion defines conversion settings for the CRD.
  /// [group] group is the API group of the defined custom resource. The custom resources are served under `/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).
  /// [names] names specify the resource and kind names for the custom resource.
  /// [preserveUnknownFields] preserveUnknownFields indicates that object fields which are not specified in the OpenAPI schema should be preserved when persisting to storage. apiVersion, kind, metadata and known fields inside metadata are always preserved. This field is deprecated in favor of setting `x-preserve-unknown-fields` to true in `spec.versions[*].schema.openAPIV3Schema`. See https://kubernetes.io/docs/tasks/extend-kubernetes/custom-resources/custom-resource-definitions/#field-pruning for details.
  /// [scope] scope indicates whether the defined custom resource is cluster- or namespace-scoped. Allowed values are `Cluster` and `Namespaced`.
  /// [versions] versions is the list of all API versions of the defined custom resource. Version names are used to compute the order in which served versions are listed in API discovery. If the version string is "kube-like", it will sort above non "kube-like" version strings, which are ordered lexicographically. "Kube-like" versions start with a "v", then are followed by a number (the major version), then optionally the string "alpha" or "beta" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
  CustomResourceDefinitionSpecPatch({
    this.conversion,
    this.group,
    this.names,
    this.preserveUnknownFields,
    this.scope,
    this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversion': ?conversion == null ? null : conversion!.toMap(),
      'group': ?group,
      'names': ?names == null ? null : names!.toMap(),
      'preserveUnknownFields': ?preserveUnknownFields,
      'scope': ?scope,
      'versions': ?versions == null ? null : pulumi.Input.encodeList<CustomResourceDefinitionVersionPatch, Map<String, dynamic>>(versions!, (value) => value.toMap()),
    };
  }

  factory CustomResourceDefinitionSpecPatch.fromMap(Map<String, dynamic> map) {
    return CustomResourceDefinitionSpecPatch(
      conversion: map['conversion'] == null ? null : CustomResourceConversionPatch.fromMap((map['conversion'] as Map).cast<String, dynamic>()),
      group: map['group'] == null ? null : map['group'] as String,
      names: map['names'] == null ? null : CustomResourceDefinitionNamesPatch.fromMap((map['names'] as Map).cast<String, dynamic>()),
      preserveUnknownFields: map['preserveUnknownFields'] == null ? null : map['preserveUnknownFields'] as bool,
      scope: map['scope'] == null ? null : map['scope'] as String,
      versions: map['versions'] == null ? null : pulumi.Input.decodeList<CustomResourceDefinitionVersionPatch>(map['versions'], (value) => CustomResourceDefinitionVersionPatch.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

