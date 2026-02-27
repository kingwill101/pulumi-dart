// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_worker_pool_template_volume_secret_item/get_worker_pool_template_volume_secret_item.dart';

class GetWorkerPoolTemplateVolumeSecret {
  /// Integer representation of mode bits to use on created files by default. Must be a value between 0000 and 0777 (octal), defaulting to 0444. Directories within the path are not affected by this setting.
  final int defaultMode;

  /// If unspecified, the volume will expose a file whose name is the secret, relative to VolumeMount.mount_path. If specified, the key will be used as the version to fetch from Cloud Secret Manager and the path will be the name of the file exposed in the volume. When items are defined, they must specify a path and a version.
  final List<GetWorkerPoolTemplateVolumeSecretItem> items;

  /// The name of the secret in Cloud Secret Manager. Format: {secret} if the secret is in the same project. projects/{project}/secrets/{secret} if the secret is in a different project.
  final String secret;

  GetWorkerPoolTemplateVolumeSecret({
    required this.defaultMode,
    required this.items,
    required this.secret,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultMode'] = defaultMode;
    map['items'] = pulumi.Input.encodeList<
        GetWorkerPoolTemplateVolumeSecretItem,
        Map<String, dynamic>>(items, (value) => value.toMap());
    map['secret'] = secret;
    return map;
  }

  factory GetWorkerPoolTemplateVolumeSecret.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolTemplateVolumeSecret(
      defaultMode: map['defaultMode'] as int,
      items: pulumi.Input.decodeList<GetWorkerPoolTemplateVolumeSecretItem>(
          map['items'],
          (value) => GetWorkerPoolTemplateVolumeSecretItem.fromMap(
              (value as Map).cast<String, dynamic>())),
      secret: map['secret'] as String,
    );
  }
}
