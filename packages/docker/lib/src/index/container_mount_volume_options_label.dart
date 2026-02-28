// ignore_for_file: unused_element, unnecessary_cast


class ContainerMountVolumeOptionsLabel {
  /// Name of the label
  final String label;
  /// Value of the label
  final String value;

  /// Creates a new [ContainerMountVolumeOptionsLabel].
  /// [label] Name of the label
  /// [value] Value of the label
  ContainerMountVolumeOptionsLabel({
    required this.label,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'value': value,
    };
  }

  factory ContainerMountVolumeOptionsLabel.fromMap(Map<String, dynamic> map) {
    return ContainerMountVolumeOptionsLabel(
      label: map['label'] as String,
      value: map['value'] as String,
    );
  }
}

