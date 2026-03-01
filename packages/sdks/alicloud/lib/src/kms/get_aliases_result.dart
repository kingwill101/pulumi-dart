// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_aliases_alias.dart';

/// Result data returned by getAliases.
class GetAliasesResult {
  /// A list of KMS User alias. Each element contains the following attributes:
  final List<GetAliasesAlias> aliases;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of kms aliases IDs. The value is same as KMS alias_name.
  final List<String> ids;
  final String? nameRegex;
  /// A list of KMS alias name.
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetAliasesResult].
  /// [aliases] A list of KMS User alias. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of kms aliases IDs. The value is same as KMS alias_name.
  /// [nameRegex] Optional.
  /// [names] A list of KMS alias name.
  /// [outputFile] Optional.
  GetAliasesResult({
    required this.aliases,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliases': pulumi.Input.encodeList<GetAliasesAlias, Map<String, dynamic>>(aliases, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetAliasesResult.fromMap(Map<String, dynamic> map) {
    return GetAliasesResult(
      aliases: pulumi.Input.decodeList<GetAliasesAlias>(map['aliases'], (value) => GetAliasesAlias.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

