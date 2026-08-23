// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grant_response.dart';
import 'owner_response.dart';

/// Definition of awsS3AccessControlPolicy
class AwsS3AccessControlPolicyPropertiesResponse {
  /// &lt;p&gt;A list of grants.&lt;/p&gt;
  final pulumi.Input<List<GrantResponse>>? grants;
  /// &lt;p&gt;Container for the bucket owner's display name and ID.&lt;/p&gt;
  final pulumi.Input<OwnerResponse>? owner;

  /// Creates a new [AwsS3AccessControlPolicyPropertiesResponse].
  /// [grants] &lt;p&gt;A list of grants.&lt;/p&gt;
  /// [owner] &lt;p&gt;Container for the bucket owner's display name and ID.&lt;/p&gt;
  const AwsS3AccessControlPolicyPropertiesResponse({
    this.grants,
    this.owner,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grants': ?pulumi.Input.mapOptionalInputValue<List<GrantResponse>, List<Map<String, dynamic>>>(grants, (value) => pulumi.Input.encodeList<GrantResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'owner': ?pulumi.Input.mapOptionalInputValue<OwnerResponse, Map<String, dynamic>>(owner, (value) => value.toMap()),
    };
  }

  factory AwsS3AccessControlPolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsS3AccessControlPolicyPropertiesResponse(
      grants: (() { final guardedValue = map['grants']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GrantResponse>(guardedValue, (value) => GrantResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OwnerResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
