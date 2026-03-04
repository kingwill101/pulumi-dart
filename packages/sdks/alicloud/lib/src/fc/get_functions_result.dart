// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_functions_function.dart';

/// Result data returned by getFunctions.
class GetFunctionsResult {
  /// A list of functions. Each element contains the following attributes:
  final List<GetFunctionsFunction> functions;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of functions ids.
  final List<String> ids;
  final String? nameRegex;

  /// A list of functions names.
  final List<String> names;
  final String? outputFile;
  final String serviceName;

  /// Creates a new [GetFunctionsResult].
  /// [functions] A list of functions. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of functions ids.
  /// [nameRegex] Optional.
  /// [names] A list of functions names.
  /// [outputFile] Optional.
  /// [serviceName] Required.
  GetFunctionsResult({
    required this.functions,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functions':
          pulumi.Input.encodeList<GetFunctionsFunction, Map<String, dynamic>>(
            functions,
            (value) => value.toMap(),
          ),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'serviceName': serviceName,
    };
  }

  factory GetFunctionsResult.fromMap(Map<String, dynamic> map) {
    return GetFunctionsResult(
      functions: pulumi.Input.decodeList<GetFunctionsFunction>(
        map['functions']!,
        (value) => GetFunctionsFunction.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
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
      serviceName: map['serviceName'] as String,
    );
  }
}
