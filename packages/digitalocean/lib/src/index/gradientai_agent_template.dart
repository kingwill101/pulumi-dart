// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gradientai_agent_template_knowledge_base.dart';
import 'gradientai_agent_template_model.dart';

class GradientaiAgentTemplate {
  /// Created At timestamp for the Knowledge Base
  final String? createdAt;
  /// Description of the Agent Template
  final String? description;
  /// Instruction for the Agent
  final String? instruction;
  /// K value for the Agent Template
  final int? k;
  /// List of Knowledge Bases
  final List<GradientaiAgentTemplateKnowledgeBase>? knowledgeBases;
  /// Maximum tokens allowed
  final int? maxTokens;
  /// Model of the Agent Template
  final List<GradientaiAgentTemplateModel>? models;
  /// Name of the Agent Template
  final String? name;
  /// Agent temperature setting
  final double? temperature;
  /// Top P sampling parameter
  final double? topP;
  /// Updated At timestamp for the Agent Template
  final String? updatedAt;
  /// uuid of the Agent Template
  final String? uuid;

  /// Creates a new [GradientaiAgentTemplate].
  /// [createdAt] Created At timestamp for the Knowledge Base
  /// [description] Description of the Agent Template
  /// [instruction] Instruction for the Agent
  /// [k] K value for the Agent Template
  /// [knowledgeBases] List of Knowledge Bases
  /// [maxTokens] Maximum tokens allowed
  /// [models] Model of the Agent Template
  /// [name] Name of the Agent Template
  /// [temperature] Agent temperature setting
  /// [topP] Top P sampling parameter
  /// [updatedAt] Updated At timestamp for the Agent Template
  /// [uuid] uuid of the Agent Template
  GradientaiAgentTemplate({
    this.createdAt,
    this.description,
    this.instruction,
    this.k,
    this.knowledgeBases,
    this.maxTokens,
    this.models,
    this.name,
    this.temperature,
    this.topP,
    this.updatedAt,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'description': ?description,
      'instruction': ?instruction,
      'k': ?k,
      'knowledgeBases': ?knowledgeBases == null ? null : pulumi.Input.encodeList<GradientaiAgentTemplateKnowledgeBase, Map<String, dynamic>>(knowledgeBases!, (value) => value.toMap()),
      'maxTokens': ?maxTokens,
      'models': ?models == null ? null : pulumi.Input.encodeList<GradientaiAgentTemplateModel, Map<String, dynamic>>(models!, (value) => value.toMap()),
      'name': ?name,
      'temperature': ?temperature,
      'topP': ?topP,
      'updatedAt': ?updatedAt,
      'uuid': ?uuid,
    };
  }

  factory GradientaiAgentTemplate.fromMap(Map<String, dynamic> map) {
    return GradientaiAgentTemplate(
      createdAt: map['createdAt'] == null ? null : map['createdAt'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      instruction: map['instruction'] == null ? null : map['instruction'] as String,
      k: map['k'] == null ? null : map['k'] as int,
      knowledgeBases: map['knowledgeBases'] == null ? null : pulumi.Input.decodeList<GradientaiAgentTemplateKnowledgeBase>(map['knowledgeBases'], (value) => GradientaiAgentTemplateKnowledgeBase.fromMap((value as Map).cast<String, dynamic>())),
      maxTokens: map['maxTokens'] == null ? null : map['maxTokens'] as int,
      models: map['models'] == null ? null : pulumi.Input.decodeList<GradientaiAgentTemplateModel>(map['models'], (value) => GradientaiAgentTemplateModel.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      temperature: map['temperature'] == null ? null : map['temperature'] as double,
      topP: map['topP'] == null ? null : map['topP'] as double,
      updatedAt: map['updatedAt'] == null ? null : map['updatedAt'] as String,
      uuid: map['uuid'] == null ? null : map['uuid'] as String,
    );
  }
}

