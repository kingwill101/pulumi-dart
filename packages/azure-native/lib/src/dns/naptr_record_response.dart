// ignore_for_file: unused_element, unnecessary_cast


/// A NAPTR record. For more information about the NAPTR record format, see RFC 3403: https://www.rfc-editor.org/rfc/rfc3403
class NaptrRecordResponse {
  /// The flags specific to DDDS applications. Values currently defined in RFC 3404 are uppercase and lowercase letters "A", "P", "S", and "U", and the empty string, "". Enclose Flags in quotation marks.
  final String? flags;
  /// The order in which the NAPTR records MUST be processed in order to accurately represent the ordered list of rules. The ordering is from lowest to highest. Valid values: 0-65535.
  final int? order;
  /// The preference specifies the order in which NAPTR records with equal 'order' values should be processed, low numbers being processed before high numbers. Valid values: 0-65535.
  final int? preference;
  /// The regular expression that the DDDS application uses to convert an input value into an output value. For example: an IP phone system might use a regular expression to convert a phone number that is entered by a user into a SIP URI. Enclose the regular expression in quotation marks. Specify either a value for 'regexp' or a value for 'replacement'.
  final String? regexp;
  /// The replacement is a fully qualified domain name (FQDN) of the next domain name that you want the DDDS application to submit a DNS query for. The DDDS application replaces the input value with the value specified for replacement. Specify either a value for 'regexp' or a value for 'replacement'. If you specify a value for 'regexp', specify a dot (.) for 'replacement'.
  final String? replacement;
  /// The services specific to DDDS applications. Enclose Services in quotation marks.
  final String? services;

  /// Creates a new [NaptrRecordResponse].
  /// [flags] The flags specific to DDDS applications. Values currently defined in RFC 3404 are uppercase and lowercase letters "A", "P", "S", and "U", and the empty string, "". Enclose Flags in quotation marks.
  /// [order] The order in which the NAPTR records MUST be processed in order to accurately represent the ordered list of rules. The ordering is from lowest to highest. Valid values: 0-65535.
  /// [preference] The preference specifies the order in which NAPTR records with equal 'order' values should be processed, low numbers being processed before high numbers. Valid values: 0-65535.
  /// [regexp] The regular expression that the DDDS application uses to convert an input value into an output value. For example: an IP phone system might use a regular expression to convert a phone number that is entered by a user into a SIP URI. Enclose the regular expression in quotation marks. Specify either a value for 'regexp' or a value for 'replacement'.
  /// [replacement] The replacement is a fully qualified domain name (FQDN) of the next domain name that you want the DDDS application to submit a DNS query for. The DDDS application replaces the input value with the value specified for replacement. Specify either a value for 'regexp' or a value for 'replacement'. If you specify a value for 'regexp', specify a dot (.) for 'replacement'.
  /// [services] The services specific to DDDS applications. Enclose Services in quotation marks.
  NaptrRecordResponse({
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

  factory NaptrRecordResponse.fromMap(Map<String, dynamic> map) {
    return NaptrRecordResponse(
      flags: map['flags'] == null ? null : map['flags'] as String,
      order: map['order'] == null ? null : map['order'] as int,
      preference: map['preference'] == null ? null : map['preference'] as int,
      regexp: map['regexp'] == null ? null : map['regexp'] as String,
      replacement: map['replacement'] == null ? null : map['replacement'] as String,
      services: map['services'] == null ? null : map['services'] as String,
    );
  }
}

