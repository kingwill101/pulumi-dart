// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allowed_client.dart';
import 'nfs_share_storage_type.dart';

/// The set of arguments for NfsShare.
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
      allowedClients: pulumi.Input.asOptionalInput<List<AllowedClient>>(
          map['allowedClients']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      pod: pulumi.Input.asOptionalInput<String>(map['pod']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestedSizeGib:
          pulumi.Input.asOptionalInput<String>(map['requestedSizeGib']),
      storageType:
          pulumi.Input.asOptionalInput<NfsShareStorageType>(map['storageType']),
    );
  }
}
