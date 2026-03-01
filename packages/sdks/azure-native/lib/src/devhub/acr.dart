// ignore_for_file: unused_element, unnecessary_cast


/// Information on the azure container registry
class ACR {
  /// ACR registry
  final String? acrRegistryName;
  /// ACR repository
  final String? acrRepositoryName;
  /// ACR resource group
  final String? acrResourceGroup;
  /// ACR subscription id
  final String? acrSubscriptionId;

  /// Creates a new [ACR].
  /// [acrRegistryName] ACR registry
  /// [acrRepositoryName] ACR repository
  /// [acrResourceGroup] ACR resource group
  /// [acrSubscriptionId] ACR subscription id
  ACR({
    this.acrRegistryName,
    this.acrRepositoryName,
    this.acrResourceGroup,
    this.acrSubscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acrRegistryName': ?acrRegistryName,
      'acrRepositoryName': ?acrRepositoryName,
      'acrResourceGroup': ?acrResourceGroup,
      'acrSubscriptionId': ?acrSubscriptionId,
    };
  }

  factory ACR.fromMap(Map<String, dynamic> map) {
    return ACR(
      acrRegistryName: map['acrRegistryName'] == null ? null : map['acrRegistryName'] as String,
      acrRepositoryName: map['acrRepositoryName'] == null ? null : map['acrRepositoryName'] as String,
      acrResourceGroup: map['acrResourceGroup'] == null ? null : map['acrResourceGroup'] as String,
      acrSubscriptionId: map['acrSubscriptionId'] == null ? null : map['acrSubscriptionId'] as String,
    );
  }
}

