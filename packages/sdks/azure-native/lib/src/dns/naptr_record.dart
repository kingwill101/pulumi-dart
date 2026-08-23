// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A NAPTR record. For more information about the NAPTR record format, see RFC 3403: https://www.rfc-editor.org/rfc/rfc3403
class NaptrRecord {
  /// The flags specific to DDDS applications. Values currently defined in RFC 3404 are uppercase and lowercase letters "A", "P", "S", and "U", and the empty string, "". Enclose Flags in quotation marks.
  final pulumi.Input<String>? flags;
  /// The order in which the NAPTR records MUST be processed in order to accurately represent the ordered list of rules. The ordering is from lowest to highest. Valid values: 0-65535.
  final pulumi.Input<int>? order;
  /// The preference specifies the order in which NAPTR records with equal 'order' values should be processed, low numbers being processed before high numbers. Valid values: 0-65535.
  final pulumi.Input<int>? preference;
  /// The regular expression that the DDDS application uses to convert an input value into an output value. For example: an IP phone system might use a regular expression to convert a phone number that is entered by a user into a SIP URI. Enclose the regular expression in quotation marks. Specify either a value for 'regexp' or a value for 'replacement'.
  final pulumi.Input<String>? regexp;
  /// The replacement is a fully qualified domain name (FQDN) of the next domain name that you want the DDDS application to submit a DNS query for. The DDDS application replaces the input value with the value specified for replacement. Specify either a value for 'regexp' or a value for 'replacement'. If you specify a value for 'regexp', specify a dot (.) for 'replacement'.
  final pulumi.Input<String>? replacement;
  /// The services specific to DDDS applications. Enclose Services in quotation marks.
  final pulumi.Input<String>? services;

  /// Creates a new [NaptrRecord].
  /// [flags] The flags specific to DDDS applications. Values currently defined in RFC 3404 are uppercase and lowercase letters "A", "P", "S", and "U", and the empty string, "". Enclose Flags in quotation marks.
  /// [order] The order in which the NAPTR records MUST be processed in order to accurately represent the ordered list of rules. The ordering is from lowest to highest. Valid values: 0-65535.
  /// [preference] The preference specifies the order in which NAPTR records with equal 'order' values should be processed, low numbers being processed before high numbers. Valid values: 0-65535.
  /// [regexp] The regular expression that the DDDS application uses to convert an input value into an output value. For example: an IP phone system might use a regular expression to convert a phone number that is entered by a user into a SIP URI. Enclose the regular expression in quotation marks. Specify either a value for 'regexp' or a value for 'replacement'.
  /// [replacement] The replacement is a fully qualified domain name (FQDN) of the next domain name that you want the DDDS application to submit a DNS query for. The DDDS application replaces the input value with the value specified for replacement. Specify either a value for 'regexp' or a value for 'replacement'. If you specify a value for 'regexp', specify a dot (.) for 'replacement'.
  /// [services] The services specific to DDDS applications. Enclose Services in quotation marks.
  const NaptrRecord({
    this.flags,
    this.order,
    this.preference,
    this.regexp,
    this.replacement,
    this.services,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flags': ?flags,
      'order': ?order,
      'preference': ?preference,
      'regexp': ?regexp,
      'replacement': ?replacement,
      'services': ?services,
    };
  }

  factory NaptrRecord.fromMap(Map<String, dynamic> map) {
    return NaptrRecord(
      flags: (() { final guardedValue = map['flags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      preference: (() { final guardedValue = map['preference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      regexp: (() { final guardedValue = map['regexp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replacement: (() { final guardedValue = map['replacement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      services: (() { final guardedValue = map['services']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
