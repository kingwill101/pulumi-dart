// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_console_source_pipe_sec_label.dart';

class DomainDevicesConsoleSourcePipe {
  /// Sets the path for the pipe source in the EGD backend.
  final String path;
  /// Configures security label settings for the pipe source in the EGD backend.
  final List<DomainDevicesConsoleSourcePipeSecLabel>? secLabels;

  /// Creates a new [DomainDevicesConsoleSourcePipe].
  /// [path] Sets the path for the pipe source in the EGD backend.
  /// [secLabels] Configures security label settings for the pipe source in the EGD backend.
  DomainDevicesConsoleSourcePipe({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainDevicesConsoleSourcePipeSecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesConsoleSourcePipe.fromMap(Map<String, dynamic> map) {
    return DomainDevicesConsoleSourcePipe(
      path: map['path'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainDevicesConsoleSourcePipeSecLabel>(map['secLabels'], (value) => DomainDevicesConsoleSourcePipeSecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

