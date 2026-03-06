// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_apps_app.dart';

/// Result data returned by getApps.
class GetAppsResult {
  /// A list of apps. Each element contains the following attributes:
  final List<GetAppsApp> apps;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of app IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of app names.
  final List<String> names;
  final String? outputFile;
  final Map<String, String>? tags;

  /// Creates a new [GetAppsResult].
  /// [apps] A list of apps. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of app IDs.
  /// [nameRegex] Optional.
  /// [names] A list of app names.
  /// [outputFile] Optional.
  /// [tags] Optional.
  const GetAppsResult({
    required this.apps,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apps': pulumi.Input.encodeList<GetAppsApp, Map<String, dynamic>>(apps, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'tags': ?tags,
    };
  }

  factory GetAppsResult.fromMap(Map<String, dynamic> map) {
    return GetAppsResult(
      apps: pulumi.Input.decodeList<GetAppsApp>(map['apps']!, (value) => GetAppsApp.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}

