// ignore_for_file: unused_element, unnecessary_cast

class RegistrationContactSettingsTechnicalContactPostalAddress {
  /// Unstructured address lines describing the lower levels of an address.
  /// Because values in addressLines do not have type information and may sometimes contain multiple values in a single
  /// field (e.g. "Austin, TX"), it is important that the line order is clear. The order of address lines should be
  /// "envelope order" for the country/region of the address. In places where this can vary (e.g. Japan), address_language
  /// is used to make it explicit (e.g. "ja" for large-to-small ordering and "ja-Latn" or "en" for small-to-large). This way,
  /// the most specific line of an address can be selected based on the language.
  final List<String>? addressLines;

  /// Highest administrative subdivision which is used for postal addresses of a country or region. For example, this can be a state,
  /// a province, an oblast, or a prefecture. Specifically, for Spain this is the province and not the autonomous community
  /// (e.g. "Barcelona" and not "Catalonia"). Many countries don't use an administrative area in postal addresses. E.g. in Switzerland
  /// this should be left unpopulated.
  final String? administrativeArea;

  /// Generally refers to the city/town portion of the address. Examples: US city, IT comune, UK post town. In regions of the world
  /// where localities are not well defined or do not fit into this structure well, leave locality empty and use addressLines.
  final String? locality;

  /// The name of the organization at the address.
  final String? organization;

  /// Postal code of the address. Not all countries use or require postal codes to be present, but where they are used,
  /// they may trigger additional validation with other parts of the address (e.g. state/zip validation in the U.S.A.).
  final String? postalCode;

  /// The recipient at the address. This field may, under certain circumstances, contain multiline information. For example,
  /// it might contain "care of" information.
  final List<String>? recipients;

  /// Required. CLDR region code of the country/region of the address. This is never inferred and it is up to the user to
  /// ensure the value is correct. See https://cldr.unicode.org/ and
  /// https://www.unicode.org/cldr/charts/30/supplemental/territory_information.html for details. Example: "CH" for Switzerland.
  final String regionCode;

  /// Creates a new [RegistrationContactSettingsTechnicalContactPostalAddress].
  /// [addressLines] Unstructured address lines describing the lower levels of an address.
  /// [administrativeArea] Highest administrative subdivision which is used for postal addresses of a country or region. For example, this can be a state,
  /// [locality] Generally refers to the city/town portion of the address. Examples: US city, IT comune, UK post town. In regions of the world
  /// [organization] The name of the organization at the address.
  /// [postalCode] Postal code of the address. Not all countries use or require postal codes to be present, but where they are used,
  /// [recipients] The recipient at the address. This field may, under certain circumstances, contain multiline information. For example,
  /// [regionCode] Required. CLDR region code of the country/region of the address. This is never inferred and it is up to the user to
  RegistrationContactSettingsTechnicalContactPostalAddress({
    this.addressLines,
    this.administrativeArea,
    this.locality,
    this.organization,
    this.postalCode,
    this.recipients,
    required this.regionCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressLines': ?addressLines,
      'administrativeArea': ?administrativeArea,
      'locality': ?locality,
      'organization': ?organization,
      'postalCode': ?postalCode,
      'recipients': ?recipients,
      'regionCode': regionCode,
    };
  }

  factory RegistrationContactSettingsTechnicalContactPostalAddress.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegistrationContactSettingsTechnicalContactPostalAddress(
      addressLines: map['addressLines'] == null
          ? null
          : (map['addressLines'] as List).cast<String>(),
      administrativeArea: map['administrativeArea'] == null
          ? null
          : map['administrativeArea'] as String,
      locality: map['locality'] == null ? null : map['locality'] as String,
      organization: map['organization'] == null
          ? null
          : map['organization'] as String,
      postalCode: map['postalCode'] == null
          ? null
          : map['postalCode'] as String,
      recipients: map['recipients'] == null
          ? null
          : (map['recipients'] as List).cast<String>(),
      regionCode: map['regionCode'] as String,
    );
  }
}
