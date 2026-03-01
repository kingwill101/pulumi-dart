// ignore_for_file: unused_element, unnecessary_cast


/// The properties related to OpenAI Resource
class OpenAIProfile {
  /// Embedding Model Capacity
  final int? embeddingModelCapacity;
  /// Embedding Model Name
  final String? embeddingModelName;
  /// Embedding Model SKU Name
  final String? embeddingModelSkuName;
  /// Embedding Model Version
  final String? embeddingModelVersion;
  /// GPT Model Capacity
  final int? gptModelCapacity;
  /// GPT Model Name
  final String? gptModelName;
  /// GPT Model SKU Name
  final String? gptModelSkuName;
  /// GPT Model Version
  final String? gptModelVersion;

  /// Creates a new [OpenAIProfile].
  /// [embeddingModelCapacity] Embedding Model Capacity
  /// [embeddingModelName] Embedding Model Name
  /// [embeddingModelSkuName] Embedding Model SKU Name
  /// [embeddingModelVersion] Embedding Model Version
  /// [gptModelCapacity] GPT Model Capacity
  /// [gptModelName] GPT Model Name
  /// [gptModelSkuName] GPT Model SKU Name
  /// [gptModelVersion] GPT Model Version
  OpenAIProfile({
    this.embeddingModelCapacity,
    this.embeddingModelName,
    this.embeddingModelSkuName,
    this.embeddingModelVersion,
    this.gptModelCapacity,
    this.gptModelName,
    this.gptModelSkuName,
    this.gptModelVersion,
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
    };
  }

  factory OpenAIProfile.fromMap(Map<String, dynamic> map) {
    return OpenAIProfile(
      embeddingModelCapacity: map['embeddingModelCapacity'] == null ? null : map['embeddingModelCapacity'] as int,
      embeddingModelName: map['embeddingModelName'] == null ? null : map['embeddingModelName'] as String,
      embeddingModelSkuName: map['embeddingModelSkuName'] == null ? null : map['embeddingModelSkuName'] as String,
      embeddingModelVersion: map['embeddingModelVersion'] == null ? null : map['embeddingModelVersion'] as String,
      gptModelCapacity: map['gptModelCapacity'] == null ? null : map['gptModelCapacity'] as int,
      gptModelName: map['gptModelName'] == null ? null : map['gptModelName'] as String,
      gptModelSkuName: map['gptModelSkuName'] == null ? null : map['gptModelSkuName'] as String,
      gptModelVersion: map['gptModelVersion'] == null ? null : map['gptModelVersion'] as String,
    );
  }
}

