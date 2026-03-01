// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudkms_v1_get_key_ring_args_doc}
/// Arguments for getKeyRing.
/// {@endtemplate}
/// {@macro pulumi_cloudkms_v1_get_key_ring_args_doc}
class GetKeyRingArgs {
  final pulumi.Input<String> keyRingId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetKeyRingArgs].
  /// [keyRingId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetKeyRingArgs({
    required String keyRingId,
    required String location,
    String? project,
  }) : keyRingId = pulumi.Input.asInput<String>(keyRingId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyRingId': keyRingId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetKeyRingArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyRingArgs(
      keyRingId: map['keyRingId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
