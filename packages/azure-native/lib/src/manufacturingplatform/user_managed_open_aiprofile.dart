// ignore_for_file: unused_element, unnecessary_cast


/// The properties related to User Managed OpenAI Resource
class UserManagedOpenAIProfile {
  /// Embedding Model Deployment Name
  final String embeddingModelDeploymentName;
  /// GPT Model Deployment Name
  final String gptModelDeploymentName;
  /// Resource Id of OpenAI Resource
  final String id;

  /// Creates a new [UserManagedOpenAIProfile].
  /// [embeddingModelDeploymentName] Embedding Model Deployment Name
  /// [gptModelDeploymentName] GPT Model Deployment Name
  /// [id] Resource Id of OpenAI Resource
  UserManagedOpenAIProfile({
    required this.embeddingModelDeploymentName,
    required this.gptModelDeploymentName,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'embeddingModelDeploymentName': embeddingModelDeploymentName,
      'gptModelDeploymentName': gptModelDeploymentName,
      'id': id,
    };
  }

  factory UserManagedOpenAIProfile.fromMap(Map<String, dynamic> map) {
    return UserManagedOpenAIProfile(
      embeddingModelDeploymentName: map['embeddingModelDeploymentName'] as String,
      gptModelDeploymentName: map['gptModelDeploymentName'] as String,
      id: map['id'] as String,
    );
  }
}

