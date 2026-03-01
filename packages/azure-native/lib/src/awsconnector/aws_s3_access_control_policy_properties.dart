// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grant.dart';
import 'owner.dart';

/// Definition of awsS3AccessControlPolicy
class AwsS3AccessControlPolicyProperties {
  /// <p>A list of grants.</p>
  final List<Grant>? grants;
  /// <p>Container for the bucket owner's display name and ID.</p>
  final Owner? owner;

  /// Creates a new [AwsS3AccessControlPolicyProperties].
  /// [grants] <p>A list of grants.</p>
  /// [owner] <p>Container for the bucket owner's display name and ID.</p>
  AwsS3AccessControlPolicyProperties({
    this.grants,
    this.owner,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grants': ?grants == null ? null : pulumi.Input.encodeList<Grant, Map<String, dynamic>>(grants!, (value) => value.toMap()),
      'owner': ?owner == null ? null : owner!.toMap(),
    };
  }

  factory AwsS3AccessControlPolicyProperties.fromMap(Map<String, dynamic> map) {
    return AwsS3AccessControlPolicyProperties(
      grants: map['grants'] == null ? null : pulumi.Input.decodeList<Grant>(map['grants'], (value) => Grant.fromMap((value as Map).cast<String, dynamic>())),
      owner: map['owner'] == null ? null : Owner.fromMap((map['owner'] as Map).cast<String, dynamic>()),
    );
  }
}

