// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_source_vhost_user_pipe_sec_label.dart';

class DomainDevicesDiskMirrorSourceVhostUserPipe {
  /// Sets the path for the pipe source in the EGD backend.
  final String path;
  /// Configures security label settings for the pipe source in the EGD backend.
  final List<DomainDevicesDiskMirrorSourceVhostUserPipeSecLabel>? secLabels;

  /// Creates a new [DomainDevicesDiskMirrorSourceVhostUserPipe].
  /// [path] Sets the path for the pipe source in the EGD backend.
  /// [secLabels] Configures security label settings for the pipe source in the EGD backend.
  DomainDevicesDiskMirrorSourceVhostUserPipe({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainDevicesDiskMirrorSourceVhostUserPipeSecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskMirrorSourceVhostUserPipe.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceVhostUserPipe(
      path: map['path'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainDevicesDiskMirrorSourceVhostUserPipeSecLabel>(map['secLabels'], (value) => DomainDevicesDiskMirrorSourceVhostUserPipeSecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

