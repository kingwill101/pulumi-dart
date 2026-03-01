// ignore_for_file: unused_element, unnecessary_cast


/// The properties of an operating system release.
class ReleaseProperties {
  /// The build number of the OS release.
  final String? buildNumber;
  /// The build revision of the OS release.
  final String? buildRevision;
  /// The name of the OS release.
  final String? releaseName;
  /// The release version date of the OS release.
  final String? releaseVersionDate;

  /// Creates a new [ReleaseProperties].
  /// [buildNumber] The build number of the OS release.
  /// [buildRevision] The build revision of the OS release.
  /// [releaseName] The name of the OS release.
  /// [releaseVersionDate] The release version date of the OS release.
  ReleaseProperties({
    this.buildNumber,
    this.buildRevision,
    this.releaseName,
    this.releaseVersionDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildNumber': ?buildNumber,
      'buildRevision': ?buildRevision,
      'releaseName': ?releaseName,
      'releaseVersionDate': ?releaseVersionDate,
    };
  }

  factory ReleaseProperties.fromMap(Map<String, dynamic> map) {
    return ReleaseProperties(
      buildNumber: map['buildNumber'] == null ? null : map['buildNumber'] as String,
      buildRevision: map['buildRevision'] == null ? null : map['buildRevision'] as String,
      releaseName: map['releaseName'] == null ? null : map['releaseName'] as String,
      releaseVersionDate: map['releaseVersionDate'] == null ? null : map['releaseVersionDate'] as String,
    );
  }
}

