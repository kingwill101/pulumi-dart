// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_v3_functions_function.dart';

/// Result data returned by getV3Functions.
class GetV3FunctionsResult {
  /// A list of Function Entries. Each element contains the following attributes:
  final List<GetV3FunctionsFunction> functions;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Function IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of name of Functions.
  final List<String> names;
  final String? outputFile;
  final String? prefix;
  /// Resource Group ID
  final String? resourceGroupId;

  /// Creates a new [GetV3FunctionsResult].
  /// [functions] A list of Function Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Function IDs.
  /// [nameRegex] Optional.
  /// [names] A list of name of Functions.
  /// [outputFile] Optional.
  /// [prefix] Optional.
  /// [resourceGroupId] Resource Group ID
  const GetV3FunctionsResult({
    required this.functions,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.prefix,
    this.resourceGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functions': pulumi.Input.encodeList<GetV3FunctionsFunction, Map<String, dynamic>>(functions, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'prefix': ?prefix,
      'resourceGroupId': ?resourceGroupId,
    };
  }

  factory GetV3FunctionsResult.fromMap(Map<String, dynamic> map) {
    return GetV3FunctionsResult(
      functions: pulumi.Input.decodeList<GetV3FunctionsFunction>(map['functions']!, (value) => GetV3FunctionsFunction.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

