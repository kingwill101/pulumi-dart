// ignore_for_file: unused_element, unnecessary_cast


/// Distribute via VHD in a storage account.
class ImageTemplateVhdDistributor {
  /// Tags that will be applied to the artifact once it has been created/updated by the distributor.
  final Map<String, String>? artifactTags;
  /// The name to be used for the associated RunOutput.
  final String runOutputName;
  /// Type of distribution.
  /// Expected value is 'VHD'.
  final String type;
  /// Optional Azure Storage URI for the distributed VHD blob. Omit to use the default (empty string) in which case VHD would be published to the storage account in the staging resource group.
  final String? uri;

  /// Creates a new [ImageTemplateVhdDistributor].
  /// [artifactTags] Tags that will be applied to the artifact once it has been created/updated by the distributor.
  /// [runOutputName] The name to be used for the associated RunOutput.
  /// [type] Type of distribution.
  /// [uri] Optional Azure Storage URI for the distributed VHD blob. Omit to use the default (empty string) in which case VHD would be published to the storage account in the staging resource group.
  ImageTemplateVhdDistributor({
    this.artifactTags,
    required this.runOutputName,
    required this.type,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactTags': ?artifactTags,
      'runOutputName': runOutputName,
      'type': type,
      'uri': ?uri,
    };
  }

  factory ImageTemplateVhdDistributor.fromMap(Map<String, dynamic> map) {
    return ImageTemplateVhdDistributor(
      artifactTags: map['artifactTags'] == null ? null : (map['artifactTags'] as Map).cast<String, String>(),
      runOutputName: map['runOutputName'] as String,
      type: map['type'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

