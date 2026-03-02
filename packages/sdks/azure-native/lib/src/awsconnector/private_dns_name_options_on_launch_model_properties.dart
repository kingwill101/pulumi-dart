// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of PrivateDnsNameOptionsOnLaunchModelProperties
class PrivateDnsNameOptionsOnLaunchModelProperties {
  /// Property enableResourceNameDnsAAAARecord
  final pulumi.Input<bool>? enableResourceNameDnsAAAARecord;
  /// Property enableResourceNameDnsARecord
  final pulumi.Input<bool>? enableResourceNameDnsARecord;
  /// Property hostnameType
  final pulumi.Input<String>? hostnameType;

  /// Creates a new [PrivateDnsNameOptionsOnLaunchModelProperties].
  /// [enableResourceNameDnsAAAARecord] Property enableResourceNameDnsAAAARecord
  /// [enableResourceNameDnsARecord] Property enableResourceNameDnsARecord
  /// [hostnameType] Property hostnameType
  PrivateDnsNameOptionsOnLaunchModelProperties({
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

  factory PrivateDnsNameOptionsOnLaunchModelProperties.fromMap(Map<String, dynamic> map) {
    return PrivateDnsNameOptionsOnLaunchModelProperties(
      enableResourceNameDnsAAAARecord: map['enableResourceNameDnsAAAARecord'] == null ? null : (map['enableResourceNameDnsAAAARecord'] as bool).input(),
      enableResourceNameDnsARecord: map['enableResourceNameDnsARecord'] == null ? null : (map['enableResourceNameDnsARecord'] as bool).input(),
      hostnameType: map['hostnameType'] == null ? null : (map['hostnameType'] as String).input(),
    );
  }
}

