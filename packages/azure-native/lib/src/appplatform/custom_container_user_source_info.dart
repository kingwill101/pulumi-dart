// ignore_for_file: unused_element, unnecessary_cast

import 'custom_container.dart';

/// Custom container user source info
class CustomContainerUserSourceInfo {
  /// Custom container payload
  final CustomContainer? customContainer;
  /// Type of the source uploaded
  /// Expected value is 'Container'.
  final String type;
  /// Version of the source
  final String? version;

  /// Creates a new [CustomContainerUserSourceInfo].
  /// [customContainer] Custom container payload
  /// [type] Type of the source uploaded
  /// [version] Version of the source
  CustomContainerUserSourceInfo({
    this.customContainer,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customContainer': ?customContainer == null ? null : customContainer!.toMap(),
      'type': type,
      'version': ?version,
    };
  }

  factory CustomContainerUserSourceInfo.fromMap(Map<String, dynamic> map) {
    return CustomContainerUserSourceInfo(
      customContainer: map['customContainer'] == null ? null : CustomContainer.fromMap((map['customContainer'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

