// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebasehosting_v1beta1_get_version_args_doc}
/// Arguments for getVersion.
/// {@endtemplate}
/// {@macro pulumi_firebasehosting_v1beta1_get_version_args_doc}
class GetVersionArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> siteId;
  final pulumi.Input<String> versionId;

  /// Creates a new [GetVersionArgs].
  /// [project] Optional.
  /// [siteId] Required.
  /// [versionId] Required.
  GetVersionArgs({
    String? project,
    required String siteId,
    required String versionId,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        siteId = pulumi.Input.asInput<String>(siteId),
        versionId = pulumi.Input.asInput<String>(versionId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['siteId'] = siteId;
    map['versionId'] = versionId;
    return map;
  }

  factory GetVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetVersionArgs(
      project: map['project'] == null ? null : map['project'] as String,
      siteId: map['siteId'] as String,
      versionId: map['versionId'] as String,
    );
  }
}
