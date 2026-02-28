// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRuntimeVersion.
class GetRuntimeVersionResult {
  /// Date of deprecation if the runtme version is deprecated.
  final String deprecationDate;

  /// Description of the runtime version, created by Amazon.
  final String description;

  /// Name of the runtime version. For a list of valid runtime versions, see [Canary Runtime Versions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html).
  final String id;
  final bool? latest;
  final String prefix;
  final String region;

  /// Date that the runtime version was released.
  final String releaseDate;
  final String? version;

  /// Name of the runtime version. For a list of valid runtime versions, see [Canary Runtime Versions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html).
  final String versionName;

  /// Creates a new [GetRuntimeVersionResult].
  /// [deprecationDate] Date of deprecation if the runtme version is deprecated.
  /// [description] Description of the runtime version, created by Amazon.
  /// [id] Name of the runtime version. For a list of valid runtime versions, see [Canary Runtime Versions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html).
  /// [latest] Optional.
  /// [prefix] Required.
  /// [region] Required.
  /// [releaseDate] Date that the runtime version was released.
  /// [version] Optional.
  /// [versionName] Name of the runtime version. For a list of valid runtime versions, see [Canary Runtime Versions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html).
  GetRuntimeVersionResult({
    required this.deprecationDate,
    required this.description,
    required this.id,
    this.latest,
    required this.prefix,
    required this.region,
    required this.releaseDate,
    this.version,
    required this.versionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deprecationDate'] = deprecationDate;
    map['description'] = description;
    map['id'] = id;
    final latestValue = latest;
    if (latestValue != null) {
      map['latest'] = latestValue;
    }
    map['prefix'] = prefix;
    map['region'] = region;
    map['releaseDate'] = releaseDate;
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    map['versionName'] = versionName;
    return map;
  }

  factory GetRuntimeVersionResult.fromMap(Map<String, dynamic> map) {
    return GetRuntimeVersionResult(
      deprecationDate: map['deprecationDate'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      latest: map['latest'] == null ? null : map['latest'] as bool,
      prefix: map['prefix'] as String,
      region: map['region'] as String,
      releaseDate: map['releaseDate'] as String,
      version: map['version'] == null ? null : map['version'] as String,
      versionName: map['versionName'] as String,
    );
  }
}
