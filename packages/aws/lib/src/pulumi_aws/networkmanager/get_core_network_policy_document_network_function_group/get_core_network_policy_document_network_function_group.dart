// ignore_for_file: unused_element, unnecessary_cast

class GetCoreNetworkPolicyDocumentNetworkFunctionGroup {
  /// Optional description of the network function group.
  final String? description;

  /// This identifies the network function group container.
  final String name;

  /// This will be either `true`, that attachment acceptance is required, or `false`, that it is not required.
  final bool requireAttachmentAcceptance;

  GetCoreNetworkPolicyDocumentNetworkFunctionGroup({
    this.description,
    required this.name,
    required this.requireAttachmentAcceptance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['name'] = name;
    map['requireAttachmentAcceptance'] = requireAttachmentAcceptance;
    return map;
  }

  factory GetCoreNetworkPolicyDocumentNetworkFunctionGroup.fromMap(
      Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentNetworkFunctionGroup(
      description:
          map['description'] == null ? null : map['description'] as String,
      name: map['name'] as String,
      requireAttachmentAcceptance: map['requireAttachmentAcceptance'] as bool,
    );
  }
}
