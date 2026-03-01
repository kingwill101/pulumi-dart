// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecs_prefix_list_entry.dart';

/// Input properties used for looking up and filtering EcsPrefixList resources.
class EcsPrefixListState {
  /// The IP address family. Valid values: `IPv4`,`IPv6`.
  final pulumi.Input<String>? addressFamily;
  /// The description of the prefix list. The description must be 2 to 256 characters in length and cannot start with `http://` or `https://`.
  final pulumi.Input<String>? description;
  /// The Entry. The details see Block `entry`.
  final pulumi.Input<List<EcsPrefixListEntry>>? entries;
  /// The maximum number of entries that the prefix list can contain.  Valid values: 1 to 200.
  final pulumi.Input<int>? maxEntries;
  /// The name of the prefix. The name must be 2 to 128 characters in length. It must start with a letter and cannot start with `http://`, `https://`, `com.aliyun`, or `com.alibabacloud`. It can contain letters, digits, colons (:), underscores (_), periods (.), and hyphens (-).
  final pulumi.Input<String>? prefixListName;

  /// Creates a new [EcsPrefixListState].
  /// [addressFamily] The IP address family. Valid values: `IPv4`,`IPv6`.
  /// [description] The description of the prefix list. The description must be 2 to 256 characters in length and cannot start with `http://` or `https://`.
  /// [entries] The Entry. The details see Block `entry`.
  /// [maxEntries] The maximum number of entries that the prefix list can contain.  Valid values: 1 to 200.
  /// [prefixListName] The name of the prefix. The name must be 2 to 128 characters in length. It must start with a letter and cannot start with `http://`, `https://`, `com.aliyun`, or `com.alibabacloud`. It can contain letters, digits, colons (:), underscores (_), periods (.), and hyphens (-).
  EcsPrefixListState({
    pulumi.Output<String>? addressFamily,
    pulumi.Output<String>? description,
    pulumi.Output<List<EcsPrefixListEntry>>? entries,
    pulumi.Output<int>? maxEntries,
    pulumi.Output<String>? prefixListName,
  }) :
      addressFamily = pulumi.Input.asOptionalInput<String>(addressFamily),
      description = pulumi.Input.asOptionalInput<String>(description),
      entries = pulumi.Input.asOptionalInput<List<EcsPrefixListEntry>>(entries),
      maxEntries = pulumi.Input.asOptionalInput<int>(maxEntries),
      prefixListName = pulumi.Input.asOptionalInput<String>(prefixListName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressFamily': ?addressFamily,
      'description': ?description,
      'entries': ?pulumi.Input.mapOptionalInputValue<List<EcsPrefixListEntry>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<EcsPrefixListEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxEntries': ?maxEntries,
      'prefixListName': ?prefixListName,
    };
  }

  factory EcsPrefixListState.fromMap(Map<String, dynamic> map) {
    return EcsPrefixListState(
      addressFamily: map['addressFamily'] == null ? null : pulumi.Output.create<String>(map['addressFamily'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      entries: map['entries'] == null ? null : pulumi.Output.create<List<EcsPrefixListEntry>>(pulumi.Input.decodeList<EcsPrefixListEntry>(map['entries'], (value) => EcsPrefixListEntry.fromMap((value as Map).cast<String, dynamic>()))),
      maxEntries: map['maxEntries'] == null ? null : pulumi.Output.create<int>(map['maxEntries'] as int),
      prefixListName: map['prefixListName'] == null ? null : pulumi.Output.create<String>(map['prefixListName'] as String),
    );
  }
}

