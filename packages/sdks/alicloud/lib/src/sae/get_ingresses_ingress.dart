// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIngressesIngress {
  /// Cert Id.
  final pulumi.Input<String> certId;
  /// Default Rule.
  final pulumi.Input<String> defaultRule;
  /// Description.
  final pulumi.Input<String> description;
  /// The ID of the Ingress.
  final pulumi.Input<String> id;
  /// The first ID of the resource.
  final pulumi.Input<String> ingressId;
  /// SLB listening port.
  final pulumi.Input<int> listenerPort;
  /// The Id of Namespace.It can contain 2 to 32 characters.The value is in format {RegionId}:{namespace}.
  final pulumi.Input<String> namespaceId;
  /// SLB ID.
  final pulumi.Input<String> slbId;

  /// Creates a new [GetIngressesIngress].
  /// [certId] Cert Id.
  /// [defaultRule] Default Rule.
  /// [description] Description.
  /// [id] The ID of the Ingress.
  /// [ingressId] The first ID of the resource.
  /// [listenerPort] SLB listening port.
  /// [namespaceId] The Id of Namespace.It can contain 2 to 32 characters.The value is in format {RegionId}:{namespace}.
  /// [slbId] SLB ID.
  GetIngressesIngress({
    required this.certId,
    required this.defaultRule,
    required this.description,
    required this.id,
    required this.ingressId,
    required this.listenerPort,
    required this.namespaceId,
    required this.slbId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certId': certId,
      'defaultRule': defaultRule,
      'description': description,
      'id': id,
      'ingressId': ingressId,
      'listenerPort': listenerPort,
      'namespaceId': namespaceId,
      'slbId': slbId,
    };
  }

  factory GetIngressesIngress.fromMap(Map<String, dynamic> map) {
    return GetIngressesIngress(
      certId: (map['certId'] as String).input(),
      defaultRule: (map['defaultRule'] as String).input(),
      description: (map['description'] as String).input(),
      id: (map['id'] as String).input(),
      ingressId: (map['ingressId'] as String).input(),
      listenerPort: (map['listenerPort'] as int).input(),
      namespaceId: (map['namespaceId'] as String).input(),
      slbId: (map['slbId'] as String).input(),
    );
  }
}

