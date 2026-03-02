// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dbsnapshot_attribute_response.dart';

/// Definition of awsRdsDBSnapshotAttributesResult
class AwsRdsDBSnapshotAttributesResultPropertiesResponse {
  /// <p>The list of attributes and values for the manual DB snapshot.</p>
  final pulumi.Input<List<DBSnapshotAttributeResponse>>? dbSnapshotAttributes;
  /// <p>The identifier of the manual DB snapshot that the attributes apply to.</p>
  final pulumi.Input<String>? dbSnapshotIdentifier;

  /// Creates a new [AwsRdsDBSnapshotAttributesResultPropertiesResponse].
  /// [dbSnapshotAttributes] <p>The list of attributes and values for the manual DB snapshot.</p>
  /// [dbSnapshotIdentifier] <p>The identifier of the manual DB snapshot that the attributes apply to.</p>
  AwsRdsDBSnapshotAttributesResultPropertiesResponse({
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
      dbSnapshotAttributes: map['dbSnapshotAttributes'] == null ? null : (pulumi.Input.decodeList<DBSnapshotAttributeResponse>(map['dbSnapshotAttributes']!, (value) => DBSnapshotAttributeResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dbSnapshotIdentifier: map['dbSnapshotIdentifier'] == null ? null : (map['dbSnapshotIdentifier']! as String).input(),
    );
  }
}

