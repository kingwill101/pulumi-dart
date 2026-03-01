// ignore_for_file: unused_element, unnecessary_cast


/// The AzureDevOps scope connector's environment data
class AzureDevOpsScopeEnvironmentData {
  /// The type of the environment data.
  /// Expected value is 'AzureDevOpsScope'.
  final String environmentType;

  /// Creates a new [AzureDevOpsScopeEnvironmentData].
  /// [environmentType] The type of the environment data.
  AzureDevOpsScopeEnvironmentData({
    required this.environmentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentType': environmentType,
    };
  }

  factory AzureDevOpsScopeEnvironmentData.fromMap(Map<String, dynamic> map) {
    return AzureDevOpsScopeEnvironmentData(
      environmentType: map['environmentType'] as String,
    );
  }
}

