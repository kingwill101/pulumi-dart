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
      acls: pulumi.Input.decodeList<GetNetworkAclsAcl>(map['acls'], (value) => GetNetworkAclsAcl.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      networkAclName: map['networkAclName'] == null ? null : map['networkAclName']! as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId']! as String,
      resourceType: map['resourceType'] == null ? null : map['resourceType']! as String,
      status: map['status'] == null ? null : map['status']! as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId']! as String,
    );
  }
}

