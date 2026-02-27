// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'allowed_client.dart';
import 'nfs_share_storage_type.dart';

/// The set of arguments for NfsShare.
class NfsShareArgs {
  /// List of allowed access points.
  final Input<List<AllowedClient>>? allowedClients;

  /// Labels as key value pairs.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Immutable. The name of the NFS share.
  final Input<String>? name;

  /// Immutable. Pod name. Pod is an independent part of infrastructure. NFSShare can only be connected to the assets (networks, instances) allocated in the same pod.
  final Input<String>? pod;
  final Input<String>? project;

  /// The requested size, in GiB.
  final Input<String>? requestedSizeGib;

  /// Immutable. The storage type of the underlying volume.
  final Input<NfsShareStorageType>? storageType;

  NfsShareArgs({
    this.allowedClients,
    this.labels,
    this.location,
    this.name,
    this.pod,
    this.project,
    this.requestedSizeGib,
    this.storageType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedClientsValue = allowedClients;
    if (allowedClientsValue != null) {
      map['allowedClients'] = Input.mapOptionalInputValue<List<AllowedClient>,
              List<Map<String, dynamic>>>(
          allowedClientsValue,
          (value) => Input.encodeList<AllowedClient, Map<String, dynamic>>(
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
          Input.mapOptionalInputValue<NfsShareStorageType, String>(
              storageTypeValue, (value) => value.value);
    }
    return map;
  }

  factory NfsShareArgs.fromMap(Map<String, dynamic> map) {
    return NfsShareArgs(
      allowedClients:
          Input.asOptionalInput<List<AllowedClient>>(map['allowedClients']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      pod: Input.asOptionalInput<String>(map['pod']),
      project: Input.asOptionalInput<String>(map['project']),
      requestedSizeGib: Input.asOptionalInput<String>(map['requestedSizeGib']),
      storageType:
          Input.asOptionalInput<NfsShareStorageType>(map['storageType']),
    );
  }
}
