// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_oidc_providers_provider.dart';

/// Result data returned by getOidcProviders.
class GetOidcProvidersResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Oidc Provider IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of name of Oidc Providers.
  final List<String> names;
  final String? outputFile;
  /// A list of Oidc Provider Entries. Each element contains the following attributes:
  final List<GetOidcProvidersProvider> providers;

  /// Creates a new [GetOidcProvidersResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Oidc Provider IDs.
  /// [nameRegex] Optional.
  /// [names] A list of name of Oidc Providers.
  /// [outputFile] Optional.
  /// [providers] A list of Oidc Provider Entries. Each element contains the following attributes:
  const GetOidcProvidersResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.providers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'providers': pulumi.Input.encodeList<GetOidcProvidersProvider, Map<String, dynamic>>(providers, (value) => value.toMap()),
    };
  }

  factory GetOidcProvidersResult.fromMap(Map<String, dynamic> map) {
    return GetOidcProvidersResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      providers: pulumi.Input.decodeList<GetOidcProvidersProvider>(map['providers']!, (value) => GetOidcProvidersProvider.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

