// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apikeys_v2_get_key_args_doc}
/// Arguments for getKey.
/// {@endtemplate}
/// {@macro pulumi_apikeys_v2_get_key_args_doc}
class GetKeyArgs {
  final pulumi.Input<String> keyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetKeyArgs].
  /// [keyId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetKeyArgs({
    required String keyId,
    required String location,
    String? project,
  })  : keyId = pulumi.Input.asInput<String>(keyId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyId'] = keyId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyArgs(
      keyId: map['keyId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
