// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties related to OpenAI Resource
class OpenAIProfileResponse {
  /// Embedding Model Capacity
  final pulumi.Input<int>? embeddingModelCapacity;
  /// Embedding Model Name
  final pulumi.Input<String>? embeddingModelName;
  /// Embedding Model SKU Name
  final pulumi.Input<String>? embeddingModelSkuName;
  /// Embedding Model Version
  final pulumi.Input<String>? embeddingModelVersion;
  /// GPT Model Capacity
  final pulumi.Input<int>? gptModelCapacity;
  /// GPT Model Name
  final pulumi.Input<String>? gptModelName;
  /// GPT Model SKU Name
  final pulumi.Input<String>? gptModelSkuName;
  /// GPT Model Version
  final pulumi.Input<String>? gptModelVersion;
  /// Resource Id of OpenAI Resource
  final pulumi.Input<String> id;

  /// Creates a new [OpenAIProfileResponse].
  /// [embeddingModelCapacity] Embedding Model Capacity
  /// [embeddingModelName] Embedding Model Name
  /// [embeddingModelSkuName] Embedding Model SKU Name
  /// [embeddingModelVersion] Embedding Model Version
  /// [gptModelCapacity] GPT Model Capacity
  /// [gptModelName] GPT Model Name
  /// [gptModelSkuName] GPT Model SKU Name
  /// [gptModelVersion] GPT Model Version
  /// [id] Resource Id of OpenAI Resource
  OpenAIProfileResponse({
    this.embeddingModelCapacity,
    this.embeddingModelName,
    this.embeddingModelSkuName,
    this.embeddingModelVersion,
    this.gptModelCapacity,
    this.gptModelName,
    this.gptModelSkuName,
    this.gptModelVersion,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'embeddingModelCapacity': ?embeddingModelCapacity,
      'embeddingModelName': ?embeddingModelName,
      'embeddingModelSkuName': ?embeddingModelSkuName,
      'embeddingModelVersion': ?embeddingModelVersion,
      'gptModelCapacity': ?gptModelCapacity,
      'gptModelName': ?gptModelName,
      'gptModelSkuName': ?gptModelSkuName,
      'gptModelVersion': ?gptModelVersion,
      'id': id,
    };
  }

  factory OpenAIProfileResponse.fromMap(Map<String, dynamic> map) {
    return OpenAIProfileResponse(
      embeddingModelCapacity: map['embeddingModelCapacity'] == null ? null : (map['embeddingModelCapacity'] as int).input(),
      embeddingModelName: map['embeddingModelName'] == null ? null : (map['embeddingModelName'] as String).input(),
      embeddingModelSkuName: map['embeddingModelSkuName'] == null ? null : (map['embeddingModelSkuName'] as String).input(),
      embeddingModelVersion: map['embeddingModelVersion'] == null ? null : (map['embeddingModelVersion'] as String).input(),
      gptModelCapacity: map['gptModelCapacity'] == null ? null : (map['gptModelCapacity'] as int).input(),
      gptModelName: map['gptModelName'] == null ? null : (map['gptModelName'] as String).input(),
      gptModelSkuName: map['gptModelSkuName'] == null ? null : (map['gptModelSkuName'] as String).input(),
      gptModelVersion: map['gptModelVersion'] == null ? null : (map['gptModelVersion'] as String).input(),
      id: (map['id'] as String).input(),
    );
  }
}

