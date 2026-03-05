// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_acls_acl_entry_list.dart';
import 'get_acls_acl_related_listener.dart';

class GetAclsAcl {
  /// A list of entry (IP addresses or CIDR blocks).  Each entry contains two sub-fields as `Entry Block` follows.
  final pulumi.Input<List<GetAclsAclEntryList>> entryLists;
  /// Acl ID.
  final pulumi.Input<String> id;
  final pulumi.Input<String> ipVersion;
  /// Acl name.
  final pulumi.Input<String> name;
  /// A list of listener are attached by the acl.  Each listener contains four sub-fields as `Listener Block` follows.
  final pulumi.Input<List<GetAclsAclRelatedListener>> relatedListeners;
  /// The Id of resource group which acl belongs.
  final pulumi.Input<String> resourceGroupId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

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
      'entryLists': pulumi.Input.mapInputValue<List<GetAclsAclEntryList>, List<Map<String, dynamic>>>(entryLists, (value) => pulumi.Input.encodeList<GetAclsAclEntryList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'ipVersion': ipVersion,
      'name': name,
      'relatedListeners': pulumi.Input.mapInputValue<List<GetAclsAclRelatedListener>, List<Map<String, dynamic>>>(relatedListeners, (value) => pulumi.Input.encodeList<GetAclsAclRelatedListener, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupId': resourceGroupId,
      'tags': ?tags,
    };
  }

  factory GetAclsAcl.fromMap(Map<String, dynamic> map) {
    return GetAclsAcl(
      entryLists: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAclsAclEntryList>(map['entryLists']!, (value) => GetAclsAclEntryList.fromMap((value as Map).cast<String, dynamic>()))),
      id: pulumi.Input.fromValue(map['id'] as String),
      ipVersion: pulumi.Input.fromValue(map['ipVersion'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      relatedListeners: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAclsAclRelatedListener>(map['relatedListeners']!, (value) => GetAclsAclRelatedListener.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

