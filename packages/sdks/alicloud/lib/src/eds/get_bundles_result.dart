// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bundles_bundle.dart';

/// Result data returned by getBundles.
class GetBundlesResult {
  final List<String> bundleIds;
  final String? bundleType;
  final List<GetBundlesBundle> bundles;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetBundlesResult].
  /// [bundleIds] Required.
  /// [bundleType] Optional.
  /// [bundles] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  GetBundlesResult({
    required this.bundleIds,
    this.bundleType,
    required this.bundles,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleIds': bundleIds,
      'bundleType': ?bundleType,
      'bundles':
          pulumi.Input.encodeList<GetBundlesBundle, Map<String, dynamic>>(
            bundles,
            (value) => value.toMap(),
          ),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetBundlesResult.fromMap(Map<String, dynamic> map) {
    return GetBundlesResult(
      bundleIds: (map['bundleIds'] as List).cast<String>(),
      bundleType: (() {
        final guardedValue = map['bundleType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      bundles: pulumi.Input.decodeList<GetBundlesBundle>(
        map['bundles']!,
        (value) =>
            GetBundlesBundle.fromMap((value as Map).cast<String, dynamic>()),
      ),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
