// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_v3_triggers_trigger.dart';

/// Result data returned by getV3Triggers.
class GetV3TriggersResult {
  final String functionName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Trigger IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of name of Triggers.
  final List<String> names;
  final String? outputFile;
  /// A list of Trigger Entries. Each element contains the following attributes:
  final List<GetV3TriggersTrigger> triggers;

  /// Creates a new [GetV3TriggersResult].
  /// [functionName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Trigger IDs.
  /// [nameRegex] Optional.
  /// [names] A list of name of Triggers.
  /// [outputFile] Optional.
  /// [triggers] A list of Trigger Entries. Each element contains the following attributes:
  GetV3TriggersResult({
    required this.functionName,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.triggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionName': functionName,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'triggers': pulumi.Input.encodeList<GetV3TriggersTrigger, Map<String, dynamic>>(triggers, (value) => value.toMap()),
    };
  }

  factory GetV3TriggersResult.fromMap(Map<String, dynamic> map) {
    return GetV3TriggersResult(
      functionName: map['functionName'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      triggers: pulumi.Input.decodeList<GetV3TriggersTrigger>(map['triggers'], (value) => GetV3TriggersTrigger.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

