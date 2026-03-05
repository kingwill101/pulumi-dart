// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_acls_acl.dart';

/// Result data returned by getNetworkAcls.
class GetNetworkAclsResult {
  final List<GetNetworkAclsAcl> acls;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? networkAclName;
  final String? outputFile;
  final String? resourceId;
  final String? resourceType;
  final String? status;
  final String? vpcId;

  /// Creates a new [GetNetworkAclsResult].
  /// [acls] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [networkAclName] Optional.
  /// [outputFile] Optional.
  /// [resourceId] Optional.
  /// [resourceType] Optional.
  /// [status] Optional.
  /// [vpcId] Optional.
  GetNetworkAclsResult({
    required this.acls,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.networkAclName,
    this.outputFile,
    this.resourceId,
    this.resourceType,
    this.status,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acls': pulumi.Input.encodeList<GetNetworkAclsAcl, Map<String, dynamic>>(acls, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'networkAclName': ?networkAclName,
      'outputFile': ?outputFile,
      'resourceId': ?resourceId,
      'resourceType': ?resourceType,
      'status': ?status,
      'vpcId': ?vpcId,
    };
  }

  factory GetNetworkAclsResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkAclsResult(
      acls: pulumi.Input.decodeList<GetNetworkAclsAcl>(map['acls']!, (value) => GetNetworkAclsAcl.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      networkAclName: (() { final guardedValue = map['networkAclName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

