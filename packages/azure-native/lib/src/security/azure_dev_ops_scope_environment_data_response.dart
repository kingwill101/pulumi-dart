// ignore_for_file: unused_element, unnecessary_cast


/// The AzureDevOps scope connector's environment data
class AzureDevOpsScopeEnvironmentDataResponse {
  /// The type of the environment data.
  /// Expected value is 'AzureDevOpsScope'.
  final String environmentType;

  /// Creates a new [AzureDevOpsScopeEnvironmentDataResponse].
  /// [environmentType] The type of the environment data.
  AzureDevOpsScopeEnvironmentDataResponse({
    required this.environmentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentType': environmentType,
    };
  }

  factory AzureDevOpsScopeEnvironmentDataResponse.fromMap(Map<String, dynamic> map) {
    return AzureDevOpsScopeEnvironmentDataResponse(
      environmentType: map['environmentType'] as String,
    );
  }
}

