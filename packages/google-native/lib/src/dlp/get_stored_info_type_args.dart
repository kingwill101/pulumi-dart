// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dlp_v2_get_stored_info_type_args_doc}
/// Arguments for getStoredInfoType.
/// {@endtemplate}
/// {@macro pulumi_dlp_v2_get_stored_info_type_args_doc}
class GetStoredInfoTypeArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> storedInfoTypeId;

  /// Creates a new [GetStoredInfoTypeArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [storedInfoTypeId] Required.
  GetStoredInfoTypeArgs({
    required String location,
    String? project,
    required String storedInfoTypeId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      storedInfoTypeId = pulumi.Input.asInput<String>(storedInfoTypeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'storedInfoTypeId': storedInfoTypeId,
    };
  }

  factory GetStoredInfoTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetStoredInfoTypeArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      storedInfoTypeId: map['storedInfoTypeId'] as String,
    );
  }
}

