// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getExport.
class GetExportArgs {
  final Input<String> environmentId;
  final Input<String> exportId;
  final Input<String> organizationId;

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
      environmentId: Input.asInput<String>(map['environmentId']),
      exportId: Input.asInput<String>(map['exportId']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
