// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_tpm_backend_external_source_pipe_sec_label.dart';

class DomainDevicesTpmBackendExternalSourcePipe {
  /// Sets the path for the pipe source in the EGD backend.
  final String path;
  /// Configures security label settings for the pipe source in the EGD backend.
  final List<DomainDevicesTpmBackendExternalSourcePipeSecLabel>? secLabels;

  /// Creates a new [DomainDevicesTpmBackendExternalSourcePipe].
  /// [path] Sets the path for the pipe source in the EGD backend.
  /// [secLabels] Configures security label settings for the pipe source in the EGD backend.
  DomainDevicesTpmBackendExternalSourcePipe({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainDevicesTpmBackendExternalSourcePipeSecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesTpmBackendExternalSourcePipe.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpmBackendExternalSourcePipe(
      path: map['path'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainDevicesTpmBackendExternalSourcePipeSecLabel>(map['secLabels'], (value) => DomainDevicesTpmBackendExternalSourcePipeSecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

