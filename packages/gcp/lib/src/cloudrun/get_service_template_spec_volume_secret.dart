// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_template_spec_volume_secret_item.dart';

class GetServiceTemplateSpecVolumeSecret {
  /// Mode bits to use on created files by default. Must be a value between 0000
  /// and 0777. Defaults to 0644. Directories within the path are not affected by
  /// this setting. This might be in conflict with other options that affect the
  /// file mode, like fsGroup, and the result can be other mode bits set.
  final int defaultMode;

  /// If unspecified, the volume will expose a file whose name is the
  /// secret_name.
  /// If specified, the key will be used as the version to fetch from Cloud
  /// Secret Manager and the path will be the name of the file exposed in the
  /// volume. When items are defined, they must specify a key and a path.
  final List<GetServiceTemplateSpecVolumeSecretItem> items;

  /// The name of the secret in Cloud Secret Manager. By default, the secret
  /// is assumed to be in the same project.
  /// If the secret is in another project, you must define an alias.
  /// An alias definition has the form:
  /// {alias}:projects/{project-id|project-number}/secrets/{secret-name}.
  /// If multiple alias definitions are needed, they must be separated by
  /// commas.
  /// The alias definitions must be set on the run.googleapis.com/secrets
  /// annotation.
  final String secretName;

  /// Creates a new [GetServiceTemplateSpecVolumeSecret].
  /// [defaultMode] Mode bits to use on created files by default. Must be a value between 0000
  /// [items] If unspecified, the volume will expose a file whose name is the
  /// [secretName] The name of the secret in Cloud Secret Manager. By default, the secret
  GetServiceTemplateSpecVolumeSecret({
    required this.defaultMode,
    required this.items,
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultMode'] = defaultMode;
    map['items'] = pulumi.Input.encodeList<
        GetServiceTemplateSpecVolumeSecretItem,
        Map<String, dynamic>>(items, (value) => value.toMap());
    map['secretName'] = secretName;
    return map;
  }

  factory GetServiceTemplateSpecVolumeSecret.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateSpecVolumeSecret(
      defaultMode: map['defaultMode'] as int,
      items: pulumi.Input.decodeList<GetServiceTemplateSpecVolumeSecretItem>(
          map['items'],
          (value) => GetServiceTemplateSpecVolumeSecretItem.fromMap(
              (value as Map).cast<String, dynamic>())),
      secretName: map['secretName'] as String,
    );
  }
}
