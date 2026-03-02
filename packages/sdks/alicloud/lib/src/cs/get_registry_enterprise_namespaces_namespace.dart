// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegistryEnterpriseNamespacesNamespace {
  /// Boolean, when it set to true, repositories are automatically created when pushing new images. If it set to false, you create repository for images before pushing.
  final pulumi.Input<bool> autoCreate;
  /// `PUBLIC` or `PRIVATE`, default repository visibility in this namespace.
  final pulumi.Input<String> defaultVisibility;
  /// ID of Container Registry Enterprise Edition namespace. It formats as `<instance_id>:<namespace_name>`. Before 1.161.0, it is a namespace uuid.
  final pulumi.Input<String> id;
  /// ID of Container Registry Enterprise Edition instance.
  final pulumi.Input<String> instanceId;
  /// Name of Container Registry Enterprise Edition namespace.
  final pulumi.Input<String> name;
  /// Container Registry Enterprise Edition namespace id. It is a uuid.
  final pulumi.Input<String> namespaceId;
  /// Name of Container Registry Enterprise Edition namespace.
  final pulumi.Input<String> namespaceName;

  /// Creates a new [GetRegistryEnterpriseNamespacesNamespace].
  /// [autoCreate] Boolean, when it set to true, repositories are automatically created when pushing new images. If it set to false, you create repository for images before pushing.
  /// [defaultVisibility] `PUBLIC` or `PRIVATE`, default repository visibility in this namespace.
  /// [id] ID of Container Registry Enterprise Edition namespace. It formats as `<instance_id>:<namespace_name>`. Before 1.161.0, it is a namespace uuid.
  /// [instanceId] ID of Container Registry Enterprise Edition instance.
  /// [name] Name of Container Registry Enterprise Edition namespace.
  /// [namespaceId] Container Registry Enterprise Edition namespace id. It is a uuid.
  /// [namespaceName] Name of Container Registry Enterprise Edition namespace.
  GetRegistryEnterpriseNamespacesNamespace({
    required this.autoCreate,
    required this.defaultVisibility,
    required this.id,
    required this.instanceId,
    required this.name,
    required this.namespaceId,
    required this.namespaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoCreate': autoCreate,
      'defaultVisibility': defaultVisibility,
      'id': id,
      'instanceId': instanceId,
      'name': name,
      'namespaceId': namespaceId,
      'namespaceName': namespaceName,
    };
  }

  factory GetRegistryEnterpriseNamespacesNamespace.fromMap(Map<String, dynamic> map) {
    return GetRegistryEnterpriseNamespacesNamespace(
      autoCreate: (map['autoCreate'] as bool).input(),
      defaultVisibility: (map['defaultVisibility'] as String).input(),
      id: (map['id'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      name: (map['name'] as String).input(),
      namespaceId: (map['namespaceId'] as String).input(),
      namespaceName: (map['namespaceName'] as String).input(),
    );
  }
}

