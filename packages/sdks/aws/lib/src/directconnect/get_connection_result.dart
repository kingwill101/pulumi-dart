// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getConnection.
class GetConnectionResult {
  /// ARN of the connection.
  final String? arn;
  /// Direct Connect endpoint on which the physical connection terminates.
  final String? awsDevice;
  /// Bandwidth of the connection.
  final String? bandwidth;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// AWS Direct Connect location where the connection is located.
  final String? location;
  final String? name;
  /// ID of the AWS account that owns the connection.
  final String? ownerAccountId;
  /// The name of the AWS Direct Connect service provider associated with the connection.
  final String? partnerName;
  /// Name of the service provider associated with the connection.
  final String? providerName;
  final String? region;
  /// State of the connection.
  final String? state;
  /// Map of tags for the resource.
  final Map<String, String>? tags;
  /// The VLAN ID.
  final int? vlanId;

  /// Creates a new [GetConnectionResult].
  /// [arn] ARN of the connection.
  /// [awsDevice] Direct Connect endpoint on which the physical connection terminates.
  /// [bandwidth] Bandwidth of the connection.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] AWS Direct Connect location where the connection is located.
  /// [name] Optional.
  /// [ownerAccountId] ID of the AWS account that owns the connection.
  /// [partnerName] The name of the AWS Direct Connect service provider associated with the connection.
  /// [providerName] Name of the service provider associated with the connection.
  /// [region] Optional.
  /// [state] State of the connection.
  /// [tags] Map of tags for the resource.
  /// [vlanId] The VLAN ID.
  const GetConnectionResult({
    this.arn,
    this.awsDevice,
    this.bandwidth,
    this.id,
    this.location,
    this.name,
    this.ownerAccountId,
    this.partnerName,
    this.providerName,
    this.region,
    this.state,
    this.tags,
    this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'awsDevice': ?awsDevice,
      'bandwidth': ?bandwidth,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'ownerAccountId': ?ownerAccountId,
      'partnerName': ?partnerName,
      'providerName': ?providerName,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
      'vlanId': ?vlanId,
    };
  }

  factory GetConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetConnectionResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      awsDevice: (() { final guardedValue = map['awsDevice']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bandwidth: (() { final guardedValue = map['bandwidth']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerAccountId: (() { final guardedValue = map['ownerAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partnerName: (() { final guardedValue = map['partnerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      providerName: (() { final guardedValue = map['providerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vlanId: (() { final guardedValue = map['vlanId']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
