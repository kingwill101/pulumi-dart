// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The definition and properties of virtual network to which Azure-SSIS integration runtime will join.
class IntegrationRuntimeCustomerVirtualNetwork {
  /// The ID of subnet to which Azure-SSIS integration runtime will join.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [IntegrationRuntimeCustomerVirtualNetwork].
  /// [subnetId] The ID of subnet to which Azure-SSIS integration runtime will join.
  IntegrationRuntimeCustomerVirtualNetwork({
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnetId': ?subnetId,
    };
  }

  factory IntegrationRuntimeCustomerVirtualNetwork.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeCustomerVirtualNetwork(
      subnetId: map['subnetId'] == null ? null : (map['subnetId'] as String).input(),
    );
  }
}

