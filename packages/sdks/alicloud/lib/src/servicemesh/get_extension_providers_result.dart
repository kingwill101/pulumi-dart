// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_extension_providers_provider.dart';

/// Result data returned by getExtensionProviders.
class GetExtensionProvidersResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Extension Provider names.
  final List<String> names;
  final String? outputFile;
  /// A list of Service Mesh Extension Providers. Each element contains the following attributes:
  final List<GetExtensionProvidersProvider> providers;
  /// The ID of the Service Mesh.
  final String serviceMeshId;
  /// The type of the Service Mesh Extension Provider.
  final String type;

  /// Creates a new [GetExtensionProvidersResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Extension Provider names.
  /// [outputFile] Optional.
  /// [providers] A list of Service Mesh Extension Providers. Each element contains the following attributes:
  /// [serviceMeshId] The ID of the Service Mesh.
  /// [type] The type of the Service Mesh Extension Provider.
  GetExtensionProvidersResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.providers,
    required this.serviceMeshId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'providers': pulumi.Input.encodeList<GetExtensionProvidersProvider, Map<String, dynamic>>(providers, (value) => value.toMap()),
      'serviceMeshId': serviceMeshId,
      'type': type,
    };
  }

  factory GetExtensionProvidersResult.fromMap(Map<String, dynamic> map) {
    return GetExtensionProvidersResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      providers: pulumi.Input.decodeList<GetExtensionProvidersProvider>(map['providers']!, (value) => GetExtensionProvidersProvider.fromMap((value as Map).cast<String, dynamic>())),
      serviceMeshId: map['serviceMeshId'] as String,
      type: map['type'] as String,
    );
  }
}

