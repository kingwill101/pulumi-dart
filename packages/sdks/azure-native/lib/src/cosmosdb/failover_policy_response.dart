// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The failover policy for a given region of a database account.
class FailoverPolicyResponse {
  /// The failover priority of the region. A failover priority of 0 indicates a write region. The maximum value for a failover priority = (total number of regions - 1). Failover priority values must be unique for each of the regions in which the database account exists.
  final pulumi.Input<int>? failoverPriority;
  /// The unique identifier of the region in which the database account replicates to. Example: &lt;accountName&gt;-&lt;locationName&gt;.
  final pulumi.Input<String> id;
  /// The name of the region in which the database account exists.
  final pulumi.Input<String>? locationName;

  /// Creates a new [FailoverPolicyResponse].
  /// [failoverPriority] The failover priority of the region. A failover priority of 0 indicates a write region. The maximum value for a failover priority = (total number of regions - 1). Failover priority values must be unique for each of the regions in which the database account exists.
  /// [id] The unique identifier of the region in which the database account replicates to. Example: &lt;accountName&gt;-&lt;locationName&gt;.
  /// [locationName] The name of the region in which the database account exists.
  const FailoverPolicyResponse({
    this.failoverPriority,
    required this.id,
    this.locationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failoverPriority': ?failoverPriority,
      'id': id,
      'locationName': ?locationName,
    };
  }

  factory FailoverPolicyResponse.fromMap(Map<String, dynamic> map) {
    return FailoverPolicyResponse(
      failoverPriority: (() { final guardedValue = map['failoverPriority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      locationName: (() { final guardedValue = map['locationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
