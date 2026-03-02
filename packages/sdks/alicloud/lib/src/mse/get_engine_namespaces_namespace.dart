// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEngineNamespacesNamespace {
  /// The Number of Configuration of the Namespace.
  final pulumi.Input<int> configCount;
  /// The ID of the Engine Namespace. It is formatted to `<instance_id>:<namespace_id>`.
  final pulumi.Input<String> id;
  /// The description of the Namespace.
  final pulumi.Input<String> namespaceDesc;
  /// The id of Namespace.
  final pulumi.Input<String> namespaceId;
  /// The name of the Namespace.
  final pulumi.Input<String> namespaceShowName;
  /// The Quota of the Namespace.
  final pulumi.Input<int> quota;
  /// The number of active services.
  final pulumi.Input<String> serviceCount;
  /// The type of the Namespace, the value is as follows:
  /// - '0': Global Configuration.
  /// - '1': default namespace.
  /// - '2': Custom Namespace.
  final pulumi.Input<int> type;

  /// Creates a new [GetEngineNamespacesNamespace].
  /// [configCount] The Number of Configuration of the Namespace.
  /// [id] The ID of the Engine Namespace. It is formatted to `<instance_id>:<namespace_id>`.
  /// [namespaceDesc] The description of the Namespace.
  /// [namespaceId] The id of Namespace.
  /// [namespaceShowName] The name of the Namespace.
  /// [quota] The Quota of the Namespace.
  /// [serviceCount] The number of active services.
  /// [type] The type of the Namespace, the value is as follows:
  GetEngineNamespacesNamespace({
    required this.configCount,
    required this.id,
    required this.namespaceDesc,
    required this.namespaceId,
    required this.namespaceShowName,
    required this.quota,
    required this.serviceCount,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configCount': configCount,
      'id': id,
      'namespaceDesc': namespaceDesc,
      'namespaceId': namespaceId,
      'namespaceShowName': namespaceShowName,
      'quota': quota,
      'serviceCount': serviceCount,
      'type': type,
    };
  }

  factory GetEngineNamespacesNamespace.fromMap(Map<String, dynamic> map) {
    return GetEngineNamespacesNamespace(
      configCount: (map['configCount'] as int).input(),
      id: (map['id'] as String).input(),
      namespaceDesc: (map['namespaceDesc'] as String).input(),
      namespaceId: (map['namespaceId'] as String).input(),
      namespaceShowName: (map['namespaceShowName'] as String).input(),
      quota: (map['quota'] as int).input(),
      serviceCount: (map['serviceCount'] as String).input(),
      type: (map['type'] as int).input(),
    );
  }
}

