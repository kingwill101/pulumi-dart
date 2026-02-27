// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ekm_connection_key_management_mode.dart';
import 'service_resolver.dart';

/// The set of arguments for EkmConnection.
class EkmConnectionArgs {
  /// Optional. Identifies the EKM Crypto Space that this EkmConnection maps to. Note: This field is required if KeyManagementMode is CLOUD_KMS.
  final pulumi.Input<String>? cryptoSpacePath;

  /// Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`.
  final pulumi.Input<String>? ekmConnectionId;

  /// Optional. Etag of the currently stored EkmConnection.
  final pulumi.Input<String>? etag;

  /// Optional. Describes who can perform control plane operations on the EKM. If unset, this defaults to MANUAL.
  final pulumi.Input<EkmConnectionKeyManagementMode>? keyManagementMode;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// A list of ServiceResolvers where the EKM can be reached. There should be one ServiceResolver per EKM replica. Currently, only a single ServiceResolver is supported.
  final pulumi.Input<List<ServiceResolver>>? serviceResolvers;

  EkmConnectionArgs({
    this.cryptoSpacePath,
    this.ekmConnectionId,
    this.etag,
    this.keyManagementMode,
    this.location,
    this.project,
    this.serviceResolvers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cryptoSpacePathValue = cryptoSpacePath;
    if (cryptoSpacePathValue != null) {
      map['cryptoSpacePath'] = cryptoSpacePathValue;
    }
    final ekmConnectionIdValue = ekmConnectionId;
    if (ekmConnectionIdValue != null) {
      map['ekmConnectionId'] = ekmConnectionIdValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final keyManagementModeValue = keyManagementMode;
    if (keyManagementModeValue != null) {
      map['keyManagementMode'] = pulumi.Input.mapOptionalInputValue<
          EkmConnectionKeyManagementMode,
          String>(keyManagementModeValue, (value) => value.value);
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final serviceResolversValue = serviceResolvers;
    if (serviceResolversValue != null) {
      map['serviceResolvers'] = pulumi.Input.mapOptionalInputValue<
              List<ServiceResolver>, List<Map<String, dynamic>>>(
          serviceResolversValue,
          (value) =>
              pulumi.Input.encodeList<ServiceResolver, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory EkmConnectionArgs.fromMap(Map<String, dynamic> map) {
    return EkmConnectionArgs(
      cryptoSpacePath:
          pulumi.Input.asOptionalInput<String>(map['cryptoSpacePath']),
      ekmConnectionId:
          pulumi.Input.asOptionalInput<String>(map['ekmConnectionId']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      keyManagementMode:
          pulumi.Input.asOptionalInput<EkmConnectionKeyManagementMode>(
              map['keyManagementMode']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serviceResolvers: pulumi.Input.asOptionalInput<List<ServiceResolver>>(
          map['serviceResolvers']),
    );
  }
}
