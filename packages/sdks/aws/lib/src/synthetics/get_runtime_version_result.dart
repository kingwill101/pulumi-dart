// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRuntimeVersion.
class GetRuntimeVersionResult {
  /// Date of deprecation if the runtme version is deprecated.
  final String? deprecationDate;
  /// Description of the runtime version, created by Amazon.
  final String? description;
  /// Name of the runtime version. For a list of valid runtime versions, see [Canary Runtime Versions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html).
  final String? id;
  final bool? latest;
  final String? prefix;
  final String? region;
  /// Date that the runtime version was released.
  final String? releaseDate;
  final String? version;
  /// Name of the runtime version. For a list of valid runtime versions, see [Canary Runtime Versions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html).
  final String? versionName;

  /// Creates a new [GetRuntimeVersionResult].
  /// [deprecationDate] Date of deprecation if the runtme version is deprecated.
  /// [description] Description of the runtime version, created by Amazon.
  /// [id] Name of the runtime version. For a list of valid runtime versions, see [Canary Runtime Versions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html).
  /// [latest] Optional.
  /// [prefix] Optional.
  /// [region] Optional.
  /// [releaseDate] Date that the runtime version was released.
  /// [version] Optional.
  /// [versionName] Name of the runtime version. For a list of valid runtime versions, see [Canary Runtime Versions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html).
  const GetRuntimeVersionResult({
    this.deprecationDate,
    this.description,
    this.id,
    this.latest,
    this.prefix,
    this.region,
    this.releaseDate,
    this.version,
    this.versionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deprecationDate': ?deprecationDate,
      'description': ?description,
      'id': ?id,
      'latest': ?latest,
      'prefix': ?prefix,
      'region': ?region,
      'releaseDate': ?releaseDate,
      'version': ?version,
      'versionName': ?versionName,
    };
  }

  factory GetRuntimeVersionResult.fromMap(Map<String, dynamic> map) {
    return GetRuntimeVersionResult(
      deprecationDate: (() { final guardedValue = map['deprecationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      latest: (() { final guardedValue = map['latest']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      releaseDate: (() { final guardedValue = map['releaseDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionName: (() { final guardedValue = map['versionName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
