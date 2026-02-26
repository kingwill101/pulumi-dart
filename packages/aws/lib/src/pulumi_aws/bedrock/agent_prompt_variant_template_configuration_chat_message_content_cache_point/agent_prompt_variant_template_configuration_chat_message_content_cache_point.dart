// ignore_for_file: unused_element, unnecessary_cast

class AgentPromptVariantTemplateConfigurationChatMessageContentCachePoint {
  /// Indicates that the CachePointBlock is of the default type. Valid values: <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span>.
  final String type;

  AgentPromptVariantTemplateConfigurationChatMessageContentCachePoint({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory AgentPromptVariantTemplateConfigurationChatMessageContentCachePoint.fromMap(
      Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfigurationChatMessageContentCachePoint(
      type: map['type'] as String,
    );
  }
}
