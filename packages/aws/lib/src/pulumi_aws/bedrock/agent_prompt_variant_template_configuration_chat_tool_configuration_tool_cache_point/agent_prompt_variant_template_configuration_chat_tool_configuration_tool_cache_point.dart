// ignore_for_file: unused_element, unnecessary_cast

class AgentPromptVariantTemplateConfigurationChatToolConfigurationToolCachePoint {
  /// Indicates that the CachePointBlock is of the default type. Valid values: <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span>.
  final String type;

  AgentPromptVariantTemplateConfigurationChatToolConfigurationToolCachePoint({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory AgentPromptVariantTemplateConfigurationChatToolConfigurationToolCachePoint.fromMap(
      Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfigurationChatToolConfigurationToolCachePoint(
      type: map['type'] as String,
    );
  }
}
