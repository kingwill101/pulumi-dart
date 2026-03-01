// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesVideoModelAccel {
  /// Enables or disables 2D acceleration for the video device.
  final String? accel2d;
  /// Enables or disables 3D acceleration for the video device.
  final String? accel3d;
  /// Defines the render node for the video device's acceleration features.
  final String? renderNode;

  /// Creates a new [DomainDevicesVideoModelAccel].
  /// [accel2d] Enables or disables 2D acceleration for the video device.
  /// [accel3d] Enables or disables 3D acceleration for the video device.
  /// [renderNode] Defines the render node for the video device's acceleration features.
  DomainDevicesVideoModelAccel({
    this.accel2d,
    this.accel3d,
    this.renderNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accel2d': ?accel2d,
      'accel3d': ?accel3d,
      'renderNode': ?renderNode,
    };
  }

  factory DomainDevicesVideoModelAccel.fromMap(Map<String, dynamic> map) {
    return DomainDevicesVideoModelAccel(
      accel2d: map['accel2d'] == null ? null : map['accel2d'] as String,
      accel3d: map['accel3d'] == null ? null : map['accel3d'] as String,
      renderNode: map['renderNode'] == null ? null : map['renderNode'] as String,
    );
  }
}

