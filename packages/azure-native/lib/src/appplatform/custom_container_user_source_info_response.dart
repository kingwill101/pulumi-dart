// ignore_for_file: unused_element, unnecessary_cast

import 'custom_container_response.dart';

/// Custom container user source info
class CustomContainerUserSourceInfoResponse {
  /// Custom container payload
  final CustomContainerResponse? customContainer;
  /// Type of the source uploaded
  /// Expected value is 'Container'.
  final String type;
  /// Version of the source
  final String? version;

  /// Creates a new [CustomContainerUserSourceInfoResponse].
  /// [customContainer] Custom container payload
  /// [type] Type of the source uploaded
  /// [version] Version of the source
  CustomContainerUserSourceInfoResponse({
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

  factory CustomContainerUserSourceInfoResponse.fromMap(Map<String, dynamic> map) {
    return CustomContainerUserSourceInfoResponse(
      customContainer: map['customContainer'] == null ? null : CustomContainerResponse.fromMap((map['customContainer'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

