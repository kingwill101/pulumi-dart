// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hostname_type_enum_value.dart';

/// Definition of PrivateDnsNameOptionsResponse
class PrivateDnsNameOptionsResponse {
  /// <p>Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records.</p>
  final pulumi.Input<bool>? enableResourceNameDnsAAAARecord;
  /// <p>Indicates whether to respond to DNS queries for instance hostnames with DNS A records.</p>
  final pulumi.Input<bool>? enableResourceNameDnsARecord;
  /// <p>The type of hostname to assign to an instance.</p>
  final pulumi.Input<HostnameTypeEnumValue>? hostnameType;

  /// Creates a new [PrivateDnsNameOptionsResponse].
  /// [enableResourceNameDnsAAAARecord] <p>Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records.</p>
  /// [enableResourceNameDnsARecord] <p>Indicates whether to respond to DNS queries for instance hostnames with DNS A records.</p>
  /// [hostnameType] <p>The type of hostname to assign to an instance.</p>
  PrivateDnsNameOptionsResponse({
    this.enableResourceNameDnsAAAARecord,
    this.enableResourceNameDnsARecord,
    this.hostnameType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableResourceNameDnsAAAARecord': ?enableResourceNameDnsAAAARecord,
      'enableResourceNameDnsARecord': ?enableResourceNameDnsARecord,
      'hostnameType': ?pulumi.Input.mapOptionalInputValue<HostnameTypeEnumValue, Map<String, dynamic>>(hostnameType, (value) => value.toMap()),
    };
  }

  factory PrivateDnsNameOptionsResponse.fromMap(Map<String, dynamic> map) {
    return PrivateDnsNameOptionsResponse(
      enableResourceNameDnsAAAARecord: map['enableResourceNameDnsAAAARecord'] == null ? null : (map['enableResourceNameDnsAAAARecord']! as bool).input(),
      enableResourceNameDnsARecord: map['enableResourceNameDnsARecord'] == null ? null : (map['enableResourceNameDnsARecord']! as bool).input(),
      hostnameType: map['hostnameType'] == null ? null : (HostnameTypeEnumValue.fromMap((map['hostnameType']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

