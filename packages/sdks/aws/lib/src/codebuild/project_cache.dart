// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectCache {
  /// Namespace that determines the scope in which a cache is shared across multiple projects.
  final pulumi.Input<String>? cacheNamespace;
  /// Location where the AWS CodeBuild project stores cached resources. For
  /// type `S3`, the value must be a valid S3 bucket name/prefix.
  final pulumi.Input<String>? location;
  /// Specifies settings that AWS CodeBuild uses to store and reuse build
  /// dependencies. Valid values:  `LOCAL_SOURCE_CACHE`, `LOCAL_DOCKER_LAYER_CACHE`, `LOCAL_CUSTOM_CACHE`.
  final pulumi.Input<List<String>>? modes;
  /// Type of storage that will be used for the AWS CodeBuild project cache. Valid values: `NO_CACHE`,
  /// `LOCAL`, `S3`. Defaults to `NO_CACHE`.
  final pulumi.Input<String>? type;

  /// Creates a new [ProjectCache].
  /// [cacheNamespace] Namespace that determines the scope in which a cache is shared across multiple projects.
  /// [location] Location where the AWS CodeBuild project stores cached resources. For
  /// [modes] Specifies settings that AWS CodeBuild uses to store and reuse build
  /// [type] Type of storage that will be used for the AWS CodeBuild project cache. Valid values: `NO_CACHE`,
  ProjectCache({
    this.cacheNamespace,
    this.location,
    this.modes,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheNamespace': ?cacheNamespace,
      'location': ?location,
      'modes': ?modes,
      'type': ?type,
    };
  }

  factory ProjectCache.fromMap(Map<String, dynamic> map) {
    return ProjectCache(
      cacheNamespace: map['cacheNamespace'] == null ? null : ((map['cacheNamespace'] as String).input()).input(),
      location: map['location'] == null ? null : ((map['location'] as String).input()).input(),
      modes: map['modes'] == null ? null : (((map['modes'] as List).cast<String>()).input()).input(),
      type: map['type'] == null ? null : ((map['type'] as String).input()).input(),
    );
  }
}

