// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'deployment_update_label_entry_response2.dart';

class DeploymentUpdateResponse2 {
  /// An optional user-provided description of the deployment after the current update has been applied.
  final String description;

  /// Map of One Platform labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.
  final List<DeploymentUpdateLabelEntryResponse2> labels;

  /// URL of the manifest representing the update configuration of this deployment.
  final String manifest;

  DeploymentUpdateResponse2({
    required this.description,
    required this.labels,
    required this.manifest,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['labels'] = Input.encodeList<DeploymentUpdateLabelEntryResponse2,
        Map<String, dynamic>>(labels, (value) => value.toMap());
    map['manifest'] = manifest;
    return map;
  }

  factory DeploymentUpdateResponse2.fromMap(Map<String, dynamic> map) {
    return DeploymentUpdateResponse2(
      description: map['description'] as String,
      labels: Input.decodeList<DeploymentUpdateLabelEntryResponse2>(
          map['labels'],
          (value) => DeploymentUpdateLabelEntryResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      manifest: map['manifest'] as String,
    );
  }
}
