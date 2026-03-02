// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_status_provisioning_status_response.dart';

/// The observed status of the virtual network
class LoadBalancerStatusResponse {
  /// LoadBalancer provisioning error code
  final pulumi.Input<String>? errorCode;
  /// Descriptive error message
  final pulumi.Input<String>? errorMessage;
  /// virtual network provisioning status
  final pulumi.Input<LoadBalancerStatusProvisioningStatusResponse>? provisioningStatus;

  /// Creates a new [LoadBalancerStatusResponse].
  /// [errorCode] LoadBalancer provisioning error code
  /// [errorMessage] Descriptive error message
  /// [provisioningStatus] virtual network provisioning status
  LoadBalancerStatusResponse({
    this.errorCode,
    this.errorMessage,
    this.provisioningStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': ?errorCode,
      'errorMessage': ?errorMessage,
      'provisioningStatus': ?pulumi.Input.mapOptionalInputValue<LoadBalancerStatusProvisioningStatusResponse, Map<String, dynamic>>(provisioningStatus, (value) => value.toMap()),
    };
  }

  factory LoadBalancerStatusResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerStatusResponse(
      errorCode: map['errorCode'] == null ? null : (map['errorCode'] as String).input(),
      errorMessage: map['errorMessage'] == null ? null : (map['errorMessage'] as String).input(),
      provisioningStatus: map['provisioningStatus'] == null ? null : (LoadBalancerStatusProvisioningStatusResponse.fromMap((map['provisioningStatus'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

