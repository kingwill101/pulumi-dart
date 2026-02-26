// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../ekm_connection_service_resolver/ekm_connection_service_resolver.dart';

/// The set of arguments for EkmConnection.
class EkmConnectionArgs {
  /// Optional. Identifies the EKM Crypto Space that this EkmConnection maps to. Note: This field is required if KeyManagementMode is CLOUD_KMS.
  final Input<String>? cryptoSpacePath;

  /// Optional. Etag of the currently stored EkmConnection.
  final Input<String>? etag;

  /// Optional. Describes who can perform control plane operations on the EKM. If unset, this defaults to MANUAL
  /// Default value is `MANUAL`.
  /// Possible values are: `MANUAL`, `CLOUD_KMS`.
  final Input<String>? keyManagementMode;

  /// The location for the EkmConnection.
  /// A full list of valid locations can be found by running `gcloud kms locations list`.
  final Input<String> location;

  /// The resource name for the EkmConnection.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// A list of ServiceResolvers where the EKM can be reached. There should be one ServiceResolver per EKM replica. Currently, only a single ServiceResolver is supported
  /// Structure is documented below.
  final Input<List<EkmConnectionServiceResolver>> serviceResolvers;

  EkmConnectionArgs({
    this.cryptoSpacePath,
    this.etag,
    this.keyManagementMode,
    required this.location,
    this.name,
    this.project,
    required this.serviceResolvers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cryptoSpacePathValue = cryptoSpacePath;
    if (cryptoSpacePathValue != null) {
      map['cryptoSpacePath'] = cryptoSpacePathValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final keyManagementModeValue = keyManagementMode;
    if (keyManagementModeValue != null) {
      map['keyManagementMode'] = keyManagementModeValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceResolvers'] = Input.mapInputValue<
            List<EkmConnectionServiceResolver>, List<Map<String, dynamic>>>(
        serviceResolvers,
        (value) => Input.encodeList<EkmConnectionServiceResolver,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    return map;
  }

  factory EkmConnectionArgs.fromMap(Map<String, dynamic> map) {
    return EkmConnectionArgs(
      cryptoSpacePath: Input.asOptionalInput<String>(map['cryptoSpacePath']),
      etag: Input.asOptionalInput<String>(map['etag']),
      keyManagementMode:
          Input.asOptionalInput<String>(map['keyManagementMode']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceResolvers: Input.asInput<List<EkmConnectionServiceResolver>>(
          map['serviceResolvers']),
    );
  }
}
