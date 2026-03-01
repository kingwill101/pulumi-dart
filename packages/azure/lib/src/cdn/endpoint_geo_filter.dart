// ignore_for_file: unused_element, unnecessary_cast


class EndpointGeoFilter {
  /// The Action of the Geo Filter. Possible values include `Allow` and `Block`.
  final String action;
  /// A List of two letter country codes (e.g. `US`, `GB`) to be associated with this Geo Filter.
  final List<String> countryCodes;
  /// The relative path applicable to geo filter.
  final String relativePath;

  /// Creates a new [EndpointGeoFilter].
  /// [action] The Action of the Geo Filter. Possible values include `Allow` and `Block`.
  /// [countryCodes] A List of two letter country codes (e.g. `US`, `GB`) to be associated with this Geo Filter.
  /// [relativePath] The relative path applicable to geo filter.
  EndpointGeoFilter({
    required this.action,
    required this.countryCodes,
    required this.relativePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'countryCodes': countryCodes,
      'relativePath': relativePath,
    };
  }

  factory EndpointGeoFilter.fromMap(Map<String, dynamic> map) {
    return EndpointGeoFilter(
      action: map['action'] as String,
      countryCodes: (map['countryCodes'] as List).cast<String>(),
      relativePath: map['relativePath'] as String,
    );
  }
}

