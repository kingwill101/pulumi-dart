// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grant.dart';
import 'owner.dart';

/// Definition of awsS3AccessControlPolicy
class AwsS3AccessControlPolicyProperties {
  /// &lt;p&gt;A list of grants.&lt;/p&gt;
  final pulumi.Input<List<Grant>>? grants;
  /// &lt;p&gt;Container for the bucket owner's display name and ID.&lt;/p&gt;
  final pulumi.Input<Owner>? owner;

  /// Creates a new [AwsS3AccessControlPolicyProperties].
  /// [grants] &lt;p&gt;A list of grants.&lt;/p&gt;
  /// [owner] &lt;p&gt;Container for the bucket owner's display name and ID.&lt;/p&gt;
  AwsS3AccessControlPolicyProperties({
    this.grants,
    this.owner,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grants': ?pulumi.Input.mapOptionalInputValue<List<Grant>, List<Map<String, dynamic>>>(grants, (value) => pulumi.Input.encodeList<Grant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'owner': ?pulumi.Input.mapOptionalInputValue<Owner, Map<String, dynamic>>(owner, (value) => value.toMap()),
    };
  }

  factory AwsS3AccessControlPolicyProperties.fromMap(Map<String, dynamic> map) {
    return AwsS3AccessControlPolicyProperties(
      grants: (() { final guardedValue = map['grants']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Grant>(guardedValue, (value) => Grant.fromMap((value as Map).cast<String, dynamic>()))); })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Owner.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

