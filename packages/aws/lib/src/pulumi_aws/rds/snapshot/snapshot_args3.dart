// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Snapshot.
class SnapshotArgs3 {
  /// The DB Instance Identifier from which to take the snapshot.
  final Input<String> dbInstanceIdentifier;

  /// The Identifier for the snapshot.
  final Input<String> dbSnapshotIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// List of AWS Account IDs to share the snapshot with. Use `all` to make the snapshot public.
  final Input<List<String>>? sharedAccounts;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  SnapshotArgs3({
    required this.dbInstanceIdentifier,
    required this.dbSnapshotIdentifier,
    this.region,
    this.sharedAccounts,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dbInstanceIdentifier'] = dbInstanceIdentifier;
    map['dbSnapshotIdentifier'] = dbSnapshotIdentifier;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sharedAccountsValue = sharedAccounts;
    if (sharedAccountsValue != null) {
      map['sharedAccounts'] = sharedAccountsValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory SnapshotArgs3.fromMap(Map<String, dynamic> map) {
    return SnapshotArgs3(
      dbInstanceIdentifier: Input.asInput<String>(map['dbInstanceIdentifier']),
      dbSnapshotIdentifier: Input.asInput<String>(map['dbSnapshotIdentifier']),
      region: Input.asOptionalInput<String>(map['region']),
      sharedAccounts:
          Input.asOptionalInput<List<String>>(map['sharedAccounts']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
