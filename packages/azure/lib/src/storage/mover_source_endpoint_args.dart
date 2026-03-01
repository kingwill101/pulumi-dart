// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_mover_source_endpoint_mover_source_endpoint_args_doc}
/// The set of arguments for MoverSourceEndpoint.
/// {@endtemplate}
/// {@macro pulumi_storage_mover_source_endpoint_mover_source_endpoint_args_doc}
class MoverSourceEndpointArgs {
  /// Specifies a description for the Storage Mover Source Endpoint.
  final pulumi.Input<String>? description;
  /// Specifies the directory being exported from the server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? export;
  /// Specifies the host name or IP address of the server exporting the file system. Changing this forces a new resource to be created.
  final pulumi.Input<String> host;
  /// Specifies the name which should be used for this Storage Mover Source Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the NFS protocol version. Possible values are `NFSauto`, `NFSv3` and `NFSv4`. Defaults to `NFSauto`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? nfsVersion;
  /// Specifies the ID of the Storage Mover for this Storage Mover Source Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String> storageMoverId;

  /// Creates a new [MoverSourceEndpointArgs].
  /// [description] Specifies a description for the Storage Mover Source Endpoint.
  /// [export] Specifies the directory being exported from the server. Changing this forces a new resource to be created.
  /// [host] Specifies the host name or IP address of the server exporting the file system. Changing this forces a new resource to be created.
  /// [name] Specifies the name which should be used for this Storage Mover Source Endpoint. Changing this forces a new resource to be created.
  /// [nfsVersion] Specifies the NFS protocol version. Possible values are `NFSauto`, `NFSv3` and `NFSv4`. Defaults to `NFSauto`. Changing this forces a new resource to be created.
  /// [storageMoverId] Specifies the ID of the Storage Mover for this Storage Mover Source Endpoint. Changing this forces a new resource to be created.
  MoverSourceEndpointArgs({
    String? description,
    String? export,
    required String host,
    String? name,
    String? nfsVersion,
    required String storageMoverId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      export = pulumi.Input.asOptionalInput<String>(export),
      host = pulumi.Input.asInput<String>(host),
      name = pulumi.Input.asOptionalInput<String>(name),
      nfsVersion = pulumi.Input.asOptionalInput<String>(nfsVersion),
      storageMoverId = pulumi.Input.asInput<String>(storageMoverId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'export': ?export,
      'host': host,
      'name': ?name,
      'nfsVersion': ?nfsVersion,
      'storageMoverId': storageMoverId,
    };
  }

  factory MoverSourceEndpointArgs.fromMap(Map<String, dynamic> map) {
    return MoverSourceEndpointArgs(
      description: map['description'] == null ? null : map['description'] as String,
      export: map['export'] == null ? null : map['export'] as String,
      host: map['host'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      nfsVersion: map['nfsVersion'] == null ? null : map['nfsVersion'] as String,
      storageMoverId: map['storageMoverId'] as String,
    );
  }
}

