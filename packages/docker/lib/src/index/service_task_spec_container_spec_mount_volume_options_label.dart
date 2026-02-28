// ignore_for_file: unused_element, unnecessary_cast


class ServiceTaskSpecContainerSpecMountVolumeOptionsLabel {
  /// Name of the label
  final String label;
  /// Value of the label
  final String value;

  /// Creates a new [ServiceTaskSpecContainerSpecMountVolumeOptionsLabel].
  /// [label] Name of the label
  /// [value] Value of the label
  ServiceTaskSpecContainerSpecMountVolumeOptionsLabel({
    required this.label,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'value': value,
    };
  }

  factory ServiceTaskSpecContainerSpecMountVolumeOptionsLabel.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpecContainerSpecMountVolumeOptionsLabel(
      label: map['label'] as String,
      value: map['value'] as String,
    );
  }
}

