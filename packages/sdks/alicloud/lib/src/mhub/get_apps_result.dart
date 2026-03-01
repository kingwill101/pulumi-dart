// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_apps_app.dart';

/// Result data returned by getApps.
class GetAppsResult {
  final List<GetAppsApp> apps;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? osType;
  final String? outputFile;
  final String productId;

  /// Creates a new [GetAppsResult].
  /// [apps] Required.
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [osType] Optional.
  /// [outputFile] Optional.
  /// [productId] Required.
  GetAppsResult({
    required this.apps,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.osType,
    this.outputFile,
    required this.productId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apps': pulumi.Input.encodeList<GetAppsApp, Map<String, dynamic>>(apps, (value) => value.toMap()),
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'osType': ?osType,
      'outputFile': ?outputFile,
      'productId': productId,
    };
  }

  factory GetAppsResult.fromMap(Map<String, dynamic> map) {
    return GetAppsResult(
      apps: pulumi.Input.decodeList<GetAppsApp>(map['apps'], (value) => GetAppsApp.fromMap((value as Map).cast<String, dynamic>())),
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      osType: map['osType'] == null ? null : map['osType'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      productId: map['productId'] as String,
    );
  }
}

