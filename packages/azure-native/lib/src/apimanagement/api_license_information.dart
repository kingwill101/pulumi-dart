// ignore_for_file: unused_element, unnecessary_cast


/// API license information
class ApiLicenseInformation {
  /// The license name used for the API
  final String? name;
  /// A URL to the license used for the API. MUST be in the format of a URL
  final String? url;

  /// Creates a new [ApiLicenseInformation].
  /// [name] The license name used for the API
  /// [url] A URL to the license used for the API. MUST be in the format of a URL
  ApiLicenseInformation({
    this.name,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'url': ?url,
    };
  }

  factory ApiLicenseInformation.fromMap(Map<String, dynamic> map) {
    return ApiLicenseInformation(
      name: map['name'] == null ? null : map['name'] as String,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

