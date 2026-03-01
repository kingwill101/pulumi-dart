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
    pulumi.Output<String>? createTime,
    pulumi.Output<List<PrefixListEntry>>? entrys,
    pulumi.Output<String>? ipVersion,
    pulumi.Output<int>? maxEntries,
    pulumi.Output<List<PrefixListPrefixListAssociation>>? prefixListAssociations,
    pulumi.Output<String>? prefixListDescription,
    pulumi.Output<String>? prefixListId,
    pulumi.Output<String>? prefixListName,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? shareType,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      entrys = pulumi.Input.asOptionalInput<List<PrefixListEntry>>(entrys),
      ipVersion = pulumi.Input.asOptionalInput<String>(ipVersion),
      maxEntries = pulumi.Input.asOptionalInput<int>(maxEntries),
      prefixListAssociations = pulumi.Input.asOptionalInput<List<PrefixListPrefixListAssociation>>(prefixListAssociations),
      prefixListDescription = pulumi.Input.asOptionalInput<String>(prefixListDescription),
      prefixListId = pulumi.Input.asOptionalInput<String>(prefixListId),
      prefixListName = pulumi.Input.asOptionalInput<String>(prefixListName),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      shareType = pulumi.Input.asOptionalInput<String>(shareType),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      entrys: map['entrys'] == null ? null : pulumi.Output.create<List<PrefixListEntry>>(pulumi.Input.decodeList<PrefixListEntry>(map['entrys'], (value) => PrefixListEntry.fromMap((value as Map).cast<String, dynamic>()))),
      ipVersion: map['ipVersion'] == null ? null : pulumi.Output.create<String>(map['ipVersion'] as String),
      maxEntries: map['maxEntries'] == null ? null : pulumi.Output.create<int>(map['maxEntries'] as int),
      prefixListAssociations: map['prefixListAssociations'] == null ? null : pulumi.Output.create<List<PrefixListPrefixListAssociation>>(pulumi.Input.decodeList<PrefixListPrefixListAssociation>(map['prefixListAssociations'], (value) => PrefixListPrefixListAssociation.fromMap((value as Map).cast<String, dynamic>()))),
      prefixListDescription: map['prefixListDescription'] == null ? null : pulumi.Output.create<String>(map['prefixListDescription'] as String),
      prefixListId: map['prefixListId'] == null ? null : pulumi.Output.create<String>(map['prefixListId'] as String),
      prefixListName: map['prefixListName'] == null ? null : pulumi.Output.create<String>(map['prefixListName'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      shareType: map['shareType'] == null ? null : pulumi.Output.create<String>(map['shareType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

