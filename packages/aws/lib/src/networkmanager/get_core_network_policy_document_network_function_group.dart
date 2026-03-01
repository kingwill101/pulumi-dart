// ignore_for_file: unused_element, unnecessary_cast

class GetCoreNetworkPolicyDocumentNetworkFunctionGroup {
  /// Optional description of the network function group.
  final String? description;

  /// This identifies the network function group container.
  final String name;

  /// This will be either `true`, that attachment acceptance is required, or `false`, that it is not required.
  final bool requireAttachmentAcceptance;

  /// Creates a new [GetCoreNetworkPolicyDocumentNetworkFunctionGroup].
  /// [description] Optional description of the network function group.
  /// [name] This identifies the network function group container.
  /// [requireAttachmentAcceptance] This will be either `true`, that attachment acceptance is required, or `false`, that it is not required.
  GetCoreNetworkPolicyDocumentNetworkFunctionGroup({
    this.description,
    required this.name,
    required this.requireAttachmentAcceptance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': name,
      'requireAttachmentAcceptance': requireAttachmentAcceptance,
    };
  }

  factory GetCoreNetworkPolicyDocumentNetworkFunctionGroup.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetCoreNetworkPolicyDocumentNetworkFunctionGroup(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      name: map['name'] as String,
      requireAttachmentAcceptance: map['requireAttachmentAcceptance'] as bool,
    );
  }
}
