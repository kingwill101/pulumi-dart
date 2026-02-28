// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allowed_client.dart';
import 'nfs_share_storage_type.dart';

/// {@template pulumi_baremetalsolution_v2_nfs_share_args_doc}
/// The set of arguments for NfsShare.
/// {@endtemplate}
/// {@macro pulumi_baremetalsolution_v2_nfs_share_args_doc}
class NfsShareArgs {
  /// List of allowed access points.
  final pulumi.Input<List<AllowedClient>>? allowedClients;

  /// Labels as key value pairs.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Immutable. The name of the NFS share.
  final pulumi.Input<String>? name;

  /// Immutable. Pod name. Pod is an independent part of infrastructure. NFSShare can only be connected to the assets (networks, instances) allocated in the same pod.
  final pulumi.Input<String>? pod;
  final pulumi.Input<String>? project;

  /// The requested size, in GiB.
  final pulumi.Input<String>? requestedSizeGib;

  /// Immutable. The storage type of the underlying volume.
  final pulumi.Input<NfsShareStorageType>? storageType;

  /// Creates a new [NfsShareArgs].
  /// [allowedClients] List of allowed access points.
  /// [labels] Labels as key value pairs.
  /// [location] Optional.
  /// [name] Immutable. The name of the NFS share.
  /// [pod] Immutable. Pod name. Pod is an independent part of infrastructure. NFSShare can only be connected to the assets (networks, instances) allocated in the same pod.
  /// [project] Optional.
  /// [requestedSizeGib] The requested size, in GiB.
  /// [storageType] Immutable. The storage type of the underlying volume.
  NfsShareArgs({
    List<AllowedClient>? allowedClients,
    Map<String, String>? labels,
    String? location,
    String? name,
    String? pod,
    String? project,
    String? requestedSizeGib,
    NfsShareStorageType? storageType,
  })  : allowedClients =
            pulumi.Input.asOptionalInput<List<AllowedClient>>(allowedClients),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        pod = pulumi.Input.asOptionalInput<String>(pod),
        project = pulumi.Input.asOptionalInput<String>(project),
        requestedSizeGib =
            pulumi.Input.asOptionalInput<String>(requestedSizeGib),
        storageType =
            pulumi.Input.asOptionalInput<NfsShareStorageType>(storageType);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedClientsValue = allowedClients;
    if (allowedClientsValue != null) {
      map['allowedClients'] = pulumi.Input.mapOptionalInputValue<
              List<AllowedClient>, List<Map<String, dynamic>>>(
          allowedClientsValue,
          (value) =>
              pulumi.Input.encodeList<AllowedClient, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final podValue = pod;
    if (podValue != null) {
      map['pod'] = podValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestedSizeGibValue = requestedSizeGib;
    if (requestedSizeGibValue != null) {
      map['requestedSizeGib'] = requestedSizeGibValue;
    }
    final storageTypeValue = storageType;
    if (storageTypeValue != null) {
      map['storageType'] =
          pulumi.Input.mapOptionalInputValue<NfsShareStorageType, String>(
              storageTypeValue, (value) => value.value);
    }
    return map;
  }

  factory NfsShareArgs.fromMap(Map<String, dynamic> map) {
    return NfsShareArgs(
      allowedClients: map['allowedClients'] == null
          ? null
          : pulumi.Input.decodeList<AllowedClient>(
              map['allowedClients'],
              (value) => AllowedClient.fromMap(
                  (value as Map).cast<String, dynamic>())),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      pod: map['pod'] == null ? null : map['pod'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestedSizeGib: map['requestedSizeGib'] == null
          ? null
          : map['requestedSizeGib'] as String,
      storageType: map['storageType'] == null
          ? null
          : NfsShareStorageType.fromValue(map['storageType'] as String),
    );
  }
}
