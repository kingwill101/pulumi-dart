// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRuntimeVersionsRuntimeVersion {
  /// Date of deprecation if the runtme version is deprecated.
  final pulumi.Input<String> deprecationDate;
  /// Description of the runtime version, created by Amazon.
  final pulumi.Input<String> description;
  /// Date that the runtime version was released.
  final pulumi.Input<String> releaseDate;
  /// Name of the runtime version.
  /// For a list of valid runtime versions, see [Canary Runtime Versions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html).
  final pulumi.Input<String> versionName;

  /// Creates a new [GetRuntimeVersionsRuntimeVersion].
  /// [deprecationDate] Date of deprecation if the runtme version is deprecated.
  /// [description] Description of the runtime version, created by Amazon.
  /// [releaseDate] Date that the runtime version was released.
  /// [versionName] Name of the runtime version.
  const GetRuntimeVersionsRuntimeVersion({
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
      deprecationDate: pulumi.Input.fromValue(map['deprecationDate'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      releaseDate: pulumi.Input.fromValue(map['releaseDate'] as String),
      versionName: pulumi.Input.fromValue(map['versionName'] as String),
    );
  }
}
