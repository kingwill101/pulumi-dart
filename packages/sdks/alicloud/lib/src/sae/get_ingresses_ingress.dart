// ignore_for_file: unused_element, unnecessary_cast


class GetIngressesIngress {
  /// Cert Id.
  final String certId;
  /// Default Rule.
  final String defaultRule;
  /// Description.
  final String description;
  /// The ID of the Ingress.
  final String id;
  /// The first ID of the resource.
  final String ingressId;
  /// SLB listening port.
  final int listenerPort;
  /// The Id of Namespace.It can contain 2 to 32 characters.The value is in format {RegionId}:{namespace}.
  final String namespaceId;
  /// SLB ID.
  final String slbId;

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
      certId: map['certId'] as String,
      defaultRule: map['defaultRule'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      ingressId: map['ingressId'] as String,
      listenerPort: map['listenerPort'] as int,
      namespaceId: map['namespaceId'] as String,
      slbId: map['slbId'] as String,
    );
  }
}

