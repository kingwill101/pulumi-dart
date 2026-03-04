// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kubernetes_version_metadata_runtime.dart';

class GetKubernetesVersionMetadata {
  /// The list of supported runtime.
  final pulumi.Input<List<GetKubernetesVersionMetadataRuntime>> runtimes;

  /// The runtime version.
  final pulumi.Input<String> version;

  /// Creates a new [GetKubernetesVersionMetadata].
  /// [runtimes] The list of supported runtime.
  /// [version] The runtime version.
  GetKubernetesVersionMetadata({required this.runtimes, required this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'runtimes':
          pulumi.Input.mapInputValue<
            List<GetKubernetesVersionMetadataRuntime>,
            List<Map<String, dynamic>>
          >(
            runtimes,
            (value) =>
                pulumi.Input.encodeList<
                  GetKubernetesVersionMetadataRuntime,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'version': version,
    };
  }

  factory GetKubernetesVersionMetadata.fromMap(Map<String, dynamic> map) {
    return GetKubernetesVersionMetadata(
      runtimes: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetKubernetesVersionMetadataRuntime>(
          map['runtimes']!,
          (value) => GetKubernetesVersionMetadataRuntime.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
