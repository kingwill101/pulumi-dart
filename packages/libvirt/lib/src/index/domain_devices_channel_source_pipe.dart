// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_channel_source_pipe_sec_label.dart';

class DomainDevicesChannelSourcePipe {
  /// Sets the path for the pipe source in the EGD backend.
  final String path;
  /// Configures security label settings for the pipe source in the EGD backend.
  final List<DomainDevicesChannelSourcePipeSecLabel>? secLabels;

  /// Creates a new [DomainDevicesChannelSourcePipe].
  /// [path] Sets the path for the pipe source in the EGD backend.
  /// [secLabels] Configures security label settings for the pipe source in the EGD backend.
  DomainDevicesChannelSourcePipe({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainDevicesChannelSourcePipeSecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesChannelSourcePipe.fromMap(Map<String, dynamic> map) {
    return DomainDevicesChannelSourcePipe(
      path: map['path'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainDevicesChannelSourcePipeSecLabel>(map['secLabels'], (value) => DomainDevicesChannelSourcePipeSecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

