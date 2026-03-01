// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_acls_acl_entry_list.dart';
import 'get_acls_acl_related_listener.dart';

class GetAclsAcl {
  /// A list of entry (IP addresses or CIDR blocks).  Each entry contains two sub-fields as `Entry Block` follows.
  final List<GetAclsAclEntryList> entryLists;
  /// Acl ID.
  final String id;
  final String ipVersion;
  /// Acl name.
  final String name;
  /// A list of listener are attached by the acl.  Each listener contains four sub-fields as `Listener Block` follows.
  final List<GetAclsAclRelatedListener> relatedListeners;
  /// The Id of resource group which acl belongs.
  final String resourceGroupId;
  /// A mapping of tags to assign to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetAclsAcl].
  /// [entryLists] A list of entry (IP addresses or CIDR blocks).  Each entry contains two sub-fields as `Entry Block` follows.
  /// [id] Acl ID.
  /// [ipVersion] Required.
  /// [name] Acl name.
  /// [relatedListeners] A list of listener are attached by the acl.  Each listener contains four sub-fields as `Listener Block` follows.
  /// [resourceGroupId] The Id of resource group which acl belongs.
  /// [tags] A mapping of tags to assign to the resource.
  GetAclsAcl({
    required this.entryLists,
    required this.id,
    required this.ipVersion,
    required this.name,
    required this.relatedListeners,
    required this.resourceGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entryLists': pulumi.Input.encodeList<GetAclsAclEntryList, Map<String, dynamic>>(entryLists, (value) => value.toMap()),
      'id': id,
      'ipVersion': ipVersion,
      'name': name,
      'relatedListeners': pulumi.Input.encodeList<GetAclsAclRelatedListener, Map<String, dynamic>>(relatedListeners, (value) => value.toMap()),
      'resourceGroupId': resourceGroupId,
      'tags': ?tags,
    };
  }

  factory GetAclsAcl.fromMap(Map<String, dynamic> map) {
    return GetAclsAcl(
      entryLists: pulumi.Input.decodeList<GetAclsAclEntryList>(map['entryLists'], (value) => GetAclsAclEntryList.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ipVersion: map['ipVersion'] as String,
      name: map['name'] as String,
      relatedListeners: pulumi.Input.decodeList<GetAclsAclRelatedListener>(map['relatedListeners'], (value) => GetAclsAclRelatedListener.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupId: map['resourceGroupId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

