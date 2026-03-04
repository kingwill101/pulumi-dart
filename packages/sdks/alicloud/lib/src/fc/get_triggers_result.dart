// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_triggers_trigger.dart';

/// Result data returned by getTriggers.
class GetTriggersResult {
  final String functionName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of FC triggers ids.
  final List<String> ids;
  final String? nameRegex;

  /// A list of FC triggers names.
  final List<String> names;
  final String? outputFile;
  final String serviceName;

  /// A list of FC triggers. Each element contains the following attributes:
  final List<GetTriggersTrigger> triggers;

  /// Creates a new [GetTriggersResult].
  /// [functionName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of FC triggers ids.
  /// [nameRegex] Optional.
  /// [names] A list of FC triggers names.
  /// [outputFile] Optional.
  /// [serviceName] Required.
  /// [triggers] A list of FC triggers. Each element contains the following attributes:
  GetTriggersResult({
    required this.functionName,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.serviceName,
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
      'serviceName': serviceName,
      'triggers':
          pulumi.Input.encodeList<GetTriggersTrigger, Map<String, dynamic>>(
            triggers,
            (value) => value.toMap(),
          ),
    };
  }

  factory GetTriggersResult.fromMap(Map<String, dynamic> map) {
    return GetTriggersResult(
      functionName: map['functionName'] as String,
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
      triggers: pulumi.Input.decodeList<GetTriggersTrigger>(
        map['triggers']!,
        (value) =>
            GetTriggersTrigger.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
