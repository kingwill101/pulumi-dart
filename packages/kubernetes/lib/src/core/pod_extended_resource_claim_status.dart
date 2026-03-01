// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_extended_resource_request.dart';

/// PodExtendedResourceClaimStatus is stored in the PodStatus for the extended resource requests backed by DRA. It stores the generated name for the corresponding special ResourceClaim created by the scheduler.
class PodExtendedResourceClaimStatus {
  /// RequestMappings identifies the mapping of <container, extended resource backed by DRA> to  device request in the generated ResourceClaim.
  final List<ContainerExtendedResourceRequest> requestMappings;
  /// ResourceClaimName is the name of the ResourceClaim that was generated for the Pod in the namespace of the Pod.
  final String resourceClaimName;

  /// Creates a new [PodExtendedResourceClaimStatus].
  /// [requestMappings] RequestMappings identifies the mapping of <container, extended resource backed by DRA> to  device request in the generated ResourceClaim.
  /// [resourceClaimName] ResourceClaimName is the name of the ResourceClaim that was generated for the Pod in the namespace of the Pod.
  PodExtendedResourceClaimStatus({
    required this.requestMappings,
    required this.resourceClaimName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestMappings': pulumi.Input.encodeList<ContainerExtendedResourceRequest, Map<String, dynamic>>(requestMappings, (value) => value.toMap()),
      'resourceClaimName': resourceClaimName,
    };
  }

  factory PodExtendedResourceClaimStatus.fromMap(Map<String, dynamic> map) {
    return PodExtendedResourceClaimStatus(
      requestMappings: pulumi.Input.decodeList<ContainerExtendedResourceRequest>(map['requestMappings'], (value) => ContainerExtendedResourceRequest.fromMap((value as Map).cast<String, dynamic>())),
      resourceClaimName: map['resourceClaimName'] as String,
    );
  }
}

