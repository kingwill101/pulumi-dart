// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_gradientai_knowledge_base_data_sources_get_gradientai_knowledge_base_data_sources_args_doc}
/// Arguments for getGradientaiKnowledgeBaseDataSources.
/// {@endtemplate}
/// {@macro pulumi_index_get_gradientai_knowledge_base_data_sources_get_gradientai_knowledge_base_data_sources_args_doc}
class GetGradientaiKnowledgeBaseDataSourcesArgs {
  final pulumi.Input<String> knowledgeBaseUuid;

  /// Creates a new [GetGradientaiKnowledgeBaseDataSourcesArgs].
  /// [knowledgeBaseUuid] Required.
  GetGradientaiKnowledgeBaseDataSourcesArgs({
    required String knowledgeBaseUuid,
  }) :
      knowledgeBaseUuid = pulumi.Input.asInput<String>(knowledgeBaseUuid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'knowledgeBaseUuid': knowledgeBaseUuid,
    };
  }

  factory GetGradientaiKnowledgeBaseDataSourcesArgs.fromMap(Map<String, dynamic> map) {
    return GetGradientaiKnowledgeBaseDataSourcesArgs(
      knowledgeBaseUuid: map['knowledgeBaseUuid'] as String,
    );
  }
}

