// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_container.dart';

/// Custom container user source info
class CustomContainerUserSourceInfo {
  /// Custom container payload
  final pulumi.Input<CustomContainer>? customContainer;
  /// Type of the source uploaded
  /// Expected value is 'Container'.
  final pulumi.Input<String> type;
  /// Version of the source
  final pulumi.Input<String>? version;

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
      'customContainer': ?pulumi.Input.mapOptionalInputValue<CustomContainer, Map<String, dynamic>>(customContainer, (value) => value.toMap()),
      'type': type,
      'version': ?version,
    };
  }

  factory CustomContainerUserSourceInfo.fromMap(Map<String, dynamic> map) {
    return CustomContainerUserSourceInfo(
      customContainer: map['customContainer'] == null ? null : (CustomContainer.fromMap((map['customContainer']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

