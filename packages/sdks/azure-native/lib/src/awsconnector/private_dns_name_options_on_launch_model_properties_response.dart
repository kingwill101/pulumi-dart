// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of PrivateDnsNameOptionsOnLaunchModelProperties
class PrivateDnsNameOptionsOnLaunchModelPropertiesResponse {
  /// Property enableResourceNameDnsAAAARecord
  final pulumi.Input<bool>? enableResourceNameDnsAAAARecord;

  /// Property enableResourceNameDnsARecord
  final pulumi.Input<bool>? enableResourceNameDnsARecord;

  /// Property hostnameType
  final pulumi.Input<String>? hostnameType;

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

  factory PrivateDnsNameOptionsOnLaunchModelPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return PrivateDnsNameOptionsOnLaunchModelPropertiesResponse(
      enableResourceNameDnsAAAARecord: (() {
        final guardedValue = map['enableResourceNameDnsAAAARecord'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableResourceNameDnsARecord: (() {
        final guardedValue = map['enableResourceNameDnsARecord'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      hostnameType: (() {
        final guardedValue = map['hostnameType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
