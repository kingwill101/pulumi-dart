// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecs_prefix_list_entry.dart';

/// {@template pulumi_ecs_ecs_prefix_list_ecs_prefix_list_args_doc}
/// The set of arguments for EcsPrefixList.
/// {@endtemplate}
/// {@macro pulumi_ecs_ecs_prefix_list_ecs_prefix_list_args_doc}
class EcsPrefixListArgs {
  /// The IP address family. Valid values: `IPv4`,`IPv6`.
  final pulumi.Input<String> addressFamily;
  /// The description of the prefix list. The description must be 2 to 256 characters in length and cannot start with `http://` or `https://`.
  final pulumi.Input<String>? description;
  /// The Entry. The details see Block `entry`.
  final pulumi.Input<List<EcsPrefixListEntry>> entries;
  /// The maximum number of entries that the prefix list can contain.  Valid values: 1 to 200.
  final pulumi.Input<int> maxEntries;
  /// The name of the prefix. The name must be 2 to 128 characters in length. It must start with a letter and cannot start with `http://`, `https://`, `com.aliyun`, or `com.alibabacloud`. It can contain letters, digits, colons (:), underscores (_), periods (.), and hyphens (-).
  final pulumi.Input<String> prefixListName;

  /// Creates a new [EcsPrefixListArgs].
  /// [addressFamily] The IP address family. Valid values: `IPv4`,`IPv6`.
  /// [description] The description of the prefix list. The description must be 2 to 256 characters in length and cannot start with `http://` or `https://`.
  /// [entries] The Entry. The details see Block `entry`.
  /// [maxEntries] The maximum number of entries that the prefix list can contain.  Valid values: 1 to 200.
  /// [prefixListName] The name of the prefix. The name must be 2 to 128 characters in length. It must start with a letter and cannot start with `http://`, `https://`, `com.aliyun`, or `com.alibabacloud`. It can contain letters, digits, colons (:), underscores (_), periods (.), and hyphens (-).
  EcsPrefixListArgs({
    required pulumi.Output<String> addressFamily,
    pulumi.Output<String>? description,
    required pulumi.Output<List<EcsPrefixListEntry>> entries,
    required pulumi.Output<int> maxEntries,
    required pulumi.Output<String> prefixListName,
  }) :
      addressFamily = pulumi.Input.asInput<String>(addressFamily),
      description = pulumi.Input.asOptionalInput<String>(description),
      entries = pulumi.Input.asInput<List<EcsPrefixListEntry>>(entries),
      maxEntries = pulumi.Input.asInput<int>(maxEntries),
      prefixListName = pulumi.Input.asInput<String>(prefixListName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressFamily': addressFamily,
      'description': ?description,
      'entries': pulumi.Input.mapInputValue<List<EcsPrefixListEntry>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<EcsPrefixListEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxEntries': maxEntries,
      'prefixListName': prefixListName,
    };
  }

  factory EcsPrefixListArgs.fromMap(Map<String, dynamic> map) {
    return EcsPrefixListArgs(
      addressFamily: pulumi.Output.create<String>(map['addressFamily'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      entries: pulumi.Output.create<List<EcsPrefixListEntry>>(pulumi.Input.decodeList<EcsPrefixListEntry>(map['entries'], (value) => EcsPrefixListEntry.fromMap((value as Map).cast<String, dynamic>()))),
      maxEntries: pulumi.Output.create<int>(map['maxEntries'] as int),
      prefixListName: pulumi.Output.create<String>(map['prefixListName'] as String),
    );
  }
}

