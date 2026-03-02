// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_container_response.dart';

/// Custom container user source info
class CustomContainerUserSourceInfoResponse {
  /// Custom container payload
  final pulumi.Input<CustomContainerResponse>? customContainer;
  /// Type of the source uploaded
  /// Expected value is 'Container'.
  final pulumi.Input<String> type;
  /// Version of the source
  final pulumi.Input<String>? version;

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
      'customContainer': ?pulumi.Input.mapOptionalInputValue<CustomContainerResponse, Map<String, dynamic>>(customContainer, (value) => value.toMap()),
      'type': type,
      'version': ?version,
    };
  }

  factory CustomContainerUserSourceInfoResponse.fromMap(Map<String, dynamic> map) {
    return CustomContainerUserSourceInfoResponse(
      customContainer: map['customContainer'] == null ? null : (CustomContainerResponse.fromMap((map['customContainer']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

