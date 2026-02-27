// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getExport.
class GetExportArgs {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> exportId;
  final pulumi.Input<String> organizationId;

  GetExportArgs({
    required this.environmentId,
    required this.exportId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['environmentId'] = environmentId;
    map['exportId'] = exportId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetExportArgs.fromMap(Map<String, dynamic> map) {
    return GetExportArgs(
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      exportId: pulumi.Input.asInput<String>(map['exportId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
