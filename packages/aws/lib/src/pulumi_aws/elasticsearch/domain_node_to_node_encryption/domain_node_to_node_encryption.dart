// ignore_for_file: unused_element, unnecessary_cast

class DomainNodeToNodeEncryption {
  /// Whether to enable node-to-node encryption. If the <span pulumi-lang-nodejs="`nodeToNodeEncryption`" pulumi-lang-dotnet="`NodeToNodeEncryption`" pulumi-lang-go="`nodeToNodeEncryption`" pulumi-lang-python="`node_to_node_encryption`" pulumi-lang-yaml="`nodeToNodeEncryption`" pulumi-lang-java="`nodeToNodeEncryption`">`node_to_node_encryption`</span> block is not provided then this defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Enabling node-to-node encryption of a new domain requires an <span pulumi-lang-nodejs="`elasticsearchVersion`" pulumi-lang-dotnet="`ElasticsearchVersion`" pulumi-lang-go="`elasticsearchVersion`" pulumi-lang-python="`elasticsearch_version`" pulumi-lang-yaml="`elasticsearchVersion`" pulumi-lang-java="`elasticsearchVersion`">`elasticsearch_version`</span> of `6.0` or greater.
  final bool enabled;

  DomainNodeToNodeEncryption({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory DomainNodeToNodeEncryption.fromMap(Map<String, dynamic> map) {
    return DomainNodeToNodeEncryption(
      enabled: map['enabled'] as bool,
    );
  }
}
