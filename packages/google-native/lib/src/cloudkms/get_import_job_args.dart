// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudkms_v1_get_import_job_args_doc}
/// Arguments for getImportJob.
/// {@endtemplate}
/// {@macro pulumi_cloudkms_v1_get_import_job_args_doc}
class GetImportJobArgs {
  final pulumi.Input<String> importJobId;
  final pulumi.Input<String> keyRingId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetImportJobArgs].
  /// [importJobId] Required.
  /// [keyRingId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetImportJobArgs({
    required String importJobId,
    required String keyRingId,
    required String location,
    String? project,
  })  : importJobId = pulumi.Input.asInput<String>(importJobId),
        keyRingId = pulumi.Input.asInput<String>(keyRingId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['importJobId'] = importJobId;
    map['keyRingId'] = keyRingId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetImportJobArgs.fromMap(Map<String, dynamic> map) {
    return GetImportJobArgs(
      importJobId: map['importJobId'] as String,
      keyRingId: map['keyRingId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
