// ignore_for_file: unused_element, unnecessary_cast


/// Defines the Docker image details
class ContainerImage {
  /// Image pull policy.
  final String? pullPolicy;
  /// Image pull secrets.
  final String? pullSecrets;
  /// The Docker image name.
  final String repository;
  /// The Docker  image tag.
  final String tag;

  /// Creates a new [ContainerImage].
  /// [pullPolicy] Image pull policy.
  /// [pullSecrets] Image pull secrets.
  /// [repository] The Docker image name.
  /// [tag] The Docker  image tag.
  ContainerImage({
    this.pullPolicy,
    this.pullSecrets,
    required this.repository,
    required this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pullPolicy': ?pullPolicy,
      'pullSecrets': ?pullSecrets,
      'repository': repository,
      'tag': tag,
    };
  }

  factory ContainerImage.fromMap(Map<String, dynamic> map) {
    return ContainerImage(
      pullPolicy: map['pullPolicy'] == null ? null : map['pullPolicy'] as String,
      pullSecrets: map['pullSecrets'] == null ? null : map['pullSecrets'] as String,
      repository: map['repository'] as String,
      tag: map['tag'] as String,
    );
  }
}

