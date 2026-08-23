// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hostname_type_enum_value.dart';

/// Definition of PrivateDnsNameOptionsResponse
class PrivateDnsNameOptionsResponse {
  /// &lt;p&gt;Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records.&lt;/p&gt;
  final pulumi.Input<bool>? enableResourceNameDnsAAAARecord;
  /// &lt;p&gt;Indicates whether to respond to DNS queries for instance hostnames with DNS A records.&lt;/p&gt;
  final pulumi.Input<bool>? enableResourceNameDnsARecord;
  /// &lt;p&gt;The type of hostname to assign to an instance.&lt;/p&gt;
  final pulumi.Input<HostnameTypeEnumValue>? hostnameType;

  /// Creates a new [PrivateDnsNameOptionsResponse].
  /// [enableResourceNameDnsAAAARecord] &lt;p&gt;Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records.&lt;/p&gt;
  /// [enableResourceNameDnsARecord] &lt;p&gt;Indicates whether to respond to DNS queries for instance hostnames with DNS A records.&lt;/p&gt;
  /// [hostnameType] &lt;p&gt;The type of hostname to assign to an instance.&lt;/p&gt;
  const PrivateDnsNameOptionsResponse({
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
      enableResourceNameDnsAAAARecord: (() { final guardedValue = map['enableResourceNameDnsAAAARecord']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableResourceNameDnsARecord: (() { final guardedValue = map['enableResourceNameDnsARecord']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hostnameType: (() { final guardedValue = map['hostnameType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HostnameTypeEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
