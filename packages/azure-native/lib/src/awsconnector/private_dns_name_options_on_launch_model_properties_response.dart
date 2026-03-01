// ignore_for_file: unused_element, unnecessary_cast


/// Definition of PrivateDnsNameOptionsOnLaunchModelProperties
class PrivateDnsNameOptionsOnLaunchModelPropertiesResponse {
  /// Property enableResourceNameDnsAAAARecord
  final bool? enableResourceNameDnsAAAARecord;
  /// Property enableResourceNameDnsARecord
  final bool? enableResourceNameDnsARecord;
  /// Property hostnameType
  final String? hostnameType;

  /// Creates a new [PrivateDnsNameOptionsOnLaunchModelPropertiesResponse].
  /// [enableResourceNameDnsAAAARecord] Property enableResourceNameDnsAAAARecord
  /// [enableResourceNameDnsARecord] Property enableResourceNameDnsARecord
  /// [hostnameType] Property hostnameType
  PrivateDnsNameOptionsOnLaunchModelPropertiesResponse({
    this.enableResourceNameDnsAAAARecord,
    this.enableResourceNameDnsARecord,
    this.hostnameType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableResourceNameDnsAAAARecord': ?enableResourceNameDnsAAAARecord,
      'enableResourceNameDnsARecord': ?enableResourceNameDnsARecord,
      'hostnameType': ?hostnameType,
    };
  }

  factory PrivateDnsNameOptionsOnLaunchModelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PrivateDnsNameOptionsOnLaunchModelPropertiesResponse(
      enableResourceNameDnsAAAARecord: map['enableResourceNameDnsAAAARecord'] == null ? null : map['enableResourceNameDnsAAAARecord'] as bool,
      enableResourceNameDnsARecord: map['enableResourceNameDnsARecord'] == null ? null : map['enableResourceNameDnsARecord'] as bool,
      hostnameType: map['hostnameType'] == null ? null : map['hostnameType'] as String,
    );
  }
}

