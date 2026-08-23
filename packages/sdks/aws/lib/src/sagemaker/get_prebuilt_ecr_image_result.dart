// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPrebuiltEcrImage.
class GetPrebuiltEcrImageResult {
  final String? dnsSuffix;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? imageTag;
  final String region;
  /// Account ID containing the image. For example, `469771592824`.
  final String registryId;
  /// Docker image URL. For example, `341280168497.dkr.ecr.ca-central-1.amazonaws.com/sagemaker-sparkml-serving:2.4`.
  final String registryPath;
  final String repositoryName;

  /// Creates a new [GetPrebuiltEcrImageResult].
  /// [dnsSuffix] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageTag] Optional.
  /// [region] Required.
  /// [registryId] Account ID containing the image. For example, `469771592824`.
  /// [registryPath] Docker image URL. For example, `341280168497.dkr.ecr.ca-central-1.amazonaws.com/sagemaker-sparkml-serving:2.4`.
  /// [repositoryName] Required.
  const GetPrebuiltEcrImageResult({
    this.dnsSuffix,
    required this.id,
    this.imageTag,
    required this.region,
    required this.registryId,
    required this.registryPath,
    required this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsSuffix': ?dnsSuffix,
      'id': id,
      'imageTag': ?imageTag,
      'region': region,
      'registryId': registryId,
      'registryPath': registryPath,
      'repositoryName': repositoryName,
    };
  }

  factory GetPrebuiltEcrImageResult.fromMap(Map<String, dynamic> map) {
    return GetPrebuiltEcrImageResult(
      dnsSuffix: (() { final guardedValue = map['dnsSuffix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      imageTag: (() { final guardedValue = map['imageTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: map['region'] as String,
      registryId: map['registryId'] as String,
      registryPath: map['registryPath'] as String,
      repositoryName: map['repositoryName'] as String,
    );
  }
}
