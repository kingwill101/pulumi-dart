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
      certId: pulumi.Input.fromValue(map['certId'] as String),
      defaultRule: pulumi.Input.fromValue(map['defaultRule'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      ingressId: pulumi.Input.fromValue(map['ingressId'] as String),
      listenerPort: pulumi.Input.fromValue(map['listenerPort'] as int),
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
      slbId: pulumi.Input.fromValue(map['slbId'] as String),
    );
  }
}

