// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_spaces_properties_response_provisioning_status.dart';

/// HybridAKSStorageStatus defines the observed state of HybridAKSStorage
class StorageSpacesPropertiesResponseStatus {
  /// Contains Provisioning errors
  final pulumi.Input<StorageSpacesPropertiesResponseProvisioningStatus>? provisioningStatus;

  /// Creates a new [StorageSpacesPropertiesResponseStatus].
  /// [provisioningStatus] Contains Provisioning errors
  StorageSpacesPropertiesResponseStatus({
    this.provisioningStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningStatus': ?pulumi.Input.mapOptionalInputValue<StorageSpacesPropertiesResponseProvisioningStatus, Map<String, dynamic>>(provisioningStatus, (value) => value.toMap()),
    };
  }

  factory StorageSpacesPropertiesResponseStatus.fromMap(Map<String, dynamic> map) {
    return StorageSpacesPropertiesResponseStatus(
      provisioningStatus: map['provisioningStatus'] == null ? null : (StorageSpacesPropertiesResponseProvisioningStatus.fromMap((map['provisioningStatus'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

