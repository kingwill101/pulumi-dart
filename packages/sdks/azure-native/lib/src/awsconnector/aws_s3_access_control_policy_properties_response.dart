// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grant_response.dart';
import 'owner_response.dart';

/// Definition of awsS3AccessControlPolicy
class AwsS3AccessControlPolicyPropertiesResponse {
  /// <p>A list of grants.</p>
  final pulumi.Input<List<GrantResponse>>? grants;
  /// <p>Container for the bucket owner's display name and ID.</p>
  final pulumi.Input<OwnerResponse>? owner;

  /// Creates a new [AwsS3AccessControlPolicyPropertiesResponse].
  /// [grants] <p>A list of grants.</p>
  /// [owner] <p>Container for the bucket owner's display name and ID.</p>
  AwsS3AccessControlPolicyPropertiesResponse({
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
      grants: map['grants'] == null ? null : (pulumi.Input.decodeList<GrantResponse>(map['grants'], (value) => GrantResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      owner: map['owner'] == null ? null : (OwnerResponse.fromMap((map['owner'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

