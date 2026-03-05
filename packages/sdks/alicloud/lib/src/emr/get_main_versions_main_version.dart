// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMainVersionsMainVersion {
  /// A list of cluster types the emr cluster supported. Possible values: `HADOOP`, `ZOOKEEPER`, `KAFKA`, `DRUID`.
  final pulumi.Input<List<String>> clusterTypes;
  /// The version of the emr cluster instance. Possible values: `EMR-4.0.0`, `EMR-3.23.0`, `EMR-3.22.0`.
  final pulumi.Input<String> emrVersion;
  /// The image id of the emr cluster instance.
  final pulumi.Input<String> imageId;

  /// Creates a new [GetMainVersionsMainVersion].
  /// [clusterTypes] A list of cluster types the emr cluster supported. Possible values: `HADOOP`, `ZOOKEEPER`, `KAFKA`, `DRUID`.
  /// [emrVersion] The version of the emr cluster instance. Possible values: `EMR-4.0.0`, `EMR-3.23.0`, `EMR-3.22.0`.
  /// [imageId] The image id of the emr cluster instance.
  GetMainVersionsMainVersion({
    required this.clusterTypes,
    required this.emrVersion,
    required this.imageId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterTypes': clusterTypes,
      'emrVersion': emrVersion,
      'imageId': imageId,
    };
  }

  factory GetMainVersionsMainVersion.fromMap(Map<String, dynamic> map) {
    return GetMainVersionsMainVersion(
      clusterTypes: pulumi.Input.fromValue((map['clusterTypes'] as List).cast<String>()),
      emrVersion: pulumi.Input.fromValue(map['emrVersion'] as String),
      imageId: pulumi.Input.fromValue(map['imageId'] as String),
    );
  }
}

