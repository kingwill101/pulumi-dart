// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dbsnapshot_attribute_response.dart';

/// Definition of awsRdsDBSnapshotAttributesResult
class AwsRdsDBSnapshotAttributesResultPropertiesResponse {
  /// &lt;p&gt;The list of attributes and values for the manual DB snapshot.&lt;/p&gt;
  final pulumi.Input<List<DBSnapshotAttributeResponse>>? dbSnapshotAttributes;
  /// &lt;p&gt;The identifier of the manual DB snapshot that the attributes apply to.&lt;/p&gt;
  final pulumi.Input<String>? dbSnapshotIdentifier;

  /// Creates a new [AwsRdsDBSnapshotAttributesResultPropertiesResponse].
  /// [dbSnapshotAttributes] &lt;p&gt;The list of attributes and values for the manual DB snapshot.&lt;/p&gt;
  /// [dbSnapshotIdentifier] &lt;p&gt;The identifier of the manual DB snapshot that the attributes apply to.&lt;/p&gt;
  const AwsRdsDBSnapshotAttributesResultPropertiesResponse({
    this.dbSnapshotAttributes,
    this.dbSnapshotIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbSnapshotAttributes': ?pulumi.Input.mapOptionalInputValue<List<DBSnapshotAttributeResponse>, List<Map<String, dynamic>>>(dbSnapshotAttributes, (value) => pulumi.Input.encodeList<DBSnapshotAttributeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dbSnapshotIdentifier': ?dbSnapshotIdentifier,
    };
  }

  factory AwsRdsDBSnapshotAttributesResultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsRdsDBSnapshotAttributesResultPropertiesResponse(
      dbSnapshotAttributes: (() { final guardedValue = map['dbSnapshotAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DBSnapshotAttributeResponse>(guardedValue, (value) => DBSnapshotAttributeResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dbSnapshotIdentifier: (() { final guardedValue = map['dbSnapshotIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
