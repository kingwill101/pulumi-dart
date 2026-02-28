// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ekm_connection_key_management_mode.dart';
import 'service_resolver.dart';

/// {@template pulumi_cloudkms_v1_ekm_connection_args_doc}
/// The set of arguments for EkmConnection.
/// {@endtemplate}
/// {@macro pulumi_cloudkms_v1_ekm_connection_args_doc}
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

  /// Creates a new [EkmConnectionArgs].
  /// [cryptoSpacePath] Optional. Identifies the EKM Crypto Space that this EkmConnection maps to. Note: This field is required if KeyManagementMode is CLOUD_KMS.
  /// [ekmConnectionId] Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`.
  /// [etag] Optional. Etag of the currently stored EkmConnection.
  /// [keyManagementMode] Optional. Describes who can perform control plane operations on the EKM. If unset, this defaults to MANUAL.
  /// [location] Optional.
  /// [project] Optional.
  /// [serviceResolvers] A list of ServiceResolvers where the EKM can be reached. There should be one ServiceResolver per EKM replica. Currently, only a single ServiceResolver is supported.
  EkmConnectionArgs({
    String? cryptoSpacePath,
    String? ekmConnectionId,
    String? etag,
    EkmConnectionKeyManagementMode? keyManagementMode,
    String? location,
    String? project,
    List<ServiceResolver>? serviceResolvers,
  }) :
      cryptoSpacePath = pulumi.Input.asOptionalInput<String>(cryptoSpacePath),
      ekmConnectionId = pulumi.Input.asOptionalInput<String>(ekmConnectionId),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      keyManagementMode = pulumi.Input.asOptionalInput<EkmConnectionKeyManagementMode>(keyManagementMode),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceResolvers = pulumi.Input.asOptionalInput<List<ServiceResolver>>(serviceResolvers);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoSpacePath': ?cryptoSpacePath,
      'ekmConnectionId': ?ekmConnectionId,
      'etag': ?etag,
      'keyManagementMode': ?pulumi.Input.mapOptionalInputValue<EkmConnectionKeyManagementMode, String>(keyManagementMode, (value) => value.value),
      'location': ?location,
      'project': ?project,
      'serviceResolvers': ?pulumi.Input.mapOptionalInputValue<List<ServiceResolver>, List<Map<String, dynamic>>>(serviceResolvers, (value) => pulumi.Input.encodeList<ServiceResolver, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EkmConnectionArgs.fromMap(Map<String, dynamic> map) {
    return EkmConnectionArgs(
      cryptoSpacePath: map['cryptoSpacePath'] == null ? null : map['cryptoSpacePath'] as String,
      ekmConnectionId: map['ekmConnectionId'] == null ? null : map['ekmConnectionId'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      keyManagementMode: map['keyManagementMode'] == null ? null : EkmConnectionKeyManagementMode.fromValue(map['keyManagementMode'] as String),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serviceResolvers: map['serviceResolvers'] == null ? null : pulumi.Input.decodeList<ServiceResolver>(map['serviceResolvers'], (value) => ServiceResolver.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

