// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dbsnapshot_attribute.dart';

/// Definition of awsRdsDBSnapshotAttributesResult
class AwsRdsDBSnapshotAttributesResultProperties {
  /// <p>The list of attributes and values for the manual DB snapshot.</p>
  final pulumi.Input<List<DBSnapshotAttribute>>? dbSnapshotAttributes;
  /// <p>The identifier of the manual DB snapshot that the attributes apply to.</p>
  final pulumi.Input<String>? dbSnapshotIdentifier;

  /// Creates a new [AwsRdsDBSnapshotAttributesResultProperties].
  /// [dbSnapshotAttributes] <p>The list of attributes and values for the manual DB snapshot.</p>
  /// [dbSnapshotIdentifier] <p>The identifier of the manual DB snapshot that the attributes apply to.</p>
  AwsRdsDBSnapshotAttributesResultProperties({
    this.dbSnapshotAttributes,
    this.dbSnapshotIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbSnapshotAttributes': ?pulumi.Input.mapOptionalInputValue<List<DBSnapshotAttribute>, List<Map<String, dynamic>>>(dbSnapshotAttributes, (value) => pulumi.Input.encodeList<DBSnapshotAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dbSnapshotIdentifier': ?dbSnapshotIdentifier,
    };
  }

  factory AwsRdsDBSnapshotAttributesResultProperties.fromMap(Map<String, dynamic> map) {
    return AwsRdsDBSnapshotAttributesResultProperties(
      dbSnapshotAttributes: map['dbSnapshotAttributes'] == null ? null : (pulumi.Input.decodeList<DBSnapshotAttribute>(map['dbSnapshotAttributes'], (value) => DBSnapshotAttribute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dbSnapshotIdentifier: map['dbSnapshotIdentifier'] == null ? null : (map['dbSnapshotIdentifier'] as String).input(),
    );
  }
}

