// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information on the azure container registry
class ACRResponse {
  /// ACR registry
  final pulumi.Input<String>? acrRegistryName;
  /// ACR repository
  final pulumi.Input<String>? acrRepositoryName;
  /// ACR resource group
  final pulumi.Input<String>? acrResourceGroup;
  /// ACR subscription id
  final pulumi.Input<String>? acrSubscriptionId;

  /// Creates a new [ACRResponse].
  /// [acrRegistryName] ACR registry
  /// [acrRepositoryName] ACR repository
  /// [acrResourceGroup] ACR resource group
  /// [acrSubscriptionId] ACR subscription id
  ACRResponse({
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

  factory ACRResponse.fromMap(Map<String, dynamic> map) {
    return ACRResponse(
      acrRegistryName: map['acrRegistryName'] == null ? null : (map['acrRegistryName'] as String).input(),
      acrRepositoryName: map['acrRepositoryName'] == null ? null : (map['acrRepositoryName'] as String).input(),
      acrResourceGroup: map['acrResourceGroup'] == null ? null : (map['acrResourceGroup'] as String).input(),
      acrSubscriptionId: map['acrSubscriptionId'] == null ? null : (map['acrSubscriptionId'] as String).input(),
    );
  }
}

