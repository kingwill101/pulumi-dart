// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hostname_type_enum_value_response.dart';

/// Definition of PrivateDnsNameOptionsResponse
class PrivateDnsNameOptionsResponseResponse {
  /// <p>Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records.</p>
  final pulumi.Input<bool>? enableResourceNameDnsAAAARecord;
  /// <p>Indicates whether to respond to DNS queries for instance hostnames with DNS A records.</p>
  final pulumi.Input<bool>? enableResourceNameDnsARecord;
  /// <p>The type of hostname to assign to an instance.</p>
  final pulumi.Input<HostnameTypeEnumValueResponse>? hostnameType;

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
      'hostnameType': ?pulumi.Input.mapOptionalInputValue<HostnameTypeEnumValueResponse, Map<String, dynamic>>(hostnameType, (value) => value.toMap()),
    };
  }

  factory PrivateDnsNameOptionsResponseResponse.fromMap(Map<String, dynamic> map) {
    return PrivateDnsNameOptionsResponseResponse(
      enableResourceNameDnsAAAARecord: map['enableResourceNameDnsAAAARecord'] == null ? null : (map['enableResourceNameDnsAAAARecord']! as bool).input(),
      enableResourceNameDnsARecord: map['enableResourceNameDnsARecord'] == null ? null : (map['enableResourceNameDnsARecord']! as bool).input(),
      hostnameType: map['hostnameType'] == null ? null : (HostnameTypeEnumValueResponse.fromMap((map['hostnameType']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

