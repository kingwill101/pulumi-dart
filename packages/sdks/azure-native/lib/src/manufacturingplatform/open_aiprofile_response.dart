// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties related to OpenAI Resource
class OpenAIProfileResponse {
  /// Embedding Model Capacity
  final pulumi.Input<int?>? embeddingModelCapacity;
  /// Embedding Model Name
  final pulumi.Input<String?>? embeddingModelName;
  /// Embedding Model SKU Name
  final pulumi.Input<String?>? embeddingModelSkuName;
  /// Embedding Model Version
  final pulumi.Input<String?>? embeddingModelVersion;
  /// GPT Model Capacity
  final pulumi.Input<int?>? gptModelCapacity;
  /// GPT Model Name
  final pulumi.Input<String?>? gptModelName;
  /// GPT Model SKU Name
  final pulumi.Input<String?>? gptModelSkuName;
  /// GPT Model Version
  final pulumi.Input<String?>? gptModelVersion;
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
  const OpenAIProfileResponse({
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
      embeddingModelCapacity: (() { final guardedValue = map['embeddingModelCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      embeddingModelName: (() { final guardedValue = map['embeddingModelName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      embeddingModelSkuName: (() { final guardedValue = map['embeddingModelSkuName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      embeddingModelVersion: (() { final guardedValue = map['embeddingModelVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gptModelCapacity: (() { final guardedValue = map['gptModelCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      gptModelName: (() { final guardedValue = map['gptModelName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gptModelSkuName: (() { final guardedValue = map['gptModelSkuName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gptModelVersion: (() { final guardedValue = map['gptModelVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
