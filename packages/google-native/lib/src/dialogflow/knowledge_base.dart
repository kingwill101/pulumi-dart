import 'package:pulumi/pulumi.dart' as pulumi;
import 'knowledge_base_args.dart';

/// Creates a knowledge base.
class KnowledgeBase extends pulumi.CustomResource {
  /// The display name of the knowledge base. The name must be 1024 bytes or less; otherwise, the creation request fails.
  late final pulumi.Output<String> displayName;
  /// Language which represents the KnowledgeBase. When the KnowledgeBase is created/updated, expect this to be present for non en-us languages. When unspecified, the default language code en-us applies.
  late final pulumi.Output<String> languageCode;
  late final pulumi.Output<String> location;
  /// The knowledge base resource name. The name must be empty when creating a knowledge base. Format: `projects//locations//knowledgeBases/`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Creates a new [KnowledgeBase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KnowledgeBase]. {@macro pulumi_dialogflow_v2_knowledge_base_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KnowledgeBase(
    String name, {
    KnowledgeBaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v2:KnowledgeBase',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String>('displayName');
    this.languageCode = registerOutput<String>('languageCode');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
