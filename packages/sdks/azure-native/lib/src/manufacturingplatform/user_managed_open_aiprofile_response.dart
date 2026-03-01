// ignore_for_file: unused_element, unnecessary_cast


/// The properties related to User Managed OpenAI Resource
class UserManagedOpenAIProfileResponse {
  /// Embedding Model Deployment Name
  final String embeddingModelDeploymentName;
  /// Embedding Model Type
  final String embeddingModelType;
  /// GPT Model Deployment Name
  final String gptModelDeploymentName;
  /// Resource Id of OpenAI Resource
  final String id;

  /// Creates a new [UserManagedOpenAIProfileResponse].
  /// [embeddingModelDeploymentName] Embedding Model Deployment Name
  /// [embeddingModelType] Embedding Model Type
  /// [gptModelDeploymentName] GPT Model Deployment Name
  /// [id] Resource Id of OpenAI Resource
  UserManagedOpenAIProfileResponse({
    required this.embeddingModelDeploymentName,
    required this.embeddingModelType,
    required this.gptModelDeploymentName,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'embeddingModelDeploymentName': embeddingModelDeploymentName,
      'embeddingModelType': embeddingModelType,
      'gptModelDeploymentName': gptModelDeploymentName,
      'id': id,
    };
  }

  factory UserManagedOpenAIProfileResponse.fromMap(Map<String, dynamic> map) {
    return UserManagedOpenAIProfileResponse(
      embeddingModelDeploymentName: map['embeddingModelDeploymentName'] as String,
      embeddingModelType: map['embeddingModelType'] as String,
      gptModelDeploymentName: map['gptModelDeploymentName'] as String,
      id: map['id'] as String,
    );
  }
}

