// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_remote_image_get_remote_image_args_doc}
/// Arguments for getRemoteImage.
/// {@endtemplate}
/// {@macro pulumi_index_get_remote_image_get_remote_image_args_doc}
class GetRemoteImageArgs {
  /// The name of the Docker image, including any tags or SHA256 repo digests.
  final pulumi.Input<String> name;

  /// Creates a new [GetRemoteImageArgs].
  /// [name] The name of the Docker image, including any tags or SHA256 repo digests.
  GetRemoteImageArgs({
    required String name,
  }) :
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetRemoteImageArgs.fromMap(Map<String, dynamic> map) {
    return GetRemoteImageArgs(
      name: map['name'] as String,
    );
  }
}

