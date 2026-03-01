// ignore_for_file: unused_element, unnecessary_cast


class DeploymentFrontendPrivate {
  /// Specify the method for allocating the private IP. Possible values are `Static` and `Dynamic`.
  final String allocationMethod;
  /// Specify the private IP Address.
  final String ipAddress;
  /// Specify the Subnet Resource ID for this NGINX Deployment.
  final String subnetId;

  /// Creates a new [DeploymentFrontendPrivate].
  /// [allocationMethod] Specify the method for allocating the private IP. Possible values are `Static` and `Dynamic`.
  /// [ipAddress] Specify the private IP Address.
  /// [subnetId] Specify the Subnet Resource ID for this NGINX Deployment.
  DeploymentFrontendPrivate({
    required this.allocationMethod,
    required this.ipAddress,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationMethod': allocationMethod,
      'ipAddress': ipAddress,
      'subnetId': subnetId,
    };
  }

  factory DeploymentFrontendPrivate.fromMap(Map<String, dynamic> map) {
    return DeploymentFrontendPrivate(
      allocationMethod: map['allocationMethod'] as String,
      ipAddress: map['ipAddress'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}

