import 'package:pulumi/pulumi.dart' as pulumi;
import 'genai_openai_api_key_args.dart';
import 'genai_openai_api_key_model.dart';

class GenaiOpenaiApiKey extends pulumi.CustomResource {
  /// The OpenAI API key.
  late final pulumi.Output<String> apiKey;
  /// When the API key was created.
  late final pulumi.Output<String> createdAt;
  /// Who created the API key.
  late final pulumi.Output<String> createdBy;
  /// When the API key was deleted.
  late final pulumi.Output<String> deletedAt;
  /// Models associated with the OpenAI API key
  late final pulumi.Output<List<GenaiOpenaiApiKeyModel>> models;
  /// A name for the API key.
  late final pulumi.Output<String> name;
  /// When the API key was last updated.
  late final pulumi.Output<String> updatedAt;
  /// The UUID of the API key.
  late final pulumi.Output<String> uuid;

  /// Creates a new [GenaiOpenaiApiKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GenaiOpenaiApiKey]. {@macro pulumi_index_genai_openai_api_key_genai_openai_api_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GenaiOpenaiApiKey(
    String name, {
    GenaiOpenaiApiKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/genaiOpenaiApiKey:GenaiOpenaiApiKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiKey = registerOutput<String>('apiKey');
    this.createdAt = registerOutput<String>('createdAt');
    this.createdBy = registerOutput<String>('createdBy');
    this.deletedAt = registerOutput<String>('deletedAt');
    this.models = registerOutput<List<GenaiOpenaiApiKeyModel>>('models');
    this.name = registerOutput<String>('name');
    this.updatedAt = registerOutput<String>('updatedAt');
    this.uuid = registerOutput<String>('uuid');
  }
}
