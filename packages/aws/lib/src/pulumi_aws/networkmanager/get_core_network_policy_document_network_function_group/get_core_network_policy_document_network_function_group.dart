// ignore_for_file: unused_element, unnecessary_cast

class GetCoreNetworkPolicyDocumentNetworkFunctionGroup {
  /// Optional description of the network function group.
  final String? description;

  /// This identifies the network function group container.
  final String name;

  /// This will be either <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, that attachment acceptance is required, or <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>, that it is not required.
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
