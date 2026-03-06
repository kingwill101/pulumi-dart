// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_system_policys_policy.dart';

/// Result data returned by getSystemPolicys.
class GetSystemPolicysResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of System Policy IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of name of System Policys.
  final List<String> names;
  final String? outputFile;
  /// A list of System Policy Entries. Each element contains the following attributes:
  final List<GetSystemPolicysPolicy> policys;

  /// Creates a new [GetSystemPolicysResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of System Policy IDs.
  /// [nameRegex] Optional.
  /// [names] A list of name of System Policys.
  /// [outputFile] Optional.
  /// [policys] A list of System Policy Entries. Each element contains the following attributes:
  const GetSystemPolicysResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.policys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'policys': pulumi.Input.encodeList<GetSystemPolicysPolicy, Map<String, dynamic>>(policys, (value) => value.toMap()),
    };
  }

  factory GetSystemPolicysResult.fromMap(Map<String, dynamic> map) {
    return GetSystemPolicysResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policys: pulumi.Input.decodeList<GetSystemPolicysPolicy>(map['policys']!, (value) => GetSystemPolicysPolicy.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

