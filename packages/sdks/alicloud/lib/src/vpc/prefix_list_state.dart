// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prefix_list_entry.dart';
import 'prefix_list_prefix_list_association.dart';

/// Input properties used for looking up and filtering PrefixList resources.
class PrefixListState {
  /// The time when the prefix list was created.
  final pulumi.Input<String>? createTime;
  /// The CIDR address block list of the prefix list.See the following `Block Entrys`.
  final pulumi.Input<List<PrefixListEntry>>? entrys;
  /// The IP version of the prefix list. Value:-**IPV4**:IPv4 version.-**IPV6**:IPv6 version.
  final pulumi.Input<String>? ipVersion;
  /// The maximum number of entries for CIDR address blocks in the prefix list.
  final pulumi.Input<int>? maxEntries;
  /// The association list information of the prefix list.
  final pulumi.Input<List<PrefixListPrefixListAssociation>>? prefixListAssociations;
  /// The description of the prefix list.It must be 2 to 256 characters in length and must start with a letter or Chinese, but cannot start with `http://` or `https://`.
  final pulumi.Input<String>? prefixListDescription;
  /// The ID of the query Prefix List.
  final pulumi.Input<String>? prefixListId;
  /// The name of the prefix list. The name must be 2 to 128 characters in length, and must start with a letter. It can contain digits, periods (.), underscores (_), and hyphens (-).
  final pulumi.Input<String>? prefixListName;
  /// The ID of the resource group to which the PrefixList belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// The share type of the prefix list. Value:-**Shared**: indicates that the prefix list is a Shared prefix list.-Null: indicates that the prefix list is not a shared prefix list.
  final pulumi.Input<String>? shareType;
  /// Resource attribute fields that represent the status of the resource.
  final pulumi.Input<String>? status;
  /// The tags of PrefixList.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PrefixListState].
  /// [createTime] The time when the prefix list was created.
  /// [entrys] The CIDR address block list of the prefix list.See the following `Block Entrys`.
  /// [ipVersion] The IP version of the prefix list. Value:-**IPV4**:IPv4 version.-**IPV6**:IPv6 version.
  /// [maxEntries] The maximum number of entries for CIDR address blocks in the prefix list.
  /// [prefixListAssociations] The association list information of the prefix list.
  /// [prefixListDescription] The description of the prefix list.It must be 2 to 256 characters in length and must start with a letter or Chinese, but cannot start with `http://` or `https://`.
  /// [prefixListId] The ID of the query Prefix List.
  /// [prefixListName] The name of the prefix list. The name must be 2 to 128 characters in length, and must start with a letter. It can contain digits, periods (.), underscores (_), and hyphens (-).
  /// [resourceGroupId] The ID of the resource group to which the PrefixList belongs.
  /// [shareType] The share type of the prefix list. Value:-**Shared**: indicates that the prefix list is a Shared prefix list.-Null: indicates that the prefix list is not a shared prefix list.
  /// [status] Resource attribute fields that represent the status of the resource.
  /// [tags] The tags of PrefixList.
  PrefixListState({
    this.createTime,
    this.entrys,
    this.ipVersion,
    this.maxEntries,
    this.prefixListAssociations,
    this.prefixListDescription,
    this.prefixListId,
    this.prefixListName,
    this.resourceGroupId,
    this.shareType,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'entrys': ?pulumi.Input.mapOptionalInputValue<List<PrefixListEntry>, List<Map<String, dynamic>>>(entrys, (value) => pulumi.Input.encodeList<PrefixListEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipVersion': ?ipVersion,
      'maxEntries': ?maxEntries,
      'prefixListAssociations': ?pulumi.Input.mapOptionalInputValue<List<PrefixListPrefixListAssociation>, List<Map<String, dynamic>>>(prefixListAssociations, (value) => pulumi.Input.encodeList<PrefixListPrefixListAssociation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'prefixListDescription': ?prefixListDescription,
      'prefixListId': ?prefixListId,
      'prefixListName': ?prefixListName,
      'resourceGroupId': ?resourceGroupId,
      'shareType': ?shareType,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory PrefixListState.fromMap(Map<String, dynamic> map) {
    return PrefixListState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      entrys: map['entrys'] == null ? null : (pulumi.Input.decodeList<PrefixListEntry>(map['entrys']!, (value) => PrefixListEntry.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipVersion: map['ipVersion'] == null ? null : (map['ipVersion']! as String).input(),
      maxEntries: map['maxEntries'] == null ? null : (map['maxEntries']! as int).input(),
      prefixListAssociations: map['prefixListAssociations'] == null ? null : (pulumi.Input.decodeList<PrefixListPrefixListAssociation>(map['prefixListAssociations']!, (value) => PrefixListPrefixListAssociation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      prefixListDescription: map['prefixListDescription'] == null ? null : (map['prefixListDescription']! as String).input(),
      prefixListId: map['prefixListId'] == null ? null : (map['prefixListId']! as String).input(),
      prefixListName: map['prefixListName'] == null ? null : (map['prefixListName']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      shareType: map['shareType'] == null ? null : (map['shareType']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

