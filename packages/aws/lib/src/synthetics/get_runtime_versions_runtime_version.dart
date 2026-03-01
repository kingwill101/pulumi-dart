// ignore_for_file: unused_element, unnecessary_cast

class GetRuntimeVersionsRuntimeVersion {
  /// Date of deprecation if the runtme version is deprecated.
  final String deprecationDate;

  /// Description of the runtime version, created by Amazon.
  final String description;

  /// Date that the runtime version was released.
  final String releaseDate;

  /// Name of the runtime version.
  /// For a list of valid runtime versions, see [Canary Runtime Versions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html).
  final String versionName;

  /// Creates a new [GetRuntimeVersionsRuntimeVersion].
  /// [deprecationDate] Date of deprecation if the runtme version is deprecated.
  /// [description] Description of the runtime version, created by Amazon.
  /// [releaseDate] Date that the runtime version was released.
  /// [versionName] Name of the runtime version.
  GetRuntimeVersionsRuntimeVersion({
    required this.deprecationDate,
    required this.description,
    required this.releaseDate,
    required this.versionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deprecationDate': deprecationDate,
      'description': description,
      'releaseDate': releaseDate,
      'versionName': versionName,
    };
  }

  factory GetRuntimeVersionsRuntimeVersion.fromMap(Map<String, dynamic> map) {
    return GetRuntimeVersionsRuntimeVersion(
      deprecationDate: map['deprecationDate'] as String,
      description: map['description'] as String,
      releaseDate: map['releaseDate'] as String,
      versionName: map['versionName'] as String,
    );
  }
}
