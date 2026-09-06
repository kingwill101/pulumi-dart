// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dbsnapshot_attribute.dart';

/// Definition of awsRdsDBSnapshotAttributesResult
class AwsRdsDBSnapshotAttributesResultProperties {
  /// &lt;p&gt;The list of attributes and values for the manual DB snapshot.&lt;/p&gt;
  final pulumi.Input<List<DBSnapshotAttribute>?>? dbSnapshotAttributes;
  /// &lt;p&gt;The identifier of the manual DB snapshot that the attributes apply to.&lt;/p&gt;
  final pulumi.Input<String?>? dbSnapshotIdentifier;

  /// Creates a new [AwsRdsDBSnapshotAttributesResultProperties].
  /// [dbSnapshotAttributes] &lt;p&gt;The list of attributes and values for the manual DB snapshot.&lt;/p&gt;
  /// [dbSnapshotIdentifier] &lt;p&gt;The identifier of the manual DB snapshot that the attributes apply to.&lt;/p&gt;
  const AwsRdsDBSnapshotAttributesResultProperties({
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
      dbSnapshotAttributes: (() { final guardedValue = map['dbSnapshotAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DBSnapshotAttribute>(guardedValue, (value) => DBSnapshotAttribute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dbSnapshotIdentifier: (() { final guardedValue = map['dbSnapshotIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
