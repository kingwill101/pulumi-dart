// ignore_for_file: unused_element, unnecessary_cast

class GetDockerImagesDockerImage {
  /// The time, as a RFC 3339 string, this image was built.
  final String buildTime;

  /// Extracted short name of the image (last part of `name`, without tag or digest). For example, from `.../nginx@sha256:...` → `nginx`.
  final String imageName;

  /// Calculated size of the image in bytes.
  final String imageSizeBytes;

  /// Media type of this image, e.g. `application/vnd.docker.distribution.manifest.v2+json`.
  final String mediaType;

  /// The fully qualified name of the fetched image.  This name has the form: `projects/{{project}}/locations/{{location}}/repository/{{repository_id}}/dockerImages/{{docker_image}}`. For example, `projects/test-project/locations/us-west4/repositories/test-repo/dockerImages/nginx@sha256:e9954c1fc875017be1c3e36eca16be2d9e9bccc4bf072163515467d6a823c7cf`
  final String name;

  /// The URI to access the image.  For example, `us-west4-docker.pkg.dev/test-project/test-repo/nginx@sha256:e9954c1fc875017be1c3e36eca16be2d9e9bccc4bf072163515467d6a823c7cf`
  final String selfLink;

  /// A list of all tags associated with the image.
  final List<String> tags;

  /// The time, as a RFC 3339 string, this image was updated.
  final String updateTime;

  /// The time, as a RFC 3339 string, the image was uploaded. For example, `2014-10-02T15:01:23.045123456Z`.
  final String uploadTime;

  /// Creates a new [GetDockerImagesDockerImage].
  /// [buildTime] The time, as a RFC 3339 string, this image was built.
  /// [imageName] Extracted short name of the image (last part of `name`, without tag or digest). For example, from `.../nginx@sha256:...` → `nginx`.
  /// [imageSizeBytes] Calculated size of the image in bytes.
  /// [mediaType] Media type of this image, e.g. `application/vnd.docker.distribution.manifest.v2+json`.
  /// [name] The fully qualified name of the fetched image.  This name has the form: `projects/{{project}}/locations/{{location}}/repository/{{repository_id}}/dockerImages/{{docker_image}}`. For example, `projects/test-project/locations/us-west4/repositories/test-repo/dockerImages/nginx@sha256:e9954c1fc875017be1c3e36eca16be2d9e9bccc4bf072163515467d6a823c7cf`
  /// [selfLink] The URI to access the image.  For example, `us-west4-docker.pkg.dev/test-project/test-repo/nginx@sha256:e9954c1fc875017be1c3e36eca16be2d9e9bccc4bf072163515467d6a823c7cf`
  /// [tags] A list of all tags associated with the image.
  /// [updateTime] The time, as a RFC 3339 string, this image was updated.
  /// [uploadTime] The time, as a RFC 3339 string, the image was uploaded. For example, `2014-10-02T15:01:23.045123456Z`.
  GetDockerImagesDockerImage({
    required this.buildTime,
    required this.imageName,
    required this.imageSizeBytes,
    required this.mediaType,
    required this.name,
    required this.selfLink,
    required this.tags,
    required this.updateTime,
    required this.uploadTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['buildTime'] = buildTime;
    map['imageName'] = imageName;
    map['imageSizeBytes'] = imageSizeBytes;
    map['mediaType'] = mediaType;
    map['name'] = name;
    map['selfLink'] = selfLink;
    map['tags'] = tags;
    map['updateTime'] = updateTime;
    map['uploadTime'] = uploadTime;
    return map;
  }

  factory GetDockerImagesDockerImage.fromMap(Map<String, dynamic> map) {
    return GetDockerImagesDockerImage(
      buildTime: map['buildTime'] as String,
      imageName: map['imageName'] as String,
      imageSizeBytes: map['imageSizeBytes'] as String,
      mediaType: map['mediaType'] as String,
      name: map['name'] as String,
      selfLink: map['selfLink'] as String,
      tags: (map['tags'] as List).cast<String>(),
      updateTime: map['updateTime'] as String,
      uploadTime: map['uploadTime'] as String,
    );
  }
}
