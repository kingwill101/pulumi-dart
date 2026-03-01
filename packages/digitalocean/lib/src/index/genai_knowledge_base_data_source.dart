import 'package:pulumi/pulumi.dart' as pulumi;
import 'genai_knowledge_base_data_source_args.dart';
import 'genai_knowledge_base_data_source_spaces_data_source.dart';
import 'genai_knowledge_base_data_source_web_crawler_data_source.dart';

class GenaiKnowledgeBaseDataSource extends pulumi.CustomResource {
  /// UUID of the Knowledge Base
  late final pulumi.Output<String> knowledgeBaseUuid;
  late final pulumi.Output<GenaiKnowledgeBaseDataSourceSpacesDataSource?> spacesDataSource;
  late final pulumi.Output<GenaiKnowledgeBaseDataSourceWebCrawlerDataSource?> webCrawlerDataSource;

  /// Creates a new [GenaiKnowledgeBaseDataSource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GenaiKnowledgeBaseDataSource]. {@macro pulumi_index_genai_knowledge_base_data_source_genai_knowledge_base_data_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GenaiKnowledgeBaseDataSource(
    String name, {
    GenaiKnowledgeBaseDataSourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/genaiKnowledgeBaseDataSource:GenaiKnowledgeBaseDataSource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.knowledgeBaseUuid = registerOutput<String>('knowledgeBaseUuid');
    this.spacesDataSource = registerOutput<GenaiKnowledgeBaseDataSourceSpacesDataSource?>('spacesDataSource');
    this.webCrawlerDataSource = registerOutput<GenaiKnowledgeBaseDataSourceWebCrawlerDataSource?>('webCrawlerDataSource');
  }
}
