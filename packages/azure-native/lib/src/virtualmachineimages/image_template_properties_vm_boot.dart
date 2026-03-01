// ignore_for_file: unused_element, unnecessary_cast

import 'vmboot_optimization_state.dart';

/// Optimization is applied on the image for a faster VM boot.
class ImageTemplatePropertiesVmBoot {
  /// Enabling this field will improve VM boot time by optimizing the final customized image output.
  final VMBootOptimizationState? state;

  /// Creates a new [ImageTemplatePropertiesVmBoot].
  /// [state] Enabling this field will improve VM boot time by optimizing the final customized image output.
  ImageTemplatePropertiesVmBoot({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state == null ? null : state!.value,
    };
  }

  factory ImageTemplatePropertiesVmBoot.fromMap(Map<String, dynamic> map) {
    return ImageTemplatePropertiesVmBoot(
      state: map['state'] == null ? null : VMBootOptimizationState.fromValue(map['state'] as String),
    );
  }
}

