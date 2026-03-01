// ignore_for_file: unused_element, unnecessary_cast

import 'hostname_type_enum_value_response.dart';

/// Definition of PrivateDnsNameOptionsResponse
class PrivateDnsNameOptionsResponseResponse {
  /// <p>Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records.</p>
  final bool? enableResourceNameDnsAAAARecord;
  /// <p>Indicates whether to respond to DNS queries for instance hostnames with DNS A records.</p>
  final bool? enableResourceNameDnsARecord;
  /// <p>The type of hostname to assign to an instance.</p>
  final HostnameTypeEnumValueResponse? hostnameType;

  /// Creates a new [PrivateDnsNameOptionsResponseResponse].
  /// [enableResourceNameDnsAAAARecord] <p>Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records.</p>
  /// [enableResourceNameDnsARecord] <p>Indicates whether to respond to DNS queries for instance hostnames with DNS A records.</p>
  /// [hostnameType] <p>The type of hostname to assign to an instance.</p>
  PrivateDnsNameOptionsResponseResponse({
    this.enableResourceNameDnsAAAARecord,
    this.enableResourceNameDnsARecord,
    this.hostnameType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableResourceNameDnsAAAARecord': ?enableResourceNameDnsAAAARecord,
      'enableResourceNameDnsARecord': ?enableResourceNameDnsARecord,
      'hostnameType': ?hostnameType == null ? null : hostnameType!.toMap(),
    };
  }

  factory PrivateDnsNameOptionsResponseResponse.fromMap(Map<String, dynamic> map) {
    return PrivateDnsNameOptionsResponseResponse(
      enableResourceNameDnsAAAARecord: map['enableResourceNameDnsAAAARecord'] == null ? null : map['enableResourceNameDnsAAAARecord'] as bool,
      enableResourceNameDnsARecord: map['enableResourceNameDnsARecord'] == null ? null : map['enableResourceNameDnsARecord'] as bool,
      hostnameType: map['hostnameType'] == null ? null : HostnameTypeEnumValueResponse.fromMap((map['hostnameType'] as Map).cast<String, dynamic>()),
    );
  }
}

