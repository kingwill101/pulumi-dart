import 'package:pulumi/pulumi.dart' as pulumi;
import 'knowledge_base_dialogflow_v2beta1_args.dart';

/// Creates a knowledge base. Note: The `projects.agent.knowledgeBases` resource is deprecated; only use `projects.knowledgeBases`.
class KnowledgeBaseDialogflowV2beta1 extends pulumi.CustomResource {
  /// The display name of the knowledge base. The name must be 1024 bytes or less; otherwise, the creation request fails.
  late final pulumi.Output<String> displayName;

  /// Language which represents the KnowledgeBase. When the KnowledgeBase is created/updated, this is populated for all non en-us languages. If not populated, the default language en-us applies.
  late final pulumi.Output<String> languageCode;
  late final pulumi.Output<String> location;

  /// The knowledge base resource name. The name must be empty when creating a knowledge base. Format: `projects//locations//knowledgeBases/`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Creates a new [KnowledgeBaseDialogflowV2beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KnowledgeBaseDialogflowV2beta1]. {@macro pulumi_dialogflow_v2beta1_knowledge_base_dialogflow_v2beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KnowledgeBaseDialogflowV2beta1(
    String name, {
    KnowledgeBaseDialogflowV2beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:dialogflow/v2beta1:KnowledgeBase',
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
