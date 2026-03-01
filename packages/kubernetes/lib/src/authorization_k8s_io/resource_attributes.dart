// ignore_for_file: unused_element, unnecessary_cast

import 'field_selector_attributes.dart';
import 'label_selector_attributes.dart';

/// ResourceAttributes includes the authorization attributes available for resource requests to the Authorizer interface
class ResourceAttributes {
  /// fieldSelector describes the limitation on access based on field.  It can only limit access, not broaden it.
  final FieldSelectorAttributes? fieldSelector;
  /// Group is the API Group of the Resource.  "*" means all.
  final String? group;
  /// labelSelector describes the limitation on access based on labels.  It can only limit access, not broaden it.
  final LabelSelectorAttributes? labelSelector;
  /// Name is the name of the resource being requested for a "get" or deleted for a "delete". "" (empty) means all.
  final String? name;
  /// Namespace is the namespace of the action being requested.  Currently, there is no distinction between no namespace and all namespaces "" (empty) is defaulted for LocalSubjectAccessReviews "" (empty) is empty for cluster-scoped resources "" (empty) means "all" for namespace scoped resources from a SubjectAccessReview or SelfSubjectAccessReview
  final String? namespace;
  /// Resource is one of the existing resource types.  "*" means all.
  final String? resource;
  /// Subresource is one of the existing resource types.  "" means none.
  final String? subresource;
  /// Verb is a kubernetes resource API verb, like: get, list, watch, create, update, delete, proxy.  "*" means all.
  final String? verb;
  /// Version is the API Version of the Resource.  "*" means all.
  final String? version;

  /// Creates a new [ResourceAttributes].
  /// [fieldSelector] fieldSelector describes the limitation on access based on field.  It can only limit access, not broaden it.
  /// [group] Group is the API Group of the Resource.  "*" means all.
  /// [labelSelector] labelSelector describes the limitation on access based on labels.  It can only limit access, not broaden it.
  /// [name] Name is the name of the resource being requested for a "get" or deleted for a "delete". "" (empty) means all.
  /// [namespace] Namespace is the namespace of the action being requested.  Currently, there is no distinction between no namespace and all namespaces "" (empty) is defaulted for LocalSubjectAccessReviews "" (empty) is empty for cluster-scoped resources "" (empty) means "all" for namespace scoped resources from a SubjectAccessReview or SelfSubjectAccessReview
  /// [resource] Resource is one of the existing resource types.  "*" means all.
  /// [subresource] Subresource is one of the existing resource types.  "" means none.
  /// [verb] Verb is a kubernetes resource API verb, like: get, list, watch, create, update, delete, proxy.  "*" means all.
  /// [version] Version is the API Version of the Resource.  "*" means all.
  ResourceAttributes({
    this.fieldSelector,
    this.group,
    this.labelSelector,
    this.name,
    this.namespace,
    this.resource,
    this.subresource,
    this.verb,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldSelector': ?fieldSelector == null ? null : fieldSelector!.toMap(),
      'group': ?group,
      'labelSelector': ?labelSelector == null ? null : labelSelector!.toMap(),
      'name': ?name,
      'namespace': ?namespace,
      'resource': ?resource,
      'subresource': ?subresource,
      'verb': ?verb,
      'version': ?version,
    };
  }

  factory ResourceAttributes.fromMap(Map<String, dynamic> map) {
    return ResourceAttributes(
      fieldSelector: map['fieldSelector'] == null ? null : FieldSelectorAttributes.fromMap((map['fieldSelector'] as Map).cast<String, dynamic>()),
      group: map['group'] == null ? null : map['group'] as String,
      labelSelector: map['labelSelector'] == null ? null : LabelSelectorAttributes.fromMap((map['labelSelector'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      resource: map['resource'] == null ? null : map['resource'] as String,
      subresource: map['subresource'] == null ? null : map['subresource'] as String,
      verb: map['verb'] == null ? null : map['verb'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

